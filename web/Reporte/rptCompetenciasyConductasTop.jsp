<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>

        <link href="<%= request.getContextPath()%>/css/ReporteCss/CompetenciasyConductasTop.css" rel="stylesheet" type="text/css"/>

        <!--        // Carpeta de ESTILOS NEVA //-->

    </head>
    <body>
        <h1 id="tituloPrincipal"> Competencias & Conductas Top</h1>
        <div  class="lineaDeTitulo"> <h1>__________________________</h1> </div>
        <div class="resultado">
            <h3>Las Competencias & Comportamientos TOP son los que obtuvieron <br>
                resultados más ALTOS a nivel general de la evaluación.</h3>
        </div>

        <div class="cuadro">
            <p><b>- Toma de Decisiones(Estratégicas) <br> <br>
                    - Control de procesos <br> <br>
                    -Visión estratégica (Oportunidades de Negocio) </b> </p>

        </div>

        <div class="rectangulo">
            <p><b>Competencias <br> TOP </b> </p>

        </div>
        <div class="moderna">
            <div class="contenedorflex"> 
                <div class="tabla">
                    <table>
                        <thead>
                            <tr>
                                <th> Conducta Observable con Calificaciones TOP </th>
                                <th>  Competencia </th>
                                <th> Calificación </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="cPrincipal"><b> Demuestra una gran habilidad analítica. </b></td>
                                <td class="cGris"> Toma de Decisiones <br>(Estratégicas)  </td>
                                <td>  62.60%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Tiene una excelente capacidad para resolver problemas. </b></td>
                                <td class="cGris"> Toma de Decisiones <br>(Estratégicas)  </td>
                                <td>  62.60% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Desarrolla e implementa mejores prácticas. </b></td>
                                <td class="cGris">Control de procesos </td>
                                <td>  61.60% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Muestra un conocimiento sobresaliente de como funciona nuestro negocio. </b></td>
                                <td class="cGris"> Visión estratégica <br>(Oportunidades de Negocio) </td>
                                <td> 60.60%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Evalúa situaciones complejas y toma una decisión rápida. </b></td>
                                <td class="cGris"> Toma de Decisiones <br>(Estratégicas) </td>
                                <td> 59.40%  </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </body>

</html>