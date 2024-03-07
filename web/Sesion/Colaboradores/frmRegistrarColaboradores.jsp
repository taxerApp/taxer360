<%-- 
    Document   : frmRegistrarColaboradores
    Created on : 5/03/2024, 02:18:50 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <%
            int id = Integer.parseInt(request.getParameter("id"));
        
          
        %>
    <body>
        <!--<h1>Registrar Colaboradores <%=id%></h1>-->
        <%@include file="../../Generales/SubirExcel.jsp" %>
    </body>
</html>
