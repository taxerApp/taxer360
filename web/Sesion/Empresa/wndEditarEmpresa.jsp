<%-- 
    Document   : wndEditarEmpresa
    Created on : 26/02/2024, 11:22:36 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<!--        <div id="wndEditaEmpresa" class="ventana" title="Editar Empresa" style="background: white;"></div>-->


        <link href="<%= request.getContextPath()%>/css/EditaEmpresa.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3> Editar </h3>
        <div id="dvContEditaEmpresa">
            <table id="tblEditaEmpresa">
                               

<div>
<button id="boton" onclick="cambiarEstado()">Activa</button>
</div>
<script>
function cambiarEstado() {
    var boton = document.getElementById('boton');
    if (boton.textContent === 'Activa') {
        boton.textContent = 'Inactiva';
        boton.style.backgroundColor = 'red';
    } else {
        boton.textContent = 'Activa';
        boton.style.backgroundColor = 'green';
    }
}
</script>

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
                <td class="botonSupeior">
                <center><input type="button" class="btnForm1" value="Guardar" id="btnGuardarCambios"></center>
                <!--         id=registraEmpresa-->      
                </td>
                </tr>
                <tr>
                <td class="botonSupeior">
                <input type="button" class="btnForm2" value="Cancelar" id="btnCancelar"> 
<!--                id=CtrlEmpresa-->
                </td>
                </tr>
            </table>


        </div>   
               
    </body>
    
</html>
