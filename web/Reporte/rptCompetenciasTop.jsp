<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>

        <link href="<%= request.getContextPath()%>/css/ReporteCss/CompetenciasTop.css" rel="stylesheet" type="text/css"/>
        <!--        // Carpeta de ESTILOS NEVA //-->

    </head>
    <body>
        <h1 id="tituloPrincipal"> Resultados Por Rol</h1>
        <div  class="lineaDeTitulo"> <h1>__________________________</h1> </div>
        <div class="resultado">
            <h3> TOP </h3>
        </div>

        <div class="moderna">
            <div class="contenedorflex"> 
                <div class="tabla">
                    <table>
                        <thead>
                            <tr>
                                <th> COMPETENCIA </th>
                                <th>  LIDER (JEFE) </th>
                                <th> PARES </th>
                                <th> COLABORADORES </th>
                                <th> CLIENTE INTERNO </th>
                                <th> AUTOEVALUACIÓN </th>
                                <th> FINAL (4 ROLES) </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="cPrincipal"><b> Control de procesos </b></td>
                                <td class="cRoja"> 90.0% </td>
                                <td class="cAmarilla"> 66.0%</td>
                                <td class="cAzul"> 92.0% </td>
                                <td class="cAmarilla"> 64.0% </td>
                                <td class="cGris"> N/C </td>
                                <td class="cAmarilla"> 76.0% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Toma de Decisiones (Estratégicas) </b></td>
                                <td class="cAmarilla"> 76.0% </td>
                                <td class="cAmarilla"> 63.0%</td>
                                <td class="cVerde"> 87.0% </td>
                                <td class="cNaranja"> 56.0% </td>
                                <td class="cGris"> N/C </td>
                                <td class="cAmarilla"> 69.1% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal"><b> Visión estratégica (Oportunidades de Negocio) </b></td>
                                <td class="cAmarilla"> 68.0% </td>
                                <td class="cAmarilla"> 64.0%</td>
                                <td class="cVerde"> 88.0% </td>
                                <td class="cNaranja"> 54.0% </td>
                                <td class="cGris"> N/C </td>
                                <td class="cAmarilla"> 67.6.0% </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="textoInferior">
            <p>•  En estas tablas se ve el desglose de las evaluaciones por los 4 roles de evaluación de las competencias Top.</p>
            <p>•  Existe una mínima incongruencia en las evaluaciones entre los diferentes roles.</p>
            <p>•  A pesar de que éstas son las 3 competencias TOP reflejadas en los resultados de la evaluación, en el rol de Cliente <br>
                Interno lo evaluaron en el nivel Ligeramente Competente </p>
            <p>•  En la competencia de Control de Procesos, los Colaboradoes lo sitúan en nivel Sobresaliente.</p>

        </div>
    </body>

</html>