<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>

        <link href="<%= request.getContextPath()%>/css/ReporteCss/NivDominioE.css" rel="stylesheet" type="text/css"/>

        <!--        // Carpeta de ESTILOS NEVA //-->

    </head>
    <body>
        <h1 id="tituloPrincipal"> Niveles de Dominio Evaluados </h1>

        <div class="moderna">   <!--// centra todo //-->
            <table class="tabla">
                <thead>
                    <tr>
                        <th>NIVEL DE DOMINIO</th>
                        <th>DEFINICIÓN</th>
                        <th>RANGO DE CALIFICACIÓN</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="cRoja">Carece de la competencia</td>
                        <td class="cSecundaria">En el momento de la evaluación, la persona no mostró contar con el conocimiento, la habilidad, ni la actitud requerida para el nivel de puesto en el que se le evaluó. Se recomienda trabajar en el desarrollo de la persona para la/las competencia/s.</td>
                        <td class="cFinal"> < o igual 40%</td>
                    </tr>
                    <tr>
                        <td class="cNaranja">Ligeramente competente</td>
                        <td class="cSecundaria">El nivel que la persona demuestra en el conocimiento, habilidad y actitud para la/las competencia/s, es escasa, por lo que requiere reforzar o mejorar en su desarrollo de las conductas esperadas.</td>
                        <td class="cFinal">40.01% a 60%</td>
                    </tr>
                    <tr>
                        <td class="cAmarilla">Medianamente competente</td>
                        <td class="cSecundaria">En ocasiones la persona evaluada demuestra capacidad para llevar a cabo las conductas esperadas de la/las competencia/s, implementando acciones sencillas y esporádicas, de acuerdo a los esperado para su puesto.</td>
                        <td class="cFinal">60.01% a 80%</td>
                    </tr>
                    <tr>
                        <td class="cVerde">Competente</td>
                        <td class="cSecundaria">La persona posee un grado de entendimiento y aplicación de las conductas esperadas en la/las competencia/s de manera adecuada para sus responsabilidades y demuestra habilidad para llevar a cabo acciones al nivel de lo esperado para el puesto.</td>
                        <td class="cFinal">80.01% a 90%</td>
                    </tr>
                    <tr>
                        <td class="cAzul">Sobresaliente</td>
                        <td class="cSecundaria">La persona ha logrado adoptar y ser un ejemplo a seguir de las conductas esperadas en la/las competencia/s, demostrando una alta capacidad de llevar a cabo acciones que corresponden a su puesto y está en disposición de sobresalir desde su posición.</td>
                        <td class="cFinal">90.01% a 100%</td>
                    </tr>
                </tbody>
            </table>
        </div>
</html>
