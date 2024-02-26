<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>
        <!--        // Carpeta de ESTILOS NEVA //-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.js" integrity="sha512-7DgGWBKHddtgZ9Cgu8aGfJXvgcVv4SWSESomRtghob4k4orCBUTSRQ4s5SaC2Rz+OptMqNk0aHHsaUBk6fzIXw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js" integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.min.js" integrity="sha512-CQBWl4fJHWbryGE+Pc7UAxWMUMNMWzWxF4SQo9CgkJIN1kx6djDQZjh3Y8SZ1d+6I+1zze6Z7kHXO7q3UyZAWw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/helpers.js" integrity="sha512-08S2icXl5dFWPl8stSVyzg3W14tTISlNtJekjsQplv326QtsmbEVqL4TFBrRXTdEj8QI5izJFoVaf5KgNDDOMA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/helpers.min.js" integrity="sha512-JG3S/EICkp8Lx9YhtIpzAVJ55WGnxT3T6bfiXYbjPRUoN9yu+ZM+wVLDsI/L2BWRiKjw/67d+/APw/CDn+Lm0Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <link href="<%= request.getContextPath()%>/css/ReporteCss/ComparativoPvsP.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1 id="tituloPrincipal"> Comparativo Puesto vs Persona</h1>
        <div  class="lineaDeTitulo">
            <h1>__________________________</h1>
        </div>

        <canvas id="ComparativoPvsP" width="1000" height="500" ></canvas>  
        <script>
            var graficaPvsP = document.getElementById("ComparativoPvsP").getContext("2d");

            var graficaPvsPData = {
                labels: ["Actutud de Servicio", "Capacidad para aprender", "Comunicación Efectiva", "Control de proce", "Enfoque a Resultaados (Adaptabilidad)", "Iniciativa", "Integridad", "Liderazgo - Desarrollo de Personas",
                    "Responsabilidad", "Toma de Decisiones (Estratégicas)", "Trabajo en equipo", "Visión estratégica (Oportunidades de Negocio)"],
                datasets: [{
                        label: "Puesto",
                        backgroundColor: "transparent",
                        borderColor: "blue",
                        data: [80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80]
                    }, {
                        label: "Persona",
                        backgroundColor: "transparent",
                        borderColor: "#ff0000",
                        data: [55.9, 54.7, 58.7, 76.0, 65.7, 7.5, 62.3, 56.8, 61.4, 69.1, 60.8, 67.6]
                    }

                ]
            };

            var radarChart = new Chart(graficaPvsP, {
                type: 'radar',
                data: graficaPvsPData

            });

        </script>
        <div class="tablaDominio"> 
            <table>
                <tr>
                    <td class="cGris" colspan="2"><b> NIVEL DE DOMINIO </b></td>
                </tr>
                <tr>
                    <td class="cRoja">____________<br><br></td>
                    <td><b>Persona</b></td>
                </tr>
                <tr>
                    <td class="cAzul">____________<br><br></td>
                    <td><b>Puesto</b></td>
                </tr>

            </table>
        </div>
        <div class="textoInferior">
            <p>•  Los resultados de la evaluación se encuentran por debajo del nivel esperado para el puesto en las 12
                competencias evaluadas.</p>
        </div>
    </body>

</html>