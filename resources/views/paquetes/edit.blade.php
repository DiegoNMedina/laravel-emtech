@extends('layouts.principal')
@section('content')
{{-- Formulario para mostrar un paquete --}}
<div class="banner">
    <div class="container">
        <section>
            <div class="container">
                <div class="user signinBx">
                    <div class="imgBx">
                        <img src="https://cdn.pixabay.com/photo/2021/02/10/17/18/bicycle-6002845_960_720.jpg">
                    </div>    
                    <div class="formBx">
                        <form action="">
                        <h2>Guía: {{$data['package'][0]->codigo}}</h2>
                        <label for="">Estado: </label>
                        <input type="text" class="form-control input-default" value="{{$data['package'][0]->estado}}" required disabled>
                        <label for="">Origen: </label>
                        <input type="text" class="form-control input-default" value="{{$data['package'][0]->origen->estado}}" required disabled>
                        <label for="">Destino: </label>
                        <input type="text" class="form-control input-default" value="{{$data['package'][0]->destino->estado}}" required disabled>
                        <label for="">Remitente: </label>
                        <input type="email" class="form-control input-default" value="{{$data['package'][0]->email_remitente}}" placeholder="Correo del remitente" name="email" id="email" required disabled>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

@endsection