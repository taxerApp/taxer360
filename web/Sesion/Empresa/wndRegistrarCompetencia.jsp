<%-- 
    Document   : wndRegistrarCompetencia
    Created on : 1/03/2024, 05:33:47 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%= request.getContextPath() %>/css/Competencia.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div style="width: 100%; background:  #e5e5e5  ; color: var(--amarilloBackground); font-family: 'Antonio-Bold'; " ><label>Registrar Competencias</label></div>
    <table id="tblCompetencia" class="table">
        <%
        for(int i=1;i<=7;i++){%>
              <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia <%=i%>:</label> <br> 
                      <input type="text" id="txtCompetencia<%=i%>"  class="campoInputTextCompetencia">  
                   </td>
               </tr>
        <%}%>
        
             
               
<!--                <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia 2:</label> <br> 
                      <input type="text" id="txtCompetencia2"  class="campoInputTextCompetencia">  
                   </td>
               </tr>
               
                <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia 3:</label> <br> 
                      <input type="text" id="txtCompetencia3"  class="campoInputTextCompetencia">  
                   </td>
               </tr>
               
                <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia 4:</label> <br> 
                      <input type="text" id="txtCompetencia4"  class="campoInputTextCompetencia">  
                   </td>
               </tr>
               
               <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia 5:</label> <br> 
                      <input type="text" id="txtCompetencia5"  class="campoInputTextCompetencia">  
                   </td>
               </tr> 
               
               <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia 6:</label> <br> 
                      <input type="text" id="txtCompetencia6"  class="campoInputTextCompetencia">  
                   </td>
               </tr>
                <tr class="fila">
                   <td class="celda">
                      <label class="etqForm">Competencia 7:</label> <br> 
                      <input type="text" id="txtCompetencia7"  class="campoInputTextCompetencia">  
                   </td>
               </tr>
              -->
           </table>
            <div id="dvBotones-Competencia" class="dvBtnAgregarQuitarCompetencia">
            <input type="button" value="Guardar" id="btnGuardarCompetencias" class="btnCreaEvaluacion"  onclick="guardarCompetencia()"></div>
      
    </body>
</html>
