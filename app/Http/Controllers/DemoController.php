<?php

namespace sisCamas\Http\Controllers;

use sisCamas\Http\Requests;
use Illuminate\Http\Request;
use Alert;

class DemoController extends Controller
{
  public function notificacion()
 {
   $req= 'Hola';
     //session()->set('success','Item created successfully.');


     return view('notification-check');
 }
}
