<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>
        <!--        // Carpeta de ESTILOS NEVA //-->
        <link href="<%= request.getContextPath()%>/css/ReporteCss/ConseptosPregunta.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1 id="tituloPrincipal"> Resultados Por Rol</h1>
        <div  class="lineaDeTitulo"> <h1>__________________________</h1> </div>
        <div class="contenedor">
            <div class="cuadrado">Fortalezas como líder</div>
            <div class="cuadrado">Sugerencias para mejorar</div>
            <div class="cuadrado"><br> <br> - Conociminentos del negocio y de su área de trabajo <br> <br>
                - Innovación <br> <br>
                - Integridad
                <p>Los atributos y fortalezas que sobresalen positivamente en él como líder son:</p>
            </div>
            <div class="cuadrado"><br> <br> - Comunicación y escucha asertiva <br> <br>
                - Empatía <br> <br>
                - Trabajo en equipo 
                <p><br>¿Qué le sugerirías para mejorar las habilidades evaluadas?</p>
            </div>
        </div>
    </body>

</html>