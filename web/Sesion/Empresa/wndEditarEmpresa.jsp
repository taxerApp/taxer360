<%-- 
    Document   : wndEditarEmpresa
    Created on : 26/02/2024, 11:22:36 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
int idEmpresa=Integer.parseInt(request.getParameter("id"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=idEmpresa%></h1>
    </body>
</html>
