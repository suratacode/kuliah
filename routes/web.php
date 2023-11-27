<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MahasiswaController;

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

Route::get('/', [MahasiswaController::class, 'index']);
Route::get('/mahasiswas', [MahasiswaController::class, 'index']);
// Route untuk menampilkan halaman create(form) pada web
Route::get('/mahasiswas/create', [MahasiswaController::class, 'create']);
Route::post('/mahasiswas', [MahasiswaController::class, 'store']);
Route::get('/mahasiswas/{id}/edit', [MahasiswaController::class, 'edit']);
Route::put('/mahasiswas/{id}', [MahasiswaController::class, 'update']);
Route::delete('/mahasiswas/{id}', [MahasiswaController::class, 'destroy']);