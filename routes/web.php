<?php

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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('create-chart/{type}','HomeController@makeChart');

//rutas para control de accesos a modulos del sistemas

Route::middleware(['auth'])->group(function () {
  //roles
  Route::post('roles/store','RoleController@store')->name('roles.store')
  ->middleware('permission:roles.create');

  Route::get('roles','RoleController@index')->name('roles.index')
  ->middleware('permission:roles.index');

  Route::get('roles/create','RoleController@create')->name('roles.create')
  ->middleware('permission:roles.create');

  Route::put('roles/{role}','RoleController@update')->name('roles.update')
  ->middleware('permission:roles.edit');

  Route::get('roles/{role}','RoleController@show')->name('roles.show')
  ->middleware('permission:roles.show');

  Route::delete('roles/{role}','RoleController@destroy')->name('roles.destroy')
  ->middleware('permission:roles.destroy');

  Route::get('roles/{role}/edit','RoleController@edit')->name('roles.edit')
  ->middleware('permission:roles.edit');

  //sucursales
  Route::post('sucursal/store','SucursalController@store')->name('sucursal.store')
  ->middleware('permission:sucursal.create');

  Route::get('sucursal','SucursalController@index')->name('sucursal.index')
  ->middleware('permission:sucursal.index');

  Route::get('sucursal/create','SucursalController@create')->name('sucursal.create')
  ->middleware('permission:sucursal.create');

  Route::put('sucursal/{sucursal}','SucursalController@update')->name('sucursal.update')
  ->middleware('permission:sucursal.edit');

  Route::get('sucursal/{sucursal}','SucursalController@show')->name('sucursal.show')
  ->middleware('permission:sucursal.show');

  Route::delete('sucursal/{sucursal}','SucursalController@destroy')->name('sucursal.destroy')
  ->middleware('permission:sucursal.destroy');

  Route::get('sucursal/{role}/edit','SucursalController@edit')->name('sucursal.edit')
  ->middleware('permission:sucursal.edit');

  Route::get('reportesucursales','SucursalController@reporte');

  Route::get('excel','SucursalController@excel')->name('sucursales.excel');;

  //User
  Route::post('users/store','UserController@store')->name('users.store')
  ->middleware('permission:users.create');

  Route::get('users','UserController@index')->name('users.index')
  ->middleware('permission:users.index');

  Route::get('users/create','UserController@create')->name('users.create')
  ->middleware('permission:users.create');

  Route::put('users/{role}','UserController@update')->name('users.update')
  ->middleware('permission:users.edit');

  Route::get('users/{role}','UserController@show')->name('users.show')
  ->middleware('permission:users.show');

  Route::delete('users/{role}','UserController@destroy')->name('users.destroy')
  ->middleware('permission:users.destroy');

  Route::get('users/{role}/edit','UserController@edit')->name('users.edit')
  ->middleware('permission:users.edit');

  //Hospitales
  Route::post('hospital/store','HospitalController@store')->name('hospital.store')
  ->middleware('permission:hospital.create');

  Route::get('hospital','HospitalController@index')->name('hospital.index')
  ->middleware('permission:hospital.index');

  Route::get('hospital/create','HospitalController@create')->name('hospital.create')
  ->middleware('permission:hospital.create');

  Route::put('hospital/{hospital}','HospitalController@update')->name('hospital.update')
  ->middleware('permission:hospital.edit');

  Route::get('hospital/{hospital}','HospitalController@show')->name('hospital.show')
  ->middleware('permission:hospital.show');

  Route::delete('hospital/{hospital}','HospitalController@destroy')->name('hospital.destroy')
  ->middleware('permission:hospital.destroy');

  Route::get('hospital/{role}/edit','HospitalController@edit')->name('hospital.edit')
  ->middleware('permission:hospital.edit');

  //Unidades
  Route::post('unidad/store','UnidadController@store')->name('unidad.store')
  ->middleware('permission:unidad.create');

  Route::get('unidad','UnidadController@index')->name('unidad.index')
  ->middleware('permission:unidad.index');

  Route::get('unidad/create','UnidadController@create')->name('unidad.create')
  ->middleware('permission:unidad.create');

  Route::put('unidad/{unidad}','UnidadController@update')->name('unidad.update')
  ->middleware('permission:unidad.edit');

  Route::get('unidad/{unidad}','UnidadController@show')->name('unidad.show')
  ->middleware('permission:unidad.show');

  Route::delete('unidad/{unidad}','UnidadController@destroy')->name('unidad.destroy')
  ->middleware('permission:unidad.destroy');

  Route::get('unidad/{unidad}/edit','UnidadController@edit')->name('unidad.edit')
  ->middleware('permission:unidad.edit');

  //Sub Unidades
  Route::post('subunidad/store','SubunidadController@store')->name('subunidad.store')
  ->middleware('permission:subunidad.create');

  Route::get('subunidad','SubunidadController@index')->name('subunidad.index')
  ->middleware('permission:subunidad.index');

  Route::get('subunidad/create','SubunidadController@create')->name('subunidad.create')
  ->middleware('permission:subunidad.create');

  Route::put('subunidad/{subunidad}','SubunidadController@update')->name('subunidad.update')
  ->middleware('permission:subunidad.edit');

  Route::get('subunidad/{subunidad}','SubunidadController@show')->name('subunidad.show')
  ->middleware('permission:subunidad.show');

  Route::delete('subunidad/{subunidad}','SubunidadController@destroy')->name('subunidad.destroy')
  ->middleware('permission:subunidad.destroy');

  Route::get('subunidad/{subunidad}/edit','SubunidadController@edit')->name('subunidad.edit')
  ->middleware('permission:subunidad.edit');

  //tipos de Camas
  Route::post('tipocama/store','TipocamaController@store')->name('tipocama.store')
  ->middleware('permission:tipocama.create');

  Route::get('tipocama','TipocamaController@index')->name('tipocama.index')
  ->middleware('permission:tipocama.index');

  Route::get('tipocama/create','TipocamaController@create')->name('tipocama.create')
  ->middleware('permission:tipocama.create');

  Route::put('tipocama/{subunidad}','TipocamaController@update')->name('tipocama.update')
  ->middleware('permission:tipocama.edit');

  Route::get('tipocama/{subunidad}','TipocamaController@show')->name('tipocama.show')
  ->middleware('permission:tipocama.show');

  Route::delete('tipocama/{subunidad}','TipocamaController@destroy')->name('tipocama.destroy')
  ->middleware('permission:tipocama.destroy');

  Route::get('tipocama/{subunidad}/edit','TipocamaController@edit')->name('tipocama.edit')
  ->middleware('permission:tipocama.edit');


  //tipos de Camas
  Route::post('estadocama/store','EstadocamaController@store')->name('estadocama.store')
  ->middleware('permission:estadocama.create');

  Route::get('estadocama','EstadocamaController@index')->name('estadocama.index')
  ->middleware('permission:estadocama.index');

  Route::get('estadocama/create','EstadocamaController@create')->name('estadocama.create')
  ->middleware('permission:estadocama.create');

  Route::put('estadocama/{subunidad}','EstadocamaController@update')->name('estadocama.update')
  ->middleware('permission:estadocama.edit');

  Route::get('estadocama/{subunidad}','EstadocamaController@show')->name('estadocama.show')
  ->middleware('permission:estadocama.show');

  Route::delete('estadocama/{subunidad}','EstadocamaController@destroy')->name('estadocama.destroy')
  ->middleware('permission:estadocama.destroy');

  Route::get('estadocama/{subunidad}/edit','EstadocamaController@edit')->name('estadocama.edit')
  ->middleware('permission:estadocama.edit');

  //Creacion Camas
  Route::post('cama/store','CamaController@store')->name('cama.store')
  ->middleware('permission:cama.create');

  Route::get('cama','CamaController@index')->name('cama.index')
  ->middleware('permission:cama.index');

  Route::get('cama/create','CamaController@create')->name('cama.create')
  ->middleware('permission:cama.create');

  Route::put('cama/{cama}','CamaController@update')->name('cama.update')
  ->middleware('permission:cama.edit');

  Route::get('cama/{cama}','CamaController@show')->name('cama.show')
  ->middleware('permission:cama.show');

  Route::delete('cama/{cama}','CamaController@destroy')->name('cama.destroy')
  ->middleware('permission:cama.destroy');

  Route::get('cama/{cama}/edit','CamaController@edit')->name('cama.edit')
  ->middleware('permission:cama.edit');

  //pacientes
  Route::post('paciente/store','PacienteController@store')->name('paciente.store')
  ->middleware('permission:paciente.create');

  Route::get('paciente','PacienteController@index')->name('paciente.index')
  ->middleware('permission:paciente.index');

  Route::get('paciente/create','PacienteController@create')->name('paciente.create')
  ->middleware('permission:paciente.create');

  Route::put('paciente/{paciente}','PacienteController@update')->name('paciente.update')
  ->middleware('permission:paciente.edit');

  Route::get('paciente/{paciente}','PacienteController@show')->name('paciente.show')
  ->middleware('permission:paciente.show');

  Route::delete('paciente/{paciente}','PacienteController@destroy')->name('paciente.destroy')
  ->middleware('permission:paciente.destroy');

  Route::get('paciente/{paciente}/edit','PacienteController@edit')->name('paciente.edit')
  ->middleware('permission:paciente.edit');

   //hospitalizacion
  Route::post('hospitalizacion/store','HospitalizacionController@store')->name('hospitalizacion.store')
  ->middleware('permission:hospitalizacion.create');

  Route::get('hospitalizacion','HospitalizacionController@index')->name('hospitalizacion.index')
  ->middleware('permission:hospitalizacion.index');

  Route::get('hospitalizacion/create','HospitalizacionController@create')->name('hospitalizacion.create')
  ->middleware('permission:hospitalizacion.create');

  Route::put('hospitalizacion/{hospitalizacion}','HospitalizacionController@update')->name('hospitalizacion.update')
  ->middleware('permission:hospitalizacion.edit');

  Route::get('hospitalizacion/{hospitalizacion}','HospitalizacionController@show')->name('hospitalizacion.show')
  ->middleware('permission:hospitalizacion.show');

  Route::delete('hospitalizacion/{hospitalizacion}','HospitalizacionController@destroy')->name('hospitalizacion.destroy')
  ->middleware('permission:hospitalizacion.destroy');

  Route::get('hospitalizacion/{hospitalizacion}/edit','HospitalizacionController@edit')->name('hospitalizacion.edit')
  ->middleware('permission:hospitalizacion.edit');

  //Auditoria

  Route::get('auditoria','AuditoriaController@index')->name('auditoria.index')
  ->middleware('permission:auditoria.index');

  Route::get('auditoria/{auditoria}','AuditoriaController@show')->name('auditoria.show')
  ->middleware('permission:auditoria.show');

  //Cama History

  Route::get('camahis','CamahisController@index')->name('camahis.index')
  ->middleware('permission:camahis.index');

  Route::get('camahis/{camahis}','CamahisController@show')->name('camahis.show')
  ->middleware('permission:camahis.show');

  //QUIROFANO
 Route::post('quirofano/store','QuirofanoController@store')->name('quirofano.store')
 ->middleware('permission:quirofano.create');

 Route::get('quirofano','QuirofanoController@index')->name('quirofano.index')
 ->middleware('permission:quirofano.index');

 Route::get('quirofano/create','QuirofanoController@create')->name('quirofano.create')
 ->middleware('permission:quirofano.create');

 Route::put('quirofano/{quirofano}','QuirofanoController@update')->name('quirofano.update')
 ->middleware('permission:quirofano.edit');

 Route::get('quirofano/{quirofano}','QuirofanoController@show')->name('quirofano.show')
 ->middleware('permission:quirofano.show');

 Route::delete('quirofano/{quirofano}','QuirofanoController@destroy')->name('quirofano.destroy')
 ->middleware('permission:quirofano.destroy');

 Route::get('quirofano/{quirofano}/edit','QuirofanoController@edit')->name('quirofano.edit')
 ->middleware('permission:quirofano.edit');

 //Patologia
Route::post('patologia/store','PatologiaController@store')->name('patologia.store')
->middleware('permission:patologia.create');

Route::get('patologia','PatologiaController@index')->name('patologia.index')
->middleware('permission:patologia.index');

Route::get('patologia/create','PatologiaController@create')->name('patologia.create')
->middleware('permission:patologia.create');

Route::put('patologia/{patologia}','PatologiaController@update')->name('patologia.update')
->middleware('permission:patologia.edit');

Route::get('patologia/{patologia}','PatologiaController@show')->name('patologia.show')
->middleware('permission:patologia.show');

Route::delete('patologia/{quirofano}','PatologiaController@destroy')->name('patologia.destroy')
->middleware('permission:patologia.destroy');

Route::get('patologia/{patologia}/edit','PatologiaController@edit')->name('patologia.edit')
->middleware('permission:patologia.edit');

//Transferencia
Route::post('transferencia/store','TransferenciaController@store')->name('transferencia.store')
->middleware('permission:transferencia.create');

Route::get('transferencia','TransferenciaController@index')->name('transferencia.index')
->middleware('permission:transferencia.index');

Route::get('transferencia/create','TransferenciaController@create')->name('transferencia.create')
->middleware('permission:transferencia.create');

Route::put('transferencia/{transferencia}','TransferenciaController@update')->name('transferencia.update')
->middleware('permission:transferencia.edit');

Route::get('transferencia/{transferencia}','TransferenciaController@show')->name('transferencia.show')
->middleware('permission:transferencia.show');

Route::delete('transferencia/{transferencia}','TransferenciaController@destroy')->name('transferencia.destroy')
->middleware('permission:transferencia.destroy');

Route::get('transferencia/{transferencia}/edit','TransferenciaController@edit')->name('transferencia.edit')
->middleware('permission:transferencia.edit');

//Servicios
Route::post('servicio/store','ServicioController@store')->name('servicio.store')
->middleware('permission:servicio.create');

Route::get('servicio','ServicioController@index')->name('servicio.index')
->middleware('permission:servicio.index');

Route::get('servicio/create','ServicioController@create')->name('servicio.create')
->middleware('permission:servicio.create');

Route::put('servicio/{servicio}','ServicioController@update')->name('servicio.update')
->middleware('permission:servicio.edit');

Route::get('servicio/{servicio}','ServicioController@show')->name('servicio.show')
->middleware('permission:servicio.show');

Route::delete('servicio/{servicio}','ServicioController@destroy')->name('servicio.destroy')
->middleware('permission:servicio.destroy');

Route::get('servicio/{servicio}/edit','ServicioController@edit')->name('servicio.edit')
->middleware('permission:servicio.edit');

//Preguntas
Route::post('pregunta/store','PreguntasController@store')->name('pregunta.store')
->middleware('permission:pregunta.create');

Route::get('pregunta','PreguntasController@index')->name('pregunta.index')
->middleware('permission:pregunta.index');

Route::get('pregunta/create','PreguntasController@create')->name('pregunta.create')
->middleware('permission:pregunta.create');

Route::put('pregunta/{pregunta}','PreguntasController@update')->name('pregunta.update')
->middleware('permission:pregunta.edit');

Route::get('pregunta/{pregunta}','PreguntasController@show')->name('pregunta.show')
->middleware('permission:pregunta.show');

Route::delete('pregunta/{pregunta}','PreguntasController@destroy')->name('pregunta.destroy')
->middleware('permission:pregunta.destroy');

Route::get('pregunta/{pregunta}/edit','PreguntasController@edit')->name('pregunta.edit')
->middleware('permission:pregunta.edit');

//Encuestas
Route::post('encuesta/store','EncuestaController@store')->name('encuesta.store')
->middleware('permission:encuesta.create');

Route::get('encuesta','EncuestaController@index')->name('encuesta.index')
->middleware('permission:encuesta.index');

Route::get('encuesta/create','EncuestaController@create')->name('encuesta.create')
->middleware('permission:encuesta.create');

Route::put('encuesta/{encuesta}','EncuestaController@update')->name('encuesta.update')
->middleware('permission:encuesta.edit');

Route::get('encuesta/{encuesta}','EncuestaController@show')->name('encuesta.show')
->middleware('permission:encuesta.show');

Route::delete('encuesta/{encuesta}','EncuestaController@destroy')->name('encuesta.destroy')
->middleware('permission:encuesta.destroy');

Route::get('encuesta/{encuesta}/edit','EncuestaController@edit')->name('encuesta.edit')
->middleware('permission:encuesta.edit');

//Encuestas Relizadas
Route::post('encuestarealizada/store','EncuestarealizadaController@store')->name('encuestarealizada.store')
->middleware('permission:encuesta.create');

Route::get('encuestarealizada','EncuestarealizadaController@index')->name('encuestarealizada.index')
->middleware('permission:encuesta.index');

Route::get('encuestarealizada/create','EncuestarealizadaController@create')->name('encuestarealizada.create')
->middleware('permission:encuestarealizada.create');

Route::put('encuestarealizada/{encuestarealizada}','EncuestarealizadaController@update')->name('encuestarealizada.update')
->middleware('permission:encuestarealizada.edit');

Route::get('encuestarealizada/{encuestarealizada}','EncuestarealizadaController@show')->name('encuestarealizada.show')
->middleware('permission:encuestarealizada.show');

Route::delete('encuestarealizada/{encuestarealizada}','EncuestarealizadaController@destroy')->name('encuestarealizada.destroy')
->middleware('permission:encuestarealizada.destroy');

Route::get('encuestarealizada/{encuestarealizada}/edit','EncuestarealizadaController@edit')->name('encuestarealizada.edit')
->middleware('permission:encuestarealizada.edit');

//Encuestas Relizadas

Route::get('infocamas','InformacioncamasController@index')->name('infocamas.index')
->middleware('permission:infocamas.index');

Route::get('infocamas/{infocamas}','InformacioncamasController@show')->name('infocamas.show')
->middleware('permission:infocamas.show');


//ReportesController

Route::get('reportes','ReportesController@index')->name('reportes.index')
->middleware('permission:reportes.index');

Route::get('reportesucursales','ReportesController@reportesucursales');
Route::get('reportesunidades','ReportesController@reporteunidades');
Route::get('reportessubunidades','ReportesController@reportesubunidades');
Route::get('reportestipocama','ReportesController@reportetipocama');
Route::get('reportecamasxunidad','ReportesController@reportecamasxunidad');

Route::get('reporteneonatologia','ReportesController@reporteneonatologia');
Route::get('reportecentroobstetrico','ReportesController@reportecentroobstetrico');
Route::get('reportecentrooquirurgico','ReportesController@reportecentrooquirurgico');
Route::get('reportecentroobstetrico','ReportesController@reportecentroobstetrico');
Route::get('reportecuidadointensivosneonatales','ReportesController@reportecuidadointensivosneonatales');
Route::get('reportecuidadointensivosmaternal','ReportesController@reportecuidadointensivosmaternal');


});

//Route::get('encuesta','EncuestaController@encuestas');
//Route::resource('hospital/sucursal','SucursalController');


//Route::resource('hospital','HospitalController');
//Route::resource('hospital/unidad','UnidadController');
//Route::resource('hospital/subunidad','SubunidadController');
////Route::resource('hospital/tipocama','TipocamaController');
//Route::resource('hospital/estadocama','EstadocamaController');
//Route::resource('hospital/dashboard','DashboardController');
//Route::resource('hospital/dashboard','DashboardController');
  Route::resource('codigos','BarcodeController');
  //Route::get('/infocamas','InformacioncamasController@index');
  //Route::get('/infocamas','InformacioncamasController@index');
  //Route::get('transferencia','TransferenciaController@index');
  //Route::get('/autocomplete-search','AutocompleteController@search');
  Route::get('/autocomplete-searchsubunidad','AutocompleteController@searchsubunidad');
//Route::resource('cama','CamaController@subunidades');
