<%-- 
    Document   : wndPonderacion
    Created on : 1/03/2024, 04:52:47 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%=request.getContextPath()%>/css/Ponderacion.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
                <div style="width: 100%; background:  #e5e5e5  ; color: var(--amarilloBackground); font-family: 'Antonio-Bold'; " ><label>Registrar Ponderaciones:</label></div>

                <table class="table" id="tblPonderacion">
        
        </table>
              
               
                <div id="dvBotonGuardaPonderacion"  class="dvBtnRegistrarPonderacion">
                    <label class="etqForm"> % Total</label>
                    <input type="text" id="txtTotalPonderacion" value="0" class="campoInputTotal" disabled=""><br>
            <input type="button" value="Guardar" id="btnRegistraPonderacion" class="btnRegistraPonderacion"  onclick="guardarPonderacion()"></div>
      
    </body>
</html>
