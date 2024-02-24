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
            <table id="tblFromREmpresa">
                <tr>
                    <td>
                        <label class="etqForm">Nombre Comercial:</label> <br>    
                        <input type="text" id="txtNombreEmpresa" class="campoInputText">
                    </td>

                </tr>
                <tr>
                    <td>
                        <label class="etqForm">RFC:</label> <br>
                        <input type="text" id="txtRfc"  class="campoInputText">
                    </td>

                </tr>
                <tr>
                    <td>
                        <label class="etqForm">Razón Social:</label> <br>
                        <input type="text" id="txtRazonSocial"  class="campoInputText">
                    </td>

                </tr>
                <tr>
                    <td colspan="2">
                <center>  <input type="button" class="btnForm" value="Registrar" id="btnRegistrarEmpresa"></center>
                </td>
                </tr>
            </table>


        </div>   

    </body>
</html>
