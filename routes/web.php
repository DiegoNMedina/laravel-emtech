<?php

use App\Http\Controllers\CiudadController;
use App\Http\Controllers\PaqueteController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect('/paquetes');
});

Route::post('/sendPackage', [App\Http\Controllers\PaqueteController::class, 'sendPackage']);

Route::resource('paquetes', PaqueteController::class);

Route::resource('ciudades', CiudadController::class);
