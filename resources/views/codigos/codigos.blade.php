@extends ('layouts.admin')
@section ('contenido')

@foreach($codigos as $codigo)
  {{--*/ @$codigo = '"'.$codigo->name.'"' /*--}}

  <div>
    {!! $d->getBarcodeHTML($codigo, "C128")!!}
  </div>
  <div style="padding-top: 50px; width: 24%;">
    {{ $codigo->name }}
  </div>
@endforeach

<style>
    .code {
        height: 80px !important;
    }
</style>

@endsection
