<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>

        <link href="<%= request.getContextPath()%>/css/ReporteCss/ResultadosPorRol.css" rel="stylesheet" type="text/css"/>

        <!--        // Carpeta de ESTILOS NEVA //-->
    </head>
    <body>
        <h1 id="tituloPrincipal"> Resultados Por Rol</h1>
        <div  class="lineaDeTitulo"><h1>__________________________</h1>  </div>
        <div class="resultado">
            <h3>Resultado general de </h3>
        </div>

        <div class="cuadro">
            <label class="txPuntuacionGlobal"><b>PUNTUACIÓN GLOBAL (3roles) <br> 
                    <label>61.2%</label></b>
            </label> <br>


        </div>

        <div class="lider">

            <center><p style="margin-top:15%; font-size: 1rem; text-align: center;"><b>Líder (Jefe) </b></p>
                <p style=" margin-top:40%; font-size: 1rem;"><b> 59.7% </b></p><br></center>

        </div>
        <div class="pares">

            <p style=" margin-top:15%; font-size: 1rem; text-align: center;"><b> Pares </b></p><br>
            <p style=" margin-top:15%; font-size: 1rem; text-align: center;"><b> 57.4% </b></p><br>

        </div>
        <div class="colaborador">

            <p style=" margin-top:15%; font-size: 1rem; text-align: center;"><b> Colaborador </b></p><br>
            <p style=" margin-top:15%; font-size: 1rem; text-align: center;"><b> 81.6% </b></p><br>

        </div>
        <div class="cliente">

            <p style=" margin-top:10%; font-size: 1rem; text-align: center;"><b> Cliente <br>Interno </b></p><br>
            <p style=" margin-top:15%; font-size: 1rem; text-align: center;"><b> 48.7%  </b></p><br>

        </div>

        <div style="position:absolute; margin-top:35%; left: 14%; font-size: 1rem;"> <!--// se puede cambiar el margin top a 50% y cuando el cuadro se haga chico se puede ver mejor //-->
            <p style="color: graytext;">•   En el promedio general _____ se encuentra en un Nivel: Medianamente Compatible, que quiere decir: En ocasiones la persona <br>
                evaluada demuestra capacidad para llevar a cabo las conductas esperadas de la/las competencia/s, implementando acciones sencillas <br>
                y esporádicas, de acuerdo a los esperado para su puesto.</p>
            <p style="color: graytext;">•   El rol que la evaluó mejor fue el de sus Colaboradores, y el que la evaluó con resultados más bajos fue el de Cliente Interno.</p>
        </div>
    </body>
</html>
