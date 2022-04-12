<?php

use Illuminate\Support\Facades\Route;

Route::get('/', 'System_Controller@users');
Route::get('inicia', 'System_Controller@inicia');