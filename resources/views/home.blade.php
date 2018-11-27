@extends ('layouts.admin')
@section ('contenido')
<!-- Small boxes (Stat box) -->
@include('notification')
  <div class="row">
      @foreach ($numpaciente as $npac)
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-aqua">
        <div class="inner">
          <h3>{{$npac->numtocpac}}</h3>

          <p>Total de Pacientes</p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a  class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-green">
        <div class="inner">
          <h3>{{$npac->numtocpaci}}<sup style="font-size: 20px"></sup></h3>

          <p>Pacientes Ingresados</p>
        </div>
        <div class="icon">
          <i class="ion ion-person-add"></i>
        </div>
        <a  class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-yellow">
        <div class="inner">
          <h3>{{$npac->numtocpace}}</h3>

          <p>Pacientes Dados de Alta</p>
        </div>
        <div class="icon">
          <i class="ion-flag"></i>
        </div>
        <a class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-xs-6">
      <!-- small box -->
      <div class="small-box bg-red">
        <div class="inner">
          <table>
            <tr>
              <td><h3>{{$npac->camasdispo}}</h3></td>
              <td><h3>&nbsp &nbsp{{$npac->camasocu}}</h3></td>
            </tr>
            <tr>
              <td>&nbsp &nbsp</td>
              <td>&nbsp &nbsp</td>
            </tr>
            <tr>
              <td>Disponibles</td>
              <td>&nbsp &nbspOcupadas</td>
            </tr>
          </table>
        </div>
        <div class="icon">
          <i class="ion ion-pie-graph"></i>
        </div>
        <a  class="small-box-footer">Disponibilidad de Camas <i class="fa fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    @endforeach
  </div>


          <!-- Estadísticas gráficos -->
          <div class="row">

                <!-- AREA CHART -->


<div class="col-md-6">
  <div class="box box-primary">
    <div class="box-header with-border">
      <h3 class="box-title" style="font-size:17px;">Calidad de Servicio</h3>
      <div class="box-tools pull-right">
        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

      </div>
    </div>
    <div class="box-body">
      <div class="chart">
        {!! $chartjs->render() !!}
      </div>
    </div>
  </div>
</div>



            <div class="col-md-6">
              <div class="box box-primary">
                <div class="box-header with-border">
                  <h3 class="box-title" style="font-size:17px;">Calidad de Servicios</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

                  </div>
                </div>
                <div class="box-body">
                  <div class="chart">
                    {!! $chartjs2->render() !!}
                  </div>
                </div>
              </div>
          </div>

          <div class="col-md-6">
            <div class="box box-primary">
              <div class="box-header with-border">
                <h3 class="box-title" style="font-size:17px;">Tipos de Partos</h3>
                <div class="box-tools pull-right">
                  <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

                </div>
              </div>
              <div class="box-body">
                <div class="chart">
                  {!! $chartjs3->render() !!}
                </div>
              </div>
            </div>
        </div>
        <div class="col-md-6">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title" style="font-size:17px;">Tasa de embarazos</h3>
              <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                {!! $chartjs4->render() !!}
              </div>
            </div>
          </div>
      </div>
            </div><!-- /.row -->
  @endsection
