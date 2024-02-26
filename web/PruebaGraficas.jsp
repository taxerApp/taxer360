<%-- 
    Document   : PruebaGraficas
    Created on : 15/02/2024, 09:47:16 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <script defer src="<%= request.getContextPath()%>/libs/jquery/jquery.flexslider-min.js"></script>
        <link href="<%= request.getContextPath()%>/libs/jquery/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-3.7.1.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-ui.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/jquery/jquery-ui.css" rel="stylesheet" type="text/css"/>
                   <!--<script src="<%= request.getContextPath()%>/libs/jquery/jspdf.debug.js" type="text/javascript"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.js" integrity="sha512-7DgGWBKHddtgZ9Cgu8aGfJXvgcVv4SWSESomRtghob4k4orCBUTSRQ4s5SaC2Rz+OptMqNk0aHHsaUBk6fzIXw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js" integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.min.js" integrity="sha512-CQBWl4fJHWbryGE+Pc7UAxWMUMNMWzWxF4SQo9CgkJIN1kx6djDQZjh3Y8SZ1d+6I+1zze6Z7kHXO7q3UyZAWw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/helpers.js" integrity="sha512-08S2icXl5dFWPl8stSVyzg3W14tTISlNtJekjsQplv326QtsmbEVqL4TFBrRXTdEj8QI5izJFoVaf5KgNDDOMA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/helpers.min.js" integrity="sha512-JG3S/EICkp8Lx9YhtIpzAVJ55WGnxT3T6bfiXYbjPRUoN9yu+ZM+wVLDsI/L2BWRiKjw/67d+/APw/CDn+Lm0Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="<%= request.getContextPath()%>/ControllerJs/PruebaControllerJS.js" type="text/javascript"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/PruebaGrafica.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <input type="button" value="Generar pdf" id="btnGenerarPdf">
        <div id="dvContenedor" style="width: 80%;  margin-left: 5%; margin-right: 5%;">
            <table style="background-color: rgb(14,12,64); color: white; width: 100%;">
                <tr>
  <td> <img src="img/belearnig1.png" alt="" width="100px" height="100px"></td>
  <th style="text-align: left">    Evaluación de 360 Grados. Reporte Individual <br>
          ATILANO VARGAS MARIA MAGDALENA<br>
          EV. 360 2023     </th>
  <td><img src="img/belearnig1.png" alt="" width="100px" height="100px" ></td></td>
  
</tr>
            </table>
           
            <!-- aqui va todo el contenido html--> 
            
                <table   style="color: rgb(29,23,123); margin: 0 auto;">
                    <tr>
                        <td></td>
                        <td style="text-align: right"><b>  Evaluado: </b> </td>
                    <td>  ATILANO VARGAS MARIA MAGDALENA  </td>
                        <td style="text-align: right"></td>
                    </tr>
                    <tr>
                        <td></td>
                    <td style="text-align: right"><b>  Perfil: </b> </td>
                    <td>  360°_Jefe de área 23 </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                    <td style="text-align: right"><b>  Fecha de Evaluación:  </b></td>
                    <td>  2/Mar/2023  </td>
                        <td></td>
                    </tr>
            </table>

            <p style="color: rgb(29,23,123)"><b>Bienvenido(a)</b> al reporte de resultados de tu retroalimentación de 360°. Este reporte te permitirá conocer la percepción
                que tienen las personas que te rodean (incluyendo tu autoevaluación) respecto a tu conducta laboral y tus atributos
                personales y profesionales en cuanto a liderazgo.</p>

            <h3 style="color: rgb(29,23,123)">Propósito</h3>

            <p style="color: rgb(29,23,123)"> El objetivo de la retroalimentación de 360° es ayudarte a comprender mejor la manera en que comportas cotidianamente,
                en la percepción de tus compañeros de trabajo.
                El objetivo de esta retroalimentación es que identifiques tus fortalezas y áreas de oportunidad específicas. La idea es que
                capitalices tus puntos fuertes y que desarrolles aquellos que necesitan mejora.
                En la medida que contemos con mejores líderes, podremos identificar, atraer, desarrollar y retener talento, de modo que
                juntos, demos valor a nuestros clientes.</p>
            <h3 style="color: rgb(29,23,123)">¿Por dónde comenzar?</h3>
            <p style="color: rgb(29,23,123)">Lo primero que debes hacer, es leer tu reporte completo. Es importante que lo leas cuidadosamente y que reflexiones en
                cómo utilizar constructivamente la retroalimentación recibida. Cuando lo leas, hazte las siguientes preguntas:
            </p>
            <p style="color: rgb(29,23,123)">
                • ¿Cuán diferentes son las calificaciones dadas por mis compañeros, respecto a la forma en la que yo me califiqué? <br>
                • Según mis resultados, ¿cuáles son mis tres fortalezas? <br>
                • ¿Qué puedo hacer para reforzar y capitalizar mejor mis fortalezas en el día con día? <br>
                • Según mis resultados, ¿en qué áreas obtuve las puntuaciones más bajas? <br>
                • ¿Qué puedo hacer para desarrollar esas habilidades? <br>
                • Si yo mejorara esos aspectos, ¿qué resultados positivos tendría yo? <br>
                • ¿Qué necesitaría para poder demostrar esas competencias, de forma cotidiana en mi trabajo? <br>
                • ¿Qué posibles obstáculos se podrían presentar al llevar a cabo mi plan de acción? <br>
            </p>

            <h3 style="color: rgb(29,23,123)">Definiciones</h3>
            <p style="color: rgb(29,23,123)">
                Antes de comenzar, es importante que tengas presentes los siguientes conceptos:</p>
            <p style="color: rgb(29,23,123)">
                • Conducta observable. Se refiere a un comportamiento que se debe manifestar de forma cotidiana en el entorno
                laboral, y que está asociado con una competencia. Las conductas observables nos permiten conocer a profundidad
                qué espera la organización de nosotros. <br>
                • Competencia. Se refiere a un atributo personal que distingue a una persona promedio, de una con desempeño
                sobresaliente. Una competencia se compone de tres aspectos: actitud, conocimiento y capacidad.<br>
                • Desviación estándar (σ). Es una medida estadística, que hace referencia al grado de acuerdo que existió en una
                pregunta. Entre más grande la DE, se asume que hubo más desacuerdo. Si la DE es pequeña, se entiende que la
                percepción que tienen los evaluadores es homogénea.<br>
                • Media. Es el promedio simple de las calificaciones obtenidas. <br>
                • Moda. Es la calificación que más se utilizó en determinada pregunta o factor del cuestionario.</p>

            <h3 style="color: rgb(29,23,123)">Si tienes dudas</h3>

            <p style="color: rgb(29,23,123)">No olvides contactar a tu representante de RRHH en caso de que tengas dudas de cómo interpretar estos resultados, o
                cómo utilizarlos para trazar tu plan de acción personal.
            </p>

            <h3 style="color: rgb(29,23,123)">Resultado General</h3>


            <div style="width: 55%; break-after: page;">
                <canvas id="chart" ></canvas>  
            </div>
            <!--   break-after: page; sirve para que al momento de mandar a generar el pdf se haga un salto de linea justo despues
               del elemento indicado con esta instruccion en css-->
            <table style="color: rgb(29,23,123);  ">

                <tr>
                    <th>  #  </th>
                    <th>  Competencia  </th>
                    <th>   Resultado   </th>
                    <th>   σ   </th>
                    <th>   Media   </th>
                    <th>   Moda   </th>

                </tr>
                <tr>
                    <th a1>   R.G   </th>
                    <td>  Resultado General  </td>
                    <td>  92.8%  </td>
                    <td>  0.60  </td>
                    <td>  4.64   </td>
                    <td>  5  </td>
                </tr>
                <tr>
                    <th a2>   1   </th>
                    <td>  Apego a normas_BL  </td>
                    <td>  95.6%  </td>
                    <td>  0.41  </td>
                    <td>  4.79   </td>
                    <td>  5     </td>
                </tr>
                <tr>
                    <th a3>   2   </th>
                    <td>  Entendimiento de las diferencias  </td>
                    <td>  95.4%  </td>
                    <td>  0.43  </td>
                    <td>  4.76    </td>
                    <td>  5     </td>
                </tr>
                <tr>
                    <th a4>   3   </th>
                    <td>  Motivación por aprender  </td>
                    <td>  94.2%  </td>
                    <td>  0.45  </td>
                    <td>  4.71     </td>
                    <td>  5     </td>
                </tr>
                <tr>
                    <th a5>   4   </th>
                    <td>  Orientación a resultados_BL  </td>
                    <td>  90.5%   </td>
                    <td>  0.57  </td>
                    <td>  4.54   </td>
                    <td>  5     </td>
                </tr>
                <tr>
                    <th a6>   5   </th>
                    <td>  Orientación al cliente_BL  </td>
                    <td>  90.7%  </td>
                    <td>  0.66  </td>
                    <td>  4.57    </td>
                    <td>  5     </td>
                </tr>
                <tr>
                    <th a7>   6   </th>
                    <td>  Sentido de urgencia  </td>
                    <td>  93.4%  </td>
                    <td>  0.47  </td>
                    <td>  4.67    </td>
                    <td>  5     </td>
                </tr>
                <tr>
                    <th a8>   7   </th>
                    <td>  Trabajo en equipo_BL  </td>
                    <td>  90.0%  </td>
                    <td>  0.85  </td>
                    <td>  4.48    </td>
                    <td>  5     </td>
                </tr>
            </table> <br>

            <h3 style="color: rgb(29,23,123)">Autoevaluación comparada respecto a los demás evaluadores</h3>
            
              <div style="width: 55%;">
                <canvas id="grafica2" ></canvas>  
                        <div style="width: 110%; margin-top: 0%;"><table>
                                <tr>
                                    <td style=" width: 17px; height:1px;"><label> R. B </label></td>
                                    <td style=" width: 16px; height: 1px;"><label> 1 </label></td>
                                    <td style=" width: 16px; height: 1px;"><label> 2 </label></td>
                                    <td style=" width: 15px; height: 1px;"><label> 3 </label></td>
                                    <td style=" width: 15px; height: 1px;"><label> 4 </label></td>
                                    <td style=" width: 15px; height: 1px;"><label> 5 </label></td>
                                    <td style=" width: 13px; height: 1px;"><label> 6 </label></td>
                                    <td style=" width: 13.5px; height: 1px;"><label> 7 </label></td>
                                </tr>
                    </table></div>
            </div>

            <table style="color: rgb(29,23,123)">

                <tr>
                    <th rowspan="2"> # </th>
                    <th rowspan="2">Competencia</th>
                    <th colspan="4" rowspan="1">Auto Evaluación</th>
                    <th colspan="4" rowspan="1">Los Demas</th>
                </tr>
                <tr>
                    <th abc >  Resultado (A)  </th>
                    <th def>   σ  </th>
                    <th def>   Media   </th>
                    <th def>    Moda   </th>
                    <th ghi>    Resultado(D)    </th>
                    <th def>   σ  </th>
                    <th def>   Media    </th>
                    <th def>   Moda   </th> 

                </tr>

                <tr>
                    <td><b>   R.G. </b>  </td>
                    <td><b>  Resultado General </b> </td>
                    <td><b>  100% </b> </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td><b> 92.0%  </b></td>
                    <td>  0.63   </td>
                    <td>  4.57   </td>
                    <td>    5   </td>
                    </td>
                </tr>
                <tr>
                    <th>   1  </th>
                    <td>  Apego a normas_BL  </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  95.1%  </td>
                    <td>  0.44   </td>
                    <td>  4.75  </td>
                    <td>    5   </td>
                </tr>
                <tr>
                    <th>   2   </th>
                    <td>  Entendimiento de las diferencias   </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  94.9%  </td>
                    <td>  0.46   </td>
                    <td>  4.72   </td>
                    <td>    5   </td>
                </tr>
                <tr>
                    <th>   3   </th>
                    <td>  Motivación por aprender  </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  93.6%  </td>
                    <td>  0.48   </td>
                    <td>  4.67   </td>
                    <td>    5   </td>
                </tr>
                <tr>
                    <th>   4   </th>
                    <td>  Orientación a resultados_BL  </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  89.4%  </td>
                    <td>  0.59   </td>
                    <td>  4.46   </td>
                    <td>    5   </td>
                </tr>
                <tr>
                    <th>   5   </th>
                    <td>  Orientación al cliente_BL   </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  89.7%  </td>
                    <td>  0.71   </td>
                    <td>  4.50   </td>
                    <td>    5   </td>
                </tr>
                <tr>
                    <th>   6   </th>
                    <td>  Sentido de urgencia  </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  92.7%  </td>
                    <td>  0.50  </td>
                    <td>  4.61  </td>
                    <td>    5   </td>
                </tr>
                <tr>
                    <th>   7  </th>
                    <td>  Trabajo en equipo_BL </td>
                    <td>  100%  </td>
                    <td>  0.00  </td>
                    <td>  5.00   5   </td>
                    <td>    5   </td>
                    <td>  88.9% </td>
                    <td>  0.90   </td>
                    <td>  4.39   </td>
                    <td>    5   </td>
                </tr>
            </table> 

            <h3 style="color: rgb(29,23,123)">Conductas Observables con calificaciones más ALTAS</h3>

            <table style="color: rgb(29,23,123)">

                <tr>
                    <th>  #  </th>
                    <th> Conducta Observable   </th>
                    <th>   Resultado   </th> 
                </tr>
                <tr>
                    <td>  1  </td>
                    <td> Logra actualizarse constantemente sobre normas y procedimientos que competen a su área para asegurar las
                        metas de la organización. </td>
                    <td>   100.0%</td> 
                </tr>
                <tr>
                    <td>  2  </td>
                    <td> Profundiza para entender las diferencias y las razones por las que existen las mismas. </td>
                    <td>   100.0%</td> 
                </tr>
                <tr>
                    <td>  3  </td>
                    <td> Está comprometido y enfocado en atender al cliente interno o externo. </td>
                    <td>   96.0%</td> 
                </tr>
                <tr>
                    <td>  4  </td>
                    <td>  Reconoce las estrategias que le son útiles y sabe lo que puede hacer solo y con ayuda de otros. </td>
                    <td>  96.0%</td> 
                </tr>
                <tr>
                    <td>  5  </td>
                    <td>  Comparte con los demás nuevos aprendizajes. </td>
                    <td>   96.0%</td> 
                </tr>
            </table> 
            <h3 style="color: rgb(29,23,123)">Conductas Observables con calificaciones más BAJAS</h3>

            <table style="color: rgb(29,23,123)">

                <tr>
                    <th>  #  </th>
                    <th> Conducta Observable   </th>
                    <th>   Resultado   </th> 
                </tr>
                <tr>
                    <td>  25  </td>
                    <td> Privilegia la sinergia entre colaboradores. </td>
                    <td>   90.0%  </td> 
                </tr>
                <tr>
                    <td>  26  </td>
                    <td> Resalta los intereses de la empresa sobre los intereses personales  </td>
                    <td>   100.0%</td> 
                </tr>
                <tr>
                    <td>  27  </td>
                    <td> Involucra a su equipo de trabajo con sus superiores.  </td>
                    <td>   96.0%</td> 
                </tr>
                <tr>
                    <td>  28  </td>
                    <td>  Convierte los objetivos de largo plazo en resultados de corto y mediano plazo, define cómo cumplirlas y
                        asegura el logro. </td>
                    <td>  96.0%</td> 
                </tr>
                <tr>
                    <td>  29  </td>
                    <td>  Anticipa las expectativas de atención o respuesta del cliente interno o externo, enfocándose en satisfacerlo.  </td>
                    <td>   96.0%</td> 
                </tr>
            </table> 

            <div style="width: 55%;"></div>
            <p>______________________________________________________________________________________________________________________</p>
            <div style=" margin: auto; width: 450px;">
                <center><img src="img/Ucorp.png"> </center>
            </div>

                 <br> <!-- aqui termina todo el contenido html-->


        </div>




        <script>
            var ctx = document.getElementById("chart").getContext("2d");
            var chart = new Chart(ctx, {
                type: "bar",
                data: {
                    labels: ["R.G", "1", "2", "3", "4", "5", "6", "7"],
                    datasets: [{
                            label: ["Competencias"],
                            data: [92.8, 95.6, 95.4, 94.2, 90.5, 90.7, 93.4, 90.0],
                            backgroundColor: ["greenyellow", "blue", "yellow", "pink", "skyblue", "grey", "rgb(255,128,128)", "rgb(128,255,128)"]
                        }]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true //para que mande los valores de forma corrscta respetando el orden que le damos
                                }
                            }]
                    }
                }
            });

//            $(function () {
//                $('#btnGenerarPdf').click(function () {
//           const $elementoParaConvertir = document.querySelector("#dvContenedor"); // <-- Aquí puedes elegir cualquier elemento del DOM
//                    html2pdf()
//                            .set({
//                                margin: 1,
//                                filename: 'documento.pdf',
//                                image: {
//                                    type: 'jpeg',
//                                    quality: 0.98
//                                },
//                                html2canvas: {
//                                    scale: 3, // A mayor escala, mejores gráficos, pero más peso
//                                    letterRendering: true,
//                                },
//                                jsPDF: {
//                                    unit: "in",
//                                    format: "a4",
//                                    orientation: 'portrait' // landscape o portrait
//                                }
//                            })
//                            .from($elementoParaConvertir)
//                            .save()
//                            .catch(err => console.log(err));
//
//                });
//            });
        </script>
        <script>
            var ctxGrafica2 = document.getElementById("grafica2").getContext("2d");
            var grafica2 = new Chart(ctxGrafica2, {
                type: "bar",
                data: {
                    labels: ["A", "D", "A", "D", "A", "D", "A", "D", "A", "D", "A", "D", "A", "D", "A", "D"],
                    datasets: [{
                            label: ["Competencias"],
                            data: [100, 92.0, 100, 95.1, 100, 94.9, 100, 93.6, 100, 89.4, 100, 89.7, 100, 92.7, 100, 88.9,],
                            backgroundColor: ["red", "greenyellow", "red", "greenyellow","red", "greenyellow","red", "greenyellow","red", "greenyellow","red", "greenyellow","red", "greenyellow","red", "greenyellow",]
                        }]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true //para que mande los valores de forma corrscta respetando el orden que le damos
                                }
                            }]
                    }
                }
            });

//            $(function () {
//                $('#btnGenerarPdf').click(function () {
//           const $elementoParaConvertir = document.querySelector("#dvContenedor"); // <-- Aquí puedes elegir cualquier elemento del DOM
//                    html2pdf()
//                            .set({
//                                margin: 1,
//                                filename: 'documento.pdf',
//                                image: {
//                                    type: 'jpeg',
//                                    quality: 0.98
//                                },
//                                html2canvas: {
//                                    scale: 3, // A mayor escala, mejores gráficos, pero más peso
//                                    letterRendering: true,
//                                },
//                                jsPDF: {
//                                    unit: "in",
//                                    format: "a4",
//                                    orientation: 'portrait' // landscape o portrait
//                                }
//                            })
//                            .from($elementoParaConvertir)
//                            .save()
//                            .catch(err => console.log(err));
//
//                });
//            });
        </script>
    </body>
</html>
