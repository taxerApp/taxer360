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


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <div id="dvContenedor" style="width: 100%; background: #00dd1c;">
            <!-- aqui va todo el contenido html-->
            <label style="color: red;">Es una prueba de pdf</label><br>
            <div style="width: 30%;">
                <canvas id="chart" ></canvas>  
            </div>
 <!-- aqui termina todo el contenido html-->
        </div>


        <input type="button" value="Generar pdf" id="btnGenerarPdf">

        <script>
            var ctx = document.getElementById("chart").getContext("2d");
            var chart = new Chart(ctx, {
                type: "pie",
                data: {
                    labels: ["Col1", "Col2", "Col3"],
                    datasets: [{
                            label: ["Datos1"],
                            data: [10, 9, 15],
                            backgroundColor: ["rgb(37, 150, 190)", "rgb(83, 37, 190, 1)", "40, 190, 37, 1"]
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

            $(function () {
                $('#btnGenerarPdf').click(function () {
           const $elementoParaConvertir = document.querySelector("#dvContenedor"); // <-- Aquí puedes elegir cualquier elemento del DOM
                    html2pdf()
                            .set({
                                margin: 1,
                                filename: 'documento.pdf',
                                image: {
                                    type: 'jpeg',
                                    quality: 0.98
                                },
                                html2canvas: {
                                    scale: 3, // A mayor escala, mejores gráficos, pero más peso
                                    letterRendering: true,
                                },
                                jsPDF: {
                                    unit: "in",
                                    format: "a4",
                                    orientation: 'portrait' // landscape o portrait
                                }
                            })
                            .from($elementoParaConvertir)
                            .save()
                            .catch(err => console.log(err));

                });
            });
        </script>
    </body>
</html>
