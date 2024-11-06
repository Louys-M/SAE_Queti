<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\FamilleController;

Route::get('/familles',[FamilleController::class,'index']);

// use App\Http\Controllers\VideoController;
// use App\Http\Controllers\AuthController;


// Route::get('/videos',[VideoController::class,'index']);

// Route::post('register',[AuthController::class,'register']);
// Route::post('login',[AuthController::class,'login']);
// Route::middleware('auth:sanctum')->post('logout',[AuthController::class,'logout']);
// Route::middleware('auth:sanctum')->get('me',[AuthController::class,'me']);
// Route::middleware('auth:sanctum')->get('note',[AuthController::class,'showfav']);

// Route::middleware('auth:sanctum')->post('add-note',[AuthController::class,'addnote']);
// Route::middleware('auth:sanctum')->post('update-note',[AuthController::class,'updatenote']);
// Route::middleware('auth:sanctum')->post('delete-note',[AuthController::class,'delnote']);




