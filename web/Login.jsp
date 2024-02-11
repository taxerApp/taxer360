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
        <script src="<%= request.getContextPath()%>/ControllerJs/ManejadorVentanasGenerales.js" type="text/javascript"></script>
        <link href="<%= request.getContextPath()%>/css/PPrincipal.css" rel="stylesheet" type="text/css"/>
        <!--<script src="utils/utils.js" type="text/javascript"></script>-->

        <script src="<%= request.getContextPath()%>/ControllerJs/CursosControllerJs.js" type="text/javascript"></script>
        <script src="<%= request.getContextPath()%>/ControllerJs/Utils.js" type="text/javascript"></script>


    </head>
    <body>
        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                             class="img-fluid" alt="Sample image">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                        <label id="lblTituloLogin">Inicio de sesión de la cuenta</label><br>
                        <label id="lblLeyendaLogin">Inicia sesión en tu cuenta para acceder a tu perfil, historial y cualquier página privada a la que te hayan otorgado acceso.</label>
                        <br><br>
                        <form>
                            <!--          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                                        <p class="lead fw-normal mb-0 me-3">Ingresa con</p>
                                        <button type="button" class="btn btn-primary btn-floating mx-1">
                                          <i class="fab fa-facebook-f"></i>
                                        </button>
                            
                                        <button type="button" class="btn btn-primary btn-floating mx-1">
                                          <i class="fab fa-twitter"></i>
                                        </button>
                            
                                        <button type="button" class="btn btn-primary btn-floating mx-1">
                                          <i class="fab fa-linkedin-in"></i>
                                        </button>
                                      </div>
                            
                                      <div class="divider d-flex align-items-center my-4">
                                        <p class="text-center fw-bold mx-3 mb-0">O</p>
                                      </div>-->

                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="email" class="form-control form-control-lg"
                                       placeholder="Ingresa tu nombre de usuario" id="txtUsuario"/>
                                <!--<label class="form-label" for="form3Example3">Correo Electronico</label>-->
                            </div>
                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <input type="password"  class="form-control form-control-lg"
                                       placeholder="Ingresa tu contraseña" id="txtPw" />
                                <!--<label class="form-label" for="form3Example4">Contraseña</label>-->
                            </div>

                            <div class="d-flex justify-content-between align-items-center">


                                <a href="#!" class="text-body">¿Olvidaste tu contraseña?</a>
                            </div>

                            <div class="text-center text-lg-start mt-4 pt-2" style="margin-bottom: 20%">
                                <button type="button" class="btn btn-primary btn-lg"
                                        style="padding-left: 2.5rem; padding-right: 2.5rem;" id="btnLogin">Login</button>
                                <p class="small fw-bold mt-2 pt-1 mb-0">No tienes una cuenta? <label 
                                        class="link-danger" id="lnkCrearCuenta">Crear Cuenta</label></p>
                            </div>

                        </form>
                    </div>
                </div>
            </div >


            <!--  -->
        </section>

    </body>
</html>
