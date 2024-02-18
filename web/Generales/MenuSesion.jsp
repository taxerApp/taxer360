<%-- 
    Document   : MenuSesion
    Created on : 18/02/2024, 02:52:41 PM
    Author     : David
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no" />
        <!--<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>-->
        <!--<script src="%= request.getContextPath()%>/Js/Menu.js" type="text/javascript"></script>-->
        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">-->

        <link href="<%= request.getContextPath()%>/css/menuStyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="header">
            <div class="child-header">
                <!--<div class="box-logo">-->
                <div class="box-logo">
                    <!--<label>Evaluación 360</label><br>-->
                    <label class="txtEncabezado">Bienvenid@: David Jimenez</label><br>
                    <label class="txtEncabezado" >Administrador Be-Learning</label>
                    <!--<a href="" class="link-logo">Evaluacion 360</a>-->
                </div>

                <nav class="box-menu-navegacion" id="menu-navegacion">
                    <ul class="menu-navegacion">
                        <li class="item-menu">
                            <a href="#" class="item-menu-link">Inicio</a>
                        </li>
                        <li class="item-menu">
                            <a href="#" class="item-menu-link">Sobre Nosotros</a>
                        </li>

                        <li class="item-menu item-menu-sub-menu">
                            <a href="#" class="item-menu-link">Clases Particulares</a>
                            <i class="fas fa-angle-down angle-view-sub-menu" style="color: #ffca2c;"></i>

                            <ul class="sub-menu" id="sub-menu">
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Desarrollo Web</a>
                                </li>
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Posicionamiento SEO</a>
                                </li>
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Campañas de Google Ads</a>
                                </li>
                            </ul>
                        </li>

                        <li class="item-menu item-menu-sub-menu">
                            <a href="#" class="item-menu-link">Servicios</a>
                            <i class="fas fa-angle-down angle-view-sub-menu" style="color: #ffca2c;"></i>
                            <!--<i class="fas fa-angle-down angle-view-sub-menu"></i>-->

                            <ul class="sub-menu" id="sub-menu">
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Desarrollo Web</a>
                                </li>
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Posicionamiento SEO</a>
                                </li>
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Campañas de Google Ads</a>
                                </li>
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Campañas de Facebook Ads</a>
                                </li>
                                <li class="item-menu">
                                    <a href="#" class="item-menu-link">Diseño para Redes Sociales</a>
                                </li>
                            </ul>
                        </li>

                        <li class="item-menu">
                            <a href="#" class="item-menu-link">Contacto</a>
                        </li>
                    </ul>
                </nav>

                <button class="btn-hamburguesa" id="btn-hamburguesa">
                    <span></span>
                    <span></span>
                    <span></span>
                </button>

            </div>
        </header>

    </body>
</html>