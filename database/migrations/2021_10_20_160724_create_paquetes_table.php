<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/* Migración para crear la tabla de paquetes */
class CreatePaquetesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paquetes', function (Blueprint $table) {
            $table->id();
            $table->string('codigo');

            $table->unsignedBigInteger('origen_id')->unsigned()->index();
            $table->foreign('origen_id')->references('id')->on('ciudades')->onDelete('cascade');

            $table->unsignedBigInteger('destino_id')->unsigned()->index();
            $table->foreign('destino_id')->references('id')->on('ciudades')->onDelete('cascade');

            $table->string('email_remitente');

            $table->string('estado');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('paquetes');
    }
}
