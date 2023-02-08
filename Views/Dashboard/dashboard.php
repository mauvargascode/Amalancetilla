
      <main class="app-content">
          <div class="app-title">
              <div>
                  <h1><i class="fa fa-dashboard"></i> <?= $data['page_title'] ?></h1>
              </div>

          </div>
          <div class="row">
              <div class="col-md-6 col-lg-3">
                  <a href="<?= base_url() ?>/usuarios" class="linkw">
                      <div class="widget-small primary coloured-icon"><i class="icon fa fa-users fa-3x"></i>
                          <div class="info">
                              <h4>Usuarios</h4>
                              <p><b>5</b></p>
                          </div>
                      </div>
                  </a>
              </div>

              <div class="col-md-6 col-lg-3">
                  <a href="<?= base_url() ?>/clientes" class="linkw">
                      <div class="widget-small info coloured-icon"><i class="icon fa fa-user fa-3x"></i>
                          <div class="info">
                              <h4>Clientes</h4>
                              <p><b>25</b></p>
                          </div>
                      </div>
                  </a>
              </div>

              <div class="col-md-6 col-lg-3">
                  <a href="<?= base_url() ?>/productos" class="linkw">
                      <div class="widget-small warning coloured-icon"><i class="icon fa fa-archive fa-3x"></i>
                          <div class="info">
                              <h4>Productos</h4>
                              <p><b>10</b></p>
                          </div>
                      </div>
                  </a>
              </div>

              <div class="col-md-6 col-lg-3">
                  <a href="<?= base_url() ?>/pedidos" class="linkw">
                      <div class="widget-small danger coloured-icon"><i class="icon fa fa-shopping-cart fa-3x"></i>
                          <div class="info">
                              <h4>Pedidos</h4>
                              <p><b>500</b></p>
                          </div>
                      </div>
                  </a>
              </div>
          </div>

          <div class="row">
              <div class="col-md-6">
                  <div class="tile">
                      <h3 class="tile-title">Ultimas ventas</h3>
                      <table class="table table-striped table-sm">
                          <thead>
                              <tr>
                                  <th>#</th>
                                  <th>Cliente</th>
                                  <th>Estado</th>
                                  <th>Monto</th>
                                  <th>Ver</th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td>1</td>
                                  <td>Mark</td>
                                  <td><span class="badge badge-success">Pagada</span></td>
                                  <td>L. 3,500.00</td>
                                  <td><a href=""><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                              </tr>
                              <tr>
                                  <td>2</td>
                                  <td>Mark</td>
                                  <td><span class="badge badge-success">Pagada</span></td>
                                  <td>L. 3,500.00</td>
                                  <td><a href=""><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                              </tr>
                              <tr>
                                  <td>3</td>
                                  <td>Mark</td>
                                  <td><span class="badge badge-success">Pagada</span></td>
                                  <td>L. 3,500.00</td>
                                  <td><a href=""><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                              </tr>
                              <tr>
                                  <td>4</td>
                                  <td>Mark</td>
                                  <td><span class="badge badge-success">Pagada</span></td>
                                  <td>L. 3,500.00</td>
                                  <td><a href=""><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                              </tr>
                              <tr>
                                  <td>5</td>
                                  <td>Mark</td>
                                  <td><span class="badge badge-success">Pagada</span></td>
                                  <td>L. 3,500.00</td>
                                  <td><a href=""><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
              </div>

              <div class="col-md-6">
                  <div class="tile">
                      <div class="container-title">
                          <h3 class="tile-title">Tipo de pagos por mes</h3>
                          <div class="dflex">
                              <input class="date-picker pagoMes" name="pagoMes" placeholder="Mes y Año">
                              <button type="button" class="btnTipoVentaMes btn btn-info btn-sm" onclick="fntSearchPagos()"> <i class="fas fa-search"></i> </button>
                          </div>
                      </div>
                      <div id="pagosMesAnio"></div>
                  </div>
              </div>
          </div>

          <div class="row">
              <div class="col-md-12">
                  <div class="tile">
                      <div class="container-title">
                          <h3 class="tile-title">Ventas por mes</h3>
                          <div class="dflex">
                              <input class="date-picker ventasMes" name="ventasMes" placeholder="Mes y Año">
                              <button type="button" class="btnVentasMes btn btn-info btn-sm" onclick="fntSearchVMes()"> <i class="fas fa-search"></i> </button>
                          </div>
                      </div>
                      <div id="graficaMes"></div>
                  </div>
              </div>
              <div class="col-md-12">
                  <div class="tile">
                      <div class="container-title">
                          <h3 class="tile-title">Ventas por año</h3>
                          <div class="dflex">
                              <input class="ventasAnio" name="ventasAnio" placeholder="Año" minlength="4" maxlength="4" onkeypress="return controlTag(event);">
                              <button type="button" class="btnVentasAnio btn btn-info btn-sm" onclick="fntSearchVAnio()"> <i class="fas fa-search"></i> </button>
                          </div>
                      </div>
                      <div id="graficaAnio"></div>
                  </div>
              </div>
          </div>


      </main>

      

      <script>
          Highcharts.chart('pagosMesAnio', {
              chart: {
                  plotBackgroundColor: null,
                  plotBorderWidth: null,
                  plotShadow: false,
                  type: 'pie'
              },
              title: {
                  text: 'Pagos de mayo de 2022'
              },
              tooltip: {
                  pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
              },
              accessibility: {
                  point: {
                      valueSuffix: '%'
                  }
              },
              plotOptions: {
                  pie: {
                      allowPointSelect: true,
                      cursor: 'pointer',
                      dataLabels: {
                          enabled: true,
                          format: '<b>{point.name}</b>: {point.percentage:.1f} %'
                      }
                  }
              },
              series: [{
                  name: 'Tipo de pago',
                  colorByPoint: true,
                  data: [{
                      name: 'Transferencias',
                      y: 50.00,
                      sliced: true,
                      selected: true
                  }, {
                      name: 'Efectivo',
                      y: 40.00
                  }, {
                      name: 'Cheques',
                      y: 10.00
                  }]
              }]
          });

          Highcharts.chart('graficaMes', {

              title: {
                  text: 'Ventas de 2019-2022'
              },

              subtitle: {
                  text: 'Source: <a href="https://irecusa.org/programs/solar-jobs-census/" target="_blank">IREC</a>'
              },

              yAxis: {
                  title: {
                      text: 'Productos'
                  }
              },

              xAxis: {
                  accessibility: {
                      rangeDescription: 'Range: 2010 to 2022'
                  }
              },

              legend: {
                  layout: 'vertical',
                  align: 'right',
                  verticalAlign: 'middle'
              },

              plotOptions: {
                  series: {
                      label: {
                          connectorAllowed: false
                      },
                      pointStart: 2019
                  }
              },

              series: [{
                  name: 'Vinos',
                  data: [700, 500, 600, 700
                  ]
              }, {
                  name: 'Jaleas',
                  data: [400, 200, 300, 400
                  ]
              }],

              responsive: {
                  rules: [{
                      condition: {
                          maxWidth: 500
                      },
                      chartOptions: {
                          legend: {
                              layout: 'horizontal',
                              align: 'center',
                              verticalAlign: 'bottom'
                          }
                      }
                  }]
              }

          });

          Highcharts.chart('graficaAnio', {
              chart: {
                  type: 'column'
              },
              title: {
                  text: 'Ventas del 2021'
              },
              subtitle: {
                  text: ''
              },
              xAxis: {
                  type: 'category',
                  labels: {
                      rotation: -45,
                      style: {
                          fontSize: '13px',
                          fontFamily: 'Verdana, sans-serif'
                      }
                  }
              },
              yAxis: {
                  min: 0,
                  title: {
                      text: 'Productos'
                  }
              },
              legend: {
                  enabled: false
              },
              tooltip: {
                  pointFormat: 'Population in 2021: <b>{point.y:.1f} millions</b>'
              },
              series: [{
                  name: 'Population',
                  data: [
                      ['Enero', 37.33],
                      ['Febrero', 31.18],
                      ['Marzo', 27.79],
                      ['Abril', 22.23],
                      ['Mayo', 21.91],
                      ['Junio', 21.74],
                      ['Julio', 21.32],
                      ['Agosto', 20.89],
                      ['Septiembre', 20.67],
                      ['Octubre', 19.11],
                      ['Noviembre', 16.45],
                      ['Diciembre', 16.38]
                      
                  ],
                  dataLabels: {
                      enabled: true,
                      rotation: -90,
                      color: '#FFFFFF',
                      align: 'right',
                      format: '{point.y:.1f}', // one decimal
                      y: 10, // 10 pixels down from the top
                      style: {
                          fontSize: '13px',
                          fontFamily: 'Verdana, sans-serif'
                      }
                  }
              }]
          });
      </script>