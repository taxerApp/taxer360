<%-- 
    Document   : frmCargarCuestionarios
    Created on : 7/03/2024, 11:38:42 AM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<%= request.getContextPath() %>/css/CargarCuestionarios.css" rel="stylesheet" type="text/css"/>
       
        <%
        int idEvaluacion = Integer.parseInt(request.getParameter("idEvaluacion"));
//        int idEvaluacion = 40;
        %>
        <script>
          accordeonInit(<%=idEvaluacion%>);

        </script>
    </head>
    <body>
        <br>
        <div class="faq" id="dvAcordeon">  <!--se queda aqui-->
<!--            <div class="title-tab"><i class="fa fa-1x"></i>Nivel de Competencia 1</div>
            <div class="content-tab" id="dvAcordeon">
                <div>
                    <table class="tblCargarCuestionario">
                        <tr>
                            <th> <label class="lblTituloTablaCuestionario">Competencia</label></th>   <th> <label class="lblTituloTablaCuestionario">Cargar/ Visualizar</label></th> <th> <label class="lblTituloTablaCuestionario">Estatus</label></th>
                        </tr>
                        <tr>
                            <td>
                                 <label class="lblStatusCuestionario">
                                Competencia 1
                                 </label>
                            </td>
                            <td>
                        <center>
                                <i class="fa fa-eye" style="color: var(--amarilloBackground);"></i>   
                        </center>    
                        </td>
                            <td>
                            <center>
                                <label class="lblStatusCuestionario">
                                   <i class="fa-solid fa-circle-check"></i>
                                </label>
                                </center>
                            </td>
                        </tr>
                        
                         
                        <tr>
                             <td>
                                 <label class="lblStatusCuestionario">
                                Competencia 2
                                 </label>
                            </td>
                            <td>
                        <center>
                            <i class="fa fa-upload" aria-hidden="true" style="color: var(--amarilloBackground);"></i>  
                        </center>    
                        </td>
                            <td>
                            <center>
                                <label class="lblStatusCuestionario">
                                    <i class="fa-solid fa-circle-xmark"></i><br>
                               
                                </label>
                                </center>
                            </td>
                        </tr>
                    </table>
                   
                   </div>
                
               
            </div>
            <div class="title-tab"><i class="fa fa-1x"></i>Nivel de Competencia 2</div>
            <div class="content-tab">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque corrupti aspernatur necessitatibus veniam, animi dolor!</div>
            <div class="title-tab"><i class="fa fa-1x"></i>Nivel de Competencia 3</div>
            <div class="content-tab">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est praesentium ipsa enim, culpa facilis sunt!</div>
            <div class="title-tab"><i class="fa fa-1x"></i>Nivel de Competencia 4</div>
            <div class="content-tab">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto aspernatur, explicabo dolores, beatae tenetur sunt.</div>
        -->
        </div>

    </body>
</html>
