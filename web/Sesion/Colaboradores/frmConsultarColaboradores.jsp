<%-- 
    Document   : frmConsultarColaboradores
    Created on : 19/02/2024, 11:46:01 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link href="<%= request.getContextPath() %>/css/ConsultarColaboradores.css" rel="stylesheet" type="text/css"/>
  
    
    <script>
        consultaInicialColaboradores();
        
    </script>
    <body>
        <input type="text" id="txtIdEmpresaColaborador" value="1" hidden="">
        <table id="tblColaboradoresContent" class="table">
        <thead>
            <tr>
                <th hidden="true">ID</th>
                <th >NOMBRE</th>
                 <th>PUESTO</th>
                 <th>EMPRESA</th>
               
               
            </tr>
        </thead>
        <tbody id="tblColaboradores">
            
        </tbody>
    </table>
    </body>
</html>
