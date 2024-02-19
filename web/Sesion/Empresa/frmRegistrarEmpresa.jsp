<%-- 
    Document   : frmRegistrarEmpresa
    Created on : 19/02/2024, 11:44:47 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
          <link href="<%= request.getContextPath()%>/css/RegistrarEmpresa.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
      
        <div id="dvContRegistraEmp">
            <table>
                <tr>
                    <td>
                       <label>Nombre Empresa:</label> 
                    </td>
                    <td><input type="text" id="txtDNIEmpresa"></td>
                </tr>
                
                 <tr>
                    <td>
                       <label>DNI Empresa:</label> 
                    </td>
                    <td><input type="text" id="txtDNIEmpresa"></td>
                </tr>
            </table>
           
            
        </div>   
      
    </body>
</html>
