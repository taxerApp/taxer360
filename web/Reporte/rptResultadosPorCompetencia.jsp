<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>                
        <!--        // Carpeta de ESTILOS NEVA //-->
        <link href="<%= request.getContextPath()%>/css/ReporteCss/ResultadosPorCompetencia.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <h1 id="tituloPrincipal"> Resultados Por Competencia</h1>
        <div  class="lineaDeTitulo"> <h1>__________________________</h1> </div>
        <div class="moderna">
            <div class="contenedor"> 
                <div class="tabla">
                    <table>
                        <thead>
                            <tr>
                                <th> COMPETENCIA </th>
                                <th>  FINAL </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="cPrincipal";><b> Actitud de servicio </b></td>
                                <td class="cNaranja";> 55.9%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Capacidad para aprender </b></td>
                                <td class="cNaranja";>  54.7%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";> <b> Comunicación Efectiva </b></td>
                                <td class="cNaranja";>  58.0%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Control de procesos </b></td>
                                <td class="cAmarilla";> 76.0% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b>Enfoque a Resultados (Flexibilidad y Adaptabilidad)</b> </td>
                                <td class="cAmarilla";>  65.7% </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Iniciativa </b></td>
                                <td class="cAmarilla";>  71.5%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Integridad </b></td>
                                <td class="cAmarilla";>  62.3%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Liderazgo - Desarrollo de Personas </b> </td>
                                <td class="cAmarilla";>  56.8%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Responsabilidad </b></td>
                                <td class="cAmarilla";> 61.4%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b>Toma de Decisiones (Estratégicas) </b></td>
                                <td class="cAmarilla";>  69.1%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Trabajo en equipo </b></td>
                                <td class="cAmarilla";>  60.8%  </td>
                            </tr>
                            <tr>
                                <td class="cPrincipal";><b> Visión estratégica (Oportunidades de Negocio) </b></td>
                                <td class="cAmarilla";>  67.6%  </td>
                            </tr>
                            <tr>
                                <td class="cRosa";><b> Resultados finales </b></td>
                                <td class="cAmarilla";>  61.2%  </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div  class="textoInferior">
            <p><em>• En cuatro de las 12 las competencias evaluadas, se encuentra
                    en niveles 1: Ligeramente Competente. <br> <br>

                    • En las otras ocho competencias se encuentra en un nivel 2: Medianamente Competente.</em></p>
        </div>

    </body>
</html>