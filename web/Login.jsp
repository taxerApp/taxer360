<%-- 
    Document   : Login.jsp
    Created on : 23 ene. 2024, 17:13:43
    Author     : davidjimenez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluacion 360 grados</title>
        <script defer src="<%= request.getContextPath()%>/libs/jquery/jquery.flexslider-min.js"></script>
        <link href="<%= request.getContextPath()%>/libs/jquery/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery.dataTables.min.js" type="text/javascript"></script>
        <link href="https://cdn.datatables.net/responsive/2.5.0/css/responsive.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdn.datatables.net/responsive/2.5.0/js/dataTables.responsive.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-3.7.1.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-3.7.1.min.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/ControllerJs/PrincipalControllerJs.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/css/Footer.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath()%>/css/flexslider.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/jquery/jquery-ui.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/jquery/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/js/bootstrap.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/libs/bootstrap-5.0.2-dist(1)/bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/images/fontawesome-free-6.4.2-web/fontawesome-free-6.4.2-web/css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="<%= request.getContextPath()%>/ControllerJs/LoginControllerJs.js" type="text/javascript"></script>   
        <script src="<%= request.getContextPath()%>/ControllerJs/Utils.js" type="text/javascript"></script>
        <link href="css/cascada.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath()%>/css/loading.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>

        <!--indicador de  cargando-->
           <div id="overlay">
    <div class="cv-spinner"><label>Espera un momento ...<br></label> 
    <span class="spinner"></span>
  </div>
</div>
        <!--fin indicador de cargando-->
                <div class="container-fluid h-custom"></div>
            <div class="row d-flex justify-content-center align-items-center h-100"></div>
                <div class="col-md-9 col-lg-6 col-xl-5"></div>
            <img src="img/BEOK_1.png"
                             class="img-fluid" alt="Sample image">   </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1"></div>
            <section class="form-login">
            <h5> Bienvenid@ </h5>
            <input class="controls" type="text" name="usuario" id="txtCorreo" value="" placeholder="Nombre de usario">
            <input class="controls" type="password" name="contrasena" id="txtPw" value="" placeholder="Contraseña">
            <input class="buttons" type="button" name="" id="btnLogin" value="INICIAR SESION">
    
                   
        </section>   

    </body>
</html>
