<%-- 
    Document   : frmConsultarEmpresa
    Created on : 19/02/2024, 11:45:15 AM
    Author     : David
--%>

<%@page import="Dto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--<script src="%= // request.getContextPath()%>/ControllerJs/EmpresaControllerJs.js" type="text/javascript"></script>-->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%Usuario usu = (Usuario) session.getAttribute("usuario");%>
    </head>
    <%
//    int bnd=Integer.parseInt(request.getParameter("bnd"));
//    int idEmpresa=Integer.parseInt(request.getParameter("idEmpresa"));
    %>
       <link href="<%= request.getContextPath()%>/css/ConsultarEmpresa.css" rel="stylesheet" type="text/css"/>
   
       <!--<script src="%= request.getContextPath()%>/ControllerJs/EmpresaControllerJs.js" type="text/javascript"></script>-->
       <script>
   
          consultaInicialEmpresa();
           
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
                   <th>EDITAR</th>
               
            </tr>
        </thead>
        <tbody id="tblEmpresa">
            
        </tbody>
    </table>
    </body>
</html>
