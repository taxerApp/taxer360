<%-- 
    Document   : wndCrearEvaluacion
    Created on : 1/03/2024, 12:18:25 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%= request.getContextPath()%>/css/CrearEvaluacion.css" rel="stylesheet" type="text/css"/>
    </head>
   
      <%
            int id = Integer.parseInt(request.getParameter("id"));
            String empresa = request.getParameter("empresa").replaceAll("\\|", " ");
          
        %>
        
        <script>
            $("#fInicioEvaluacion").datepicker({
                 dateFormat: 'yy-mm-dd' ,
                    theme: 'dark',
                    datepicker: true,
                  
                     minDate: new Date() 
                });
                $("#fTerminoEvaluacion").datepicker({
                     dateFormat: 'yy-mm-dd' ,
                    theme: 'dark',
                     datepicker: true,
                  
                  minDate:new Date()
                });   
                
                $("#dvRCompetencias").hide();
                $("#dvPonderacion").hide();
        </script>
    <body>
        <input typetype="text" id="txtIdEmpresaCEvaluacion" value="<%=id%>" hidden="">
         <div class="dvContEvaluacion">
         <table id="tblEditaEmpresa" class="table">
             <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">Periodo:</label> <br>    
                        <input type="text" id="txtPeriodo"  class="campoInputTextE">
                    </td>
                </tr>
                <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">Fecha de Inicio:</label> <br>    
                        <input type="text" id="fInicioEvaluacion"  class="campoInputTextE">
                    </td>
                </tr>
                
                <tr class="fila">
                    <td class="celda">
                        <label class="etqForm">Fecha de término:</label> <br>    
                        <input type="text" id="fTerminoEvaluacion"  class="campoInputTextE">
                    </td>
                </tr>
                
                
               
                <tr class="fila">
                    <td class="celda" colspan="2">
                       
                        <input type="button" value="Crear Evaluación" id="btnCrearEvaluacion" class="btnCreaEvaluacion" >
                        
                     
                    </td>
<!--                    <td class="celda">
                      
                    </td>-->
               
                </tr>
            </table>
    </div>
        
        <div id="dvRCompetencias" class="dvContEvaluacion">
            <!--%@include file="../../Sesion/Empresa/wndRegistrarCompetencia.jsp?idEmpresa="=id %>-->
             </div>
        
         <div id="dvPonderacion" class="dvContEvaluacion" >
             <%--<%@include file="../../Sesion/Empresa/wndPonderacion.jsp?idEmpresa="=id %>--%>
        </div>
    </body>
</html>
