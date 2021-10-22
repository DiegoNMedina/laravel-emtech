@extends('layouts.principal')
@section('content')
        
{{-- Formulario para crear un paquete --}}
<div class="banner">
    <div class="container">
        <section>
            <div class="container">
            <div class="user signinBx">
            <div class="imgBx">
                <img src="https://cdn.pixabay.com/photo/2021/02/10/17/18/bicycle-6002845_960_720.jpg">
            </div>    
            <div class="formBx">
                <form action="{{ url('/paquetes') }}" method="POST">
                    @csrf
                <h2>Registrar Paquete</h2>
                <select class="form-control default-select mb-2" name="origin" id="origin" required>
                    <option value="" selected>Selecciona el origen</option>
                    @foreach ($ciudades as $ciudad)
                    <option value="{{$ciudad->id}}">{{$ciudad->estado}}</option>
                    @endforeach
                </select>
                <select class="form-control default-select mb-2" name="destinity" id="destinity" required>
                    <option value="" selected>Selecciona el destino</option>
                    @foreach ($ciudades as $ciudad)
                    <option value="{{$ciudad->id}}">{{$ciudad->estado}}</option>
                    @endforeach
                </select>
                <input type="email" class="form-control input-default" placeholder="Correo del remitente" name="email" id="email" required>
                <input type="submit" name="" value="Guardar">
                </form>
            </div>
            </div>
                
            </div>
        </section>
    </div>
</div>
@endsection