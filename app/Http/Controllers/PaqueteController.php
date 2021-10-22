<?php

namespace App\Http\Controllers;

use App\Models\Paquete;
use App\Models\Ciudad;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;

/* Controlador para Paquetes */
class PaqueteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    /* Mostrar todos los paquetes */
    public function index()
    {
        //Obtenemos todos los paquetes con la info de origen y destino
        $paquetes = Paquete::with('origen')->with('destino')->get();
        //Retornamos la vista con la información consultada
        return view('paquetes.index', compact('paquetes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    /* Mostrar formulario para guardar un paquete */
    public function create()
    {
        //Obtenemos todas las ciudades para mostrar en el formulario de crear paquete
        $ciudades = Ciudad::all();
        //Retornamos la vista con la información consultada
        return view('paquetes.create', compact('ciudades'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

     /* Guardar un paquete */
    public function store(Request $request)
    {
        //Inicializamos estado para cualquier paquete
        $status = 'En espera';

        //Obtenemos los datos de la ciudad de origen y destino
        $origin = Ciudad::where('id', $request->origin)->first();
        $destinity = Ciudad::where('id', $request->destinity)->first();

        //Si la ciudad de origen o destino es Ciudad de México o Estado de México asignamos número de guía distinto
        if($origin->identificador == 'CXB' || $origin->identificador == 'EME') {
        
            //Cadena aleatoria
            $chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
            $random_chars = substr(str_shuffle($chars), 0, 6);

            //Numero de guía aleatorio para Ciudad de México y Estado de México
            $package_identifier = $origin->identificador . $random_chars . $destinity->identificador;
        } else {
            //Números aleatorios
            $numbers = '0123456789';
            $random_number = substr(str_shuffle($numbers), 0, 6);
            //Numero de guía aleatorio
            $package_identifier = $origin->identificador . $random_number . $destinity->identificador;
        }

        //Guardamos el paquete en la base dedatos
        $result = Paquete::store(
            $package_identifier,
            $request->origin,
            $request->destinity,
            $request->email,
            $status,
        );

        //Si se guardó corrrectamente redireccionamos
        if($result) {

            //Mandamos mensaje flash
            Session::flash('create', 'Paquete registrado');

            //Redireccionamos
            return redirect('paquetes');
        }

    }

    /* Enviar paquete */
    public function sendPackage(Request $request) {

        //Nuevo estado para el paquete
        $status = 'En tránsito';

        //Buscamos el paquete seleccionado
        $package_id = $request->package;
        $package = Paquete::findOrFail($package_id);

        //Actualizamos el estado del paquete
        $new_package = array(
            'estado' => $status,
        );
        Paquete::where('id', '=', $package_id)->update($new_package);

        
        //Enviamos el email al remitente
        $data = array(
            "package_identifier" => $package->codigo,
            "email" => $package->email_remitente,
        );

        //Función para enviar el mail al usuario
        Mail::send('email', $data, function ($message) use ($data) {
            $message->from('contact@emtech.com', 'Emtech');
            $message->to($data["email"], $data["email"]);
            $message->subject('Número de guía Emtech');
            $message->priority(3);
        });

        //Mandamos mensaje flash
        Session::flash('success', 'Paquete enviado, en caso de no encontrar el email, revisa la carpeta de spam');

        //Recargamos
        return back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Paquete  $paquete
     * @return \Illuminate\Http\Response
     */

     /* Mostrar formulario con la info de un paquete */
    public function edit($id)
    {
        //Obtenemos la información del paquete
        $data['package'] = Paquete::with('origen')->with('destino')->where('id', $id)->get();

        //Retornamos la vista con la información consultada
        return view('paquetes.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Paquete  $paquete
     * @return \Illuminate\Http\Response
     */

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Paquete  $paquete
     * @return \Illuminate\Http\Response
     */

     /* Eliminar un paquete */
    public function destroy($id)
    {
        //Buscar id para eliminar
        Paquete::find($id)->delete();

        //Redireccionamos
        return redirect()->back();
    }
}
