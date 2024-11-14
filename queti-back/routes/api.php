<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FamilleController;
use App\Http\Controllers\InsectController;
use App\Http\Controllers\OrdreController;
use App\Http\Controllers\AuthController;

Route::get('/familles',[FamilleController::class,'index']);
Route::get('/ordres',[OrdreController::class,'index']);
Route::get('/triordres',[OrdreController::class,'TriOrdre']);
Route::get('/insects',[InsectController::class,'index']);
Route::get('/insects/{id}', [InsectController::class, 'showInsectDetails']);
Route::get('/infos', [OrdreController::class, 'InfoOrdre']);


Route::post('register',[AuthController::class,'register']);
Route::post('login',[AuthController::class,'login']);
Route::middleware('auth:sanctum')->post('logout',[AuthController::class,'logout']);
Route::middleware('auth:sanctum')->get('me',[AuthController::class,'me']);

Route::middleware('auth:sanctum')->post('like',[InsectController::class,'like']);
Route::middleware('auth:sanctum')->get('likedInsects',[InsectController::class,'likedInsects']);






