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
        <title>Evaluación 360</title>
        <script defer src="<%= request.getContextPath()%>/libs/jquery/jquery.flexslider-min.js"></script>
        
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-3.7.1.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
        <!--<script src="<%= request.getContextPath()%>/ControllerJs/PrincipalControllerJs.js" type="text/javascript"></script>-->
        
        <!--<link href="%= request.getContextPath()%>/css/flexslider.css" rel="stylesheet" type="text/css"/>-->
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-ui.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/jquery/jquery-ui.css" rel="stylesheet" type="text/css"/>
        
        <link href="<%= request.getContextPath()%>/libs/jquery/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery.dataTables.min.js" type="text/javascript"></script>
        <link href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/js/bootstrap.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/img/fontawesome-free-6.4.2-web/fontawesome-free-6.4.2-web/css/all.min.css" rel="stylesheet" type="text/css"/>
      
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/alertifyjs/alertify.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/alertifyjs/css/alertify.css" rel="stylesheet" type="text/css"/>
         <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/alertifyjs/alertify.min.js" type="text/javascript"></script>

        <script src="<%= request.getContextPath()%>/ControllerJs/LoginControllerJs.js" type="text/javascript"></script>   
        <!--<script src="<%= request.getContextPath()%>/ControllerJs/Utils.js" type="text/javascript"></script>-->
        <script src="<%= request.getContextPath()%>/Js/ManejadorVentanas.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/css/loading.css" rel="stylesheet" type="text/css"/>

        <!--estilos de contenedor de sesion-->
        <link href="<%= request.getContextPath()%>/css/Sesion.css" rel="stylesheet" type="text/css"/>

        <!--fin estilos de contenedor de sesion-->
        <!--para menu-->
        <script src="<%= request.getContextPath()%>/Js/Menu.js" type="text/javascript"></script>
        <!--fin bloque para menu-->

        <!--Para graficas-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.min.js" integrity="sha512-L0Shl7nXXzIlBSUUPpxrokqq4ojqgZFQczTYlGjzONGTDAcLremjwaWv5A+EDLnxhQzY5xUZPWLOLqYRkY0Cbw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.js" integrity="sha512-7DgGWBKHddtgZ9Cgu8aGfJXvgcVv4SWSESomRtghob4k4orCBUTSRQ4s5SaC2Rz+OptMqNk0aHHsaUBk6fzIXw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.js" integrity="sha512-ZwR1/gSZM3ai6vCdI+LVF1zSq/5HznD3ZSTk7kajkaj4D292NLuduDCO1c/NT8Id+jE58KYLKT7hXnbtryGmMg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/chart.umd.min.js" integrity="sha512-CQBWl4fJHWbryGE+Pc7UAxWMUMNMWzWxF4SQo9CgkJIN1kx6djDQZjh3Y8SZ1d+6I+1zze6Z7kHXO7q3UyZAWw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/helpers.js" integrity="sha512-08S2icXl5dFWPl8stSVyzg3W14tTISlNtJekjsQplv326QtsmbEVqL4TFBrRXTdEj8QI5izJFoVaf5KgNDDOMA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.1/helpers.min.js" integrity="sha512-JG3S/EICkp8Lx9YhtIpzAVJ55WGnxT3T6bfiXYbjPRUoN9yu+ZM+wVLDsI/L2BWRiKjw/67d+/APw/CDn+Lm0Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
         <!--fin graficas-->
        <script src="<%= request.getContextPath()%>/ControllerJs/PruebaControllerJS.js" type="text/javascript"></script>

        <!--GENERICOS-->
        <link href="<%= request.getContextPath()%>/css/Fuentes.css" rel="stylesheet" type="text/css"/> <!--fuentes agregadas-->
        <link href="<%= request.getContextPath()%>/css/ComponentesGenericos.css" rel="stylesheet" type="text/css"/> <!--estilos para componentes que se usan mas de una vez-->
        <link href="<%= request.getContextPath()%>/css/GamaColores.css" rel="stylesheet" type="text/css"/> <!--Gama de colores -->
       <!--FIN GENERICOS-->
       
       <!--HOME-->
       <script src="<%= request.getContextPath()%>/ControllerJs/HomeControllerJS.js" type="text/javascript"></script>
       <!--FIN HOME-->
       
       
       <!--EMPRESA-->
       <script src="<%= request.getContextPath()%>/ControllerJs/EmpresaControllerJs.js" type="text/javascript"></script>
       <!--FIN EMPRESA-->
       
       <!--Evaluacion-->
       <script src="<%= request.getContextPath()%>/ControllerJs/CrearEvaluacionControllerJs.js" type="text/javascript"></script>
       <!--fin evaluacion-->
       
       <!--competencia-->
       <script src="<%= request.getContextPath()%>/ControllerJs/CrearCompetenciaControllerJs.js" type="text/javascript"></script>
       <!--fin competencia-->
       
       <!--ponderacion-->
       <script src="<%= request.getContextPath()%>/ControllerJs/RegistraPonderacion.js" type="text/javascript"></script>
       <!--fin ponderacion-->
       
       <!--para colaboradores-->
       <script src="<%= request.getContextPath()%>/ControllerJs/ColaboradoresControllerJs.js" type="text/javascript"></script>
       <!--fin colaboradores-->
       
       <!--cuestionarios-->
       <script src="<%= request.getContextPath()  %>/ControllerJs/CuestionariosController.js" type="text/javascript"></script>
       <script src="<%= request.getContextPath()  %>/ControllerJs/CuestionarioDinamicoControllerJS.js" type="text/javascript"></script>
       <!--fin cuestionarios-->
       
       <!--arbolNavegacion-->
       <script src="<%= request.getContextPath()  %>/ControllerJs/ArbolNavegacionControllerJS.js" type="text/javascript"></script>
       <!--fin arbol navegacion-->
    </head>
    <%

        Usuario usu = (Usuario) (session.getAttribute("usuario") == null ? new Usuario() : session.getAttribute("usuario"));

        if (usu.getNombreDeUsuario() == null || usu.getNombreDeUsuario().trim().equals("") || usu.getNombreDeUsuario().equalsIgnoreCase("null")) {
            System.out.println("Err");%>

    <script>

        window.location = "Login.jsp";

    </script>

    <%} else {%>

    <body>
        <div id="dvMenu" style="width: 100%; padding-left: 5%; padding-right: 5%;   background-color: var(--amarilloBackground);"><%@include file="Generales/MenuSesion.jsp" %></div>
        <!--indicador de  cargando-->
        <div id="overlay">
            <div class="cv-spinner"><label>Espera un momento ...<br></label> 
                <span class="spinner"></span>
            </div>
        </div>
        <%@include file="Generales/ArbolNavegacion.jsp" %>
        <!--fin indicador de cargando-->
        <!--<div id="dvContenedorSesion"><@include file="Sesion/frmHome.jsp" %></div>-->
        <!--<div id="dvContenedorSesion"><@include file="Sesion/Evaluacion/frmCargarCuestionarios.jsp" %></div>-->
        <div id="dvContenedorSesion"></div>
        <%@include file="Sesion/Evaluacion/frmCuestionarioDinamico.jsp" %>
    </body>
    </body>
    <%}%>


</html>

<!--aqui van los divs para las ventanas modales-->
<div id="wndReporteIndividual" class="ventana" title="Reporte Individual" style="background: white;"></div>
<div id="wndEditaEmpresa" class="ventana" title="Editar Empresa" style="background: white;"></div>
<div id="wndCreaEvaluacion" class="ventana" title="Crear Evaluación" style="background: white;"></div>
<div id="wndConsultarColaboradores" class="ventana" title="Consultar Colaboradores" style="background: white;"></div>
<div id="wndDetalleGraficaHome" class="ventana" title="" style="background: white;"></div>


