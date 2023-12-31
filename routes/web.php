<?php

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
    return view('welcome');
});

Route::get('/barangs', [App\Http\Controllers\BarangController::class, 'index']);
Route::get('/brg_keluars', [App\Http\Controllers\BrgKeluarController::class, 'index']);
Route::get('/users', [App\Http\Controllers\UserController::class, 'index']);
Route::get('/customers', [App\Http\Controllers\CustomerController::class, 'index']);
Route::get('/brg_masuks', [App\Http\Controllers\BrgMasukController::class, 'index']);
