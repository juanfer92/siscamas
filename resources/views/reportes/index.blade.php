@extends ('layouts.admin')
@section ('contenido')
<div class="row">
    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <section class="content-header">
            <h3>
                <i aria-hidden="true" class="fa fa-flag-checkered">
                </i>
                Reportes
            </h3>
            <ol class="breadcrumb">
                <li>
                    <a href="/home">
                        <i class="fa fa-dashboard">
                        </i>
                        Inicio
                    </a>
                </li>
                <li class="active">
                    Reportes
                </li>
            </ol>
        </section>
        <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"/>
        <table class="table">
            <tbody>
                <tr>
                    <td>
                        <a href="{{url('reportesucursales')}}" target="_blank">
                            <button class="btn btn-primary">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Listado de Sucursales
                            </button>
                        </a>
                    </td>
                    <td>
                        <a href="{{url('reportesunidades')}}" target="_blank">
                            <button class="btn btn-primary">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Listado de Unidades
                            </button>
                        </a>
                    </td>
                    <td>
                        <a href="{{url('reportessubunidades')}}" target="_blank">
                            <button class="btn btn-primary">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Listado de Subunidades
                            </button>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="{{url('reportestipocama')}}" target="_blank">
                            <button class="btn btn-primary">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Listado de Tipos de Camas
                            </button>
                        </a>
                    </td>
                    <td>
                        <a href="{{url('reportecamasxunidad')}}" target="_blank">
                            <button class="btn btn-primary">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Listado de Camas por Unidades
                            </button>
                        </a>
                    </td>
                    <td>
                        <a href="{{url('reportecamasxunidad')}}" target="_blank">
                            <button class="btn btn-primary">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Listado Pacientes
                            </button>
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
        <center> <h3><strong>Reportes Solicitados</strong></h3></center>
        <hr style="width: 100%; color: #f8b500; height: 1px; background-color:#f8b500;"/>
        <table class="table">
            <tbody>
                <tr>
                    <td>
                        <a href="{{url('reporteneonatologia')}}" target="_blank">
                            <button class="btn btn-primary btn-lg">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Neonatología
                            </button>
                        </a>
                    </td>
                    <td>
                        <a href="{{url('reportecentroobstetrico')}}" target="_blank">
                            <button class="btn btn-primary btn-lg">
                                <i aria-hidden="true" class="fa fa-file-pdf-o">
                                </i>
                                Centro Obstétrico
                            </button>
                        </a>
                    </td>
                </tr>
                <tr>
                  <td>
                      <a href="{{url('reportecentrooquirurgico')}}" target="_blank">
                          <button class="btn btn-primary btn-lg">
                              <i aria-hidden="true" class="fa fa-file-pdf-o">
                              </i>
                              Centro Quirúrgico
                          </button>
                      </a>
                  </td>
                  <td>
                      <a href="{{url('reportecuidadointensivosneonatales')}}" target="_blank">
                          <button class="btn btn-primary btn-lg">
                              <i aria-hidden="true" class="fa fa-file-pdf-o">
                              </i>
                              Cuidados Intensivos Neonatales
                          </button>
                      </a>
                  </td>
                </tr>
                <tr>
                  <td>
                      <a href="{{url('reportecuidadointensivosmaternal')}}" target="_blank">
                          <button class="btn btn-primary btn-lg">
                              <i aria-hidden="true" class="fa fa-file-pdf-o">
                              </i>
                              Cuidados Intensivos Maternal
                          </button>
                      </a>
                  </td>
                  <td>
                    <a href="{{url('reporteneonatologia')}}" target="_blank">
                        <button class="btn btn-success btn-lg">
                          <i class="fa fa-file-excel-o" aria-hidden="true"></i>
                            Reporte General de Camas
                        </button>
                    </a>
                  </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
