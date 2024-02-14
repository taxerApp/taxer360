<%-- 
    Document   : Sesion
    Created on : 13/02/2024, 07:09:42 PM
    Author     : Jimmy
--%>

<%@page import="Dto.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
      <%
             
            Usuario usu = (Usuario) (session.getAttribute("usuario")== null? new Usuario():session.getAttribute("usuario"));
         
            if (usu.getNombreDeUsuario()== null || usu.getNombreDeUsuario().trim().equals("") || usu.getNombreDeUsuario().equalsIgnoreCase("null")) {
                System.out.println("Err");%>
                
                   <script>

            window.location = "Login.jsp";

        </script>

        <%} else {%>
   
    <body>
        <h1>Bienvenido @: <%=usu.getNombreDeUsuario()%></h1>
    </body>
    <%}%>

</html>
