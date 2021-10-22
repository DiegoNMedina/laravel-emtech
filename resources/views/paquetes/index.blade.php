@extends('layouts.principal')
@section('content')
<div class="banner">
    @if(Session::has('success'))
            <div class="alert alert-success" role="alert" id="alert" name="alert">
                <b>El paquete se ha enviado</b>, si no recibe el correo electrónico revise su carpeta de spam.
            </div>
    @endif
    @if(Session::has('create'))
    <div class="alert alert-success" role="alert" id="alert" name="alert">
        <b>El paquete se ha guardado</b>
    </div>
    @endif
    <table class="table-package">
        <thead>
            <tr>
            <th scope="col">Clave de rastreo</th>
            <th scope="col">Origen</th>
            <th scope="col">Destino</th>
            <th scope="col">Estado</th>
            <th scope="col"></th>
            </tr>
        </thead>
        <tbody>
            @foreach($paquetes as $paquete)
            <tr>
                <td data-label="Clave de rastreo">{{$paquete->codigo}}</td>
                <td data-label="Origen">{{$paquete->origen['estado']}}</td>
                <td data-label="Destino">{{$paquete->destino['estado']}}</td>
                <td data-label="Estado">{{$paquete->estado}}</td>
                <td data-label="">
                    <div class="dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Acciones
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            @if($paquete->estado == 'En espera')
                            <form action="{{ url('/sendPackage') }}" method="POST">
                                @csrf
                                <input type="hidden" name="package" value="{{$paquete->id}}">
                                <input type="submit" value="Enviar" class="dropdown-item">
                            </form>
                            @endif
                            <a class="dropdown-item" href="{{url('/paquetes/'.$paquete->id.'/edit')}}">Ver</a>
                            <form action="{{ url('/paquetes/'.$paquete->id) }}" method="POST">
                                @csrf
                                {{ method_field('DELETE')}}
                                    <input type="submit" onclick="return confirm('¿Quieres borrar el paquete?')" value="Eliminar" class="dropdown-item">
                            </form>
                        </div>
                    </div>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection