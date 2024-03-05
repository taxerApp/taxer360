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
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            String empresa = request.getParameter("empresa").replaceAll("\\|", " ");
            String razonSocial = request.getParameter("razonSocial").replaceAll("\\|", " ");
            String rfc = request.getParameter("rfc");
            String correo = request.getParameter("correo");
            String status = request.getParameter("status");
        %>
        <script>
           
            $("#cmbStatusEmpresa option[value='<%=status%>']").prop("selected", true);
            habilitaInabilitaEditaEmpreda(true)//des habilita los campos
        </script>
    </head>
    <body>

    <body>
        <input type="text" id="txtIdEmpresaE" value="<%=id%>" hidden="true">

        <div id="dvContEditaEmpresa">
            <%
            if(!status.equals("0")){%>
             <div id="dvCrearNuevaEvaluacion"> <input type="button" value="Crear Evaluacion" class="btnEditaEmpresaModal" onclick="wndCreaEvaluacion(<%=id%>,<%="'"+empresa+"'"%>)"></div>
 
           <% }
            %>
             <div id="overlay">
            <div class="cv-spinner"><label>Espera un momento ...<br></label> 
                <span class="spinner"></span>
            </div>
        </div>
            <table id="tblEditaEmpresa" class="table">
                <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">Nombre Comercial:</label> <br>    
                        <input type="text" id="txtEditaEmpresa" value="<%=empresa%>" class="campoInputTextE">
                    </td>
                </tr>
                <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">RFC:</label> <br>
                        <input type="text" id="txtEditaRfc" value="<%=rfc%>" class="campoInputTextE" oninput="this.value = this.value.toUpperCase()">
                    </td>
                </tr>
                <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">Razón Social:</label> <br>
                        <input type="text" id="txtEditaRazonSocial" value="<%=razonSocial%>" class="campoInputTextE">
                    </td>
                </tr>
                <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">Correo:</label> <br>
                        <input type="text" id="txtEditaCorreo" value="<%=correo%>" class="campoInputTextE">
                    </td>
                </tr>
                <tr class="fila">
                    <td class="celda"> 
                         <label class="etqForm">Estatus:</label> <br>
             
                    <select id="cmbStatusEmpresa" >
                        <option value="1">Activa</option>
                        <option value="0">Inactiva</option>
                    </select>
              
                </td>
                </tr> <br>
                <tr class="fila">
                    <td class="celda" colspan="2">
                           <input type="button" value="Editar" id="btnHabilitaEdiEmpresa" class="btnEditaEmpresaModal">
                           <input type="button" value="Guardar" id="btnEditaEmpresa" class="btnEditaEmpresaModal">
                        <input type="button" value="Cerrar" id="btnCancelarEmpresa" class="btnEditaEmpresaModal" onclick="cancelarEditaEmpresa()">
                        
                     
                    </td>
<!--                    <td class="celda">
                      
                    </td>-->
               
                </tr>
            </table>
        </div>   
    </body>

</html>
