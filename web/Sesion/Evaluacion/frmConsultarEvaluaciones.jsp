<%-- 
    Document   : frmConsultarEvaluaciones
    Created on : 19/02/2024, 11:47:12 AM
    Author     : David
--%>

<%@page import="Dto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%Usuario usu = (Usuario) session.getAttribute("usuario");%>
    <link href="<%= request.getContextPath()%>/css/ConsultarEmpresa.css" rel="stylesheet" type="text/css"/>
   <script>
   
          consultaInicialEvaluaciones();
           
    </script>
    <body>
         <input type="text" id="txtBnd"  value="2" hidden="true">
        <input type="text" id="txtIdEmpresa"  value="3" hidden="true">
        <!--<input type="text" id="txtTipoUsuario" hidden="true" value="%= usu.getIdTipoUsuario()%>" >-->
       
        <div style="margin-top: 8%;"></div>
        <table id="tblEmpresaContent" class="table">
        <thead>
            <tr  >
                <th hidden="true">ID</th>
                <th >EMPRESA</th>
                 <th>RFC</th>
                 <th>RAZÓN SOCIAL</th>
                 <th>CORREO</th>
                
                   <th>STATUS</th>
                   <th>EVALUACIÓNES</th>
               
            </tr>
        </thead>
        <tbody id="tblEmpresa">
            
        </tbody>
    </table>
    </body>
</html>
