<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method, Authorization");
header("Access-Control-Expose-Headers", "Access-Control-*");
header("Access-Control-Allow-Methods", "POST, GET, OPTIONS, PUT");
header("Accept","application/json");
header("content-type",'application/json');


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::group(['prefix' => 'auth'], function () {
    Route::post('login', 'AuthController@login');
    Route::post('register', 'AuthController@signup');
});
;

    Route::group([
        'middleware' => 'auth:api'
    ],
        function() {
        //Get routes
        Route::get('/details', 'AuthController@userDetails');
        Route::get('logout', 'AuthController@logout');
        Route::get('user', 'AuthController@user');
        Route::get('/submit-meter-reading', 'CustomerController@getMeterReadings');
        Route::get('/bill','CustomerController@calculateBill');

        //Post routes
        Route::post('/request-bill', 'CustomerController@requestBill');
        Route::post('/request-feedback', 'CustomerController@getFeedback');
        Route::post('/report-leakage', 'CustomerController@submitLeakage');
        Route::post('/submit-meter-reading', 'CustomerController@submitMeterReading');
        Route::post('/meter-connection', 'CustomerController@newConnection');
    });

