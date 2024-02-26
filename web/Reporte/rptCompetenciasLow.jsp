<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>

        <link href="<%=request.getContextPath()%>/css/ReporteCss/CompetenciasLow.css" rel="stylesheet" type="text/css"/>
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
                        <tr>
                            <td class="cPrincipal"><b> Actitud de servicio </b></td>
                            <td class="cNaranja"> 48.0% </td>
                            <td class="cNaranja"> 58.0%</td>
                            <td class="cAmarilla"> 79.0% </td>
                            <td class="cRoja"> 40.0% </td>
                            <td class="cGris"> N/C </td>
                            <td class="cNaranja"> 55.9% </td>
                        </tr>
                        <tr>
                            <td class="cPrincipal"><b> Toma de Decisiones <br> (Estratégicas)</b></td>
                            <td class="cAmarilla"> 76.0% </td>
                            <td class="cAmarilla"> 63.0%</td>
                            <td class="cVerde"> 87.0% </td>
                            <td class="cNaranja"> 56.0% </td>
                            <td class="cGris"> N/C </td>
                            <td class="cAmarilla"> 69.1% </td>
                        </tr>
                        <tr>
                            <td class="cPrincipal"><b> Trabajo en equipo </b></td>
                            <td class="cNaranja"> 57.0% </td>
                            <td class="cNaranja"> 58.0%</td>
                            <td class="cVerde"> 82.0% </td>
                            <td class="cNaranja"> 48.0% </td>
                            <td class="cGris"> N/C </td>
                            <td class="cAmarilla"> 60.8% </td>
                        </tr>
                        <div class="textoInferior">
                            <p>•  En esta tabla se ve el desglose de las evaluaciones por los 4 roles de evaluación de las competencias Low.</p>
                            <p>•  Existe una mínima incongruencia en las evaluaciones de todos los roles en comparación con la evaluación de los <br>
                                colaboradores, sobre estas tres competencias.</p>
                            <p>•  El rol que evalúo más bajo a Manuel fue el rol de Cliente Interno, siendo los más bajos en los resultados de la evaluación </p>     
                        </div>
                    </table>
                </div>
            </div>
        </div>


    </body>

</html>