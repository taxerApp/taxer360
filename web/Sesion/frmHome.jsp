<%-- 
    Document   : frmHome
    Created on : 18/02/2024, 03:41:33 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%= request.getContextPath() %>/css/Home.css" rel="stylesheet" type="text/css"/>
    </head>
 <script>
            var ctxGAdminHome = document.getElementById("gEvaluacionesAdminBElarning").getContext("2d");
            var graficaAdminHome = new Chart(ctxGAdminHome, {
                type: "bar",
                data: {
                    labels: ["Tecnosoluciones S.L.", "Agricola Verde Valle", "InnovaTec", "Farmacia Saludable", "Viajes MundoGlobal"],
                    datasets: [{
                            label: ["Top 5 Evaluaciónes por Empresa"],
                            data: [2,4,5, 8, 10],
                            backgroundColor: ["blue", "greenyellow", "red", "gray","pink"]
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

        </script>
    <body>
<!--        <h1 style="width: 100%; background: red;">Este es el home</h1>
        <input type="button" value="Probar modal" id="btnModalPrueba">-->

 <div style="width: 45%; break-after: page; margin-top: 2%; margin-left: 22%;margin-right: 22%;">
     <canvas id="gEvaluacionesAdminBElarning" ></canvas> <br>
     <i class="fa fa-eye fa-2xs" aria-hidden="true" style="color: var(--amarilloBackground)" onclick="wndDetalleGraficaHome();"><label class="lblVDetalleHomeAdminB"> &nbsp;Ver Detalle</label></i><br>
     

            </div>
    </body>
</html>


