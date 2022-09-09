<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
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


Route::get('/', [HomeController::class, 'showIndex']);
// Welcome
Route::get('categories', [HomeController::class, 'showCategories']);
Route::get('product-page', [HomeController::class, 'showProductPage']);
Route::get('shopping-cart', [HomeController::class, 'showShoppingCart']);
Route::get('check-out', [HomeController::class, 'showCheckOut']);
Route::get('contact', [HomeController::class, 'showContact']);
// auth
Route::get('login', [AuthController::class, 'showLogin']);
Route::post('login', [AuthController::class, 'processLogin']);
Route::get('register', [AuthController::class, 'registration']);
Route::get('logout', [AuthController::class, 'logout']);
// admin
Route::get('base', [HomeController::class, 'showBase']);
Route::get('dashboard', [HomeController::class, 'showDashboard']);
Route::get('discount', [HomeController::class, 'showDiscount']);
// product
Route::get('product', [ProductController::class, 'index']);
Route::get('product/create', [ProductController::class, 'create']);
Route::post('product', [ProductController::class, 'store']);
Route::get('product/{product}', [ProductController::class, 'show']);
Route::get('product/{product}/edit', [ProductController::class, 'edit']);
Route::put('product/{product}', [ProductController::class, 'update']);
Route::delete('product/{product}', [ProductController::class, 'destroy']);
//user
Route::get('user', [UserController::class, 'index']);
Route::get('user/create', [UserController::class, 'create']);
Route::post('user', [UserController::class, 'store']);
Route::get('user/{user}', [UserController::class, 'show']);
Route::get('user/{user}/edit', [UserController::class, 'edit']);
Route::put('user/{user}', [UserController::class, 'update']);
Route::delete('user/{user}', [UserController::class, 'destroy']);
