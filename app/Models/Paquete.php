<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Paquete extends Model
{
    use HasFactory;

    /* Campos de la tabla */
    protected $filleable = ['codigo', 'origen_id', 'destino_id', 'email_remitente', 'estado'];

    /* Función para almacenar un paquete */
    public static function store($code, $origin, $destinity, $email, $status) {

        $pack = new Paquete();

        $pack->codigo = $code;
        $pack->origen_id = $origin;
        $pack->destino_id = $destinity;
        $pack->email_remitente = $email;
        $pack->estado = $status;

        $pack->save();

        return $pack;
    }
    
    /* Relación con Ciudad*/
    public function origen() {

        return $this->belongsTo(Ciudad::class);
    }

    /* Relación con Ciudad*/
    public function destino() {

        return $this->belongsTo(Ciudad::class);
    }

}
