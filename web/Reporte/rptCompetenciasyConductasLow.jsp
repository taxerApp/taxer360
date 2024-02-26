<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>

        <link href="<%= request.getContextPath()%>/css/ReporteCss/CompetenciasyConductasLow.css" rel="stylesheet" type="text/css"/>
        <!--        // Carpeta de ESTILOS NEVA //-->

    </head>
    <body>
        <h1 id="tituloPrincipal"> Resultados Por Rol</h1>
        <div  class="lineaDeTitulo"> <h1>__________________________</h1> </div>

        <div class="resultado">
            <h3>Las Competencias & Comportamientos LOW son los que obtuvieron <br> <br>
                resultados más BAJOS a nivel general de la evaluación.</h3>
        </div>

        <div class="rectangulo">
            <p><b> Competencias LOW  </b> </p>

        </div>
        <div class="cuadro"> 
            <p><b> - Trabajo en equipo <br> <br>
                    -Toma de Decisiones (Estratégicas) <br> <br>
                    -Actitud de servicio </b> </p>

        </div>
        <div class="moderna">
            <div class="contenedorflex"> 
                <div class="tabla">
                    <table>
                        <thead>
                            <tr>
                                <th> Conducta Observable con Calificaciones LOW </th>
                                <th>  Competencia </th>
                                <th> Calificación </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="cPrincipal"><b> Demuestra sincera preocupación por tener relaciones <br>
                                        positivas, basadas en la cantidad y calidad de <br>
                                        interacciones con los demás. </b></td>
                                <td class="cGris"> Trabajo en equipo </td>
                                <td>  38.80% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Busca proactivamente el consejo de otros. </b></td>
                                <td class="cGris"> Toma de Decisiones <br> (Estratégicas)  </td>
                                <td>  38.20% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b>Respeta los puntos de vista opuestos y alienta a <br> otros a hacer lo mismo. </b></td>
                                <td class="cGris">Actitud de servicio </td>
                                <td>  38.20% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Es abierto y entusiasta para conectarse con los <br>
                                        empleados, brinda especial atención en aquellos de <br>
                                        menor nivel organizacional al suyo. </b></td>
                                <td class="cGris"> Trabajo en equipo </td>
                                <td> 36.80% </td>    
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Busca proactivamente las opiniones de los demás. </b></td>
                                <td class="cGris"> Actitud de servicio </td>
                                <td> 36.80%  </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </body>

</html>