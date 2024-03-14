<%-- 
    Document   : CuestionarioDinamico
    Created on : 11/03/2024, 07:44:40 PM
    Author     : Jimmy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="<%= request.getContextPath()%>/css/ReporteCss/CuestinarioDinamico.css" rel="stylesheet" type="text/css"/>
        <script>
   
          recuperarCuestionario();
           
    </script>
   
</head>
<body>
    <div id="dvCuestionario"></div>
        
     
</body>
</html>
