<%-- 
    Document   : frmCargarCuestionarios
    Created on : 6/03/2024, 07:19:52 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%= request.getContextPath() %>/css/VerEvaluaciones.css" rel="stylesheet" type="text/css"/>
        <% int idEmpresa= Integer.parseInt(request.getParameter("idEmpresa")); %>
        <script>
            consultaInicialVerEvaluaciones(<%=idEmpresa%>);
        </script>
    </head>
    <body>
        <br><br>
        <table id="tblEvaluacionContent" class="table" >
        <thead>
            <tr>
                <th hidden="true">ID</th>
                 <th>PERIODO</th>
                 <th>FECHA DE INICIO</th>
                 <th>FECHA DE TÉRMINO</th>
                 <th>CUESTIONARIOS</th>
            </tr>
        </thead>
        <tbody id="tblEvaluacion">
            
        </tbody>
    </table>
    </body>
</html>
