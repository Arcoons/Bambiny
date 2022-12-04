<%-- 
    Document   : Login
    Created on : 08-nov-2022, 14:28:03
    Author     : yoang
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <title>Login</title>

        <!-- Google font -->
        <link href="http://fonts.googleapis.com/css?family=Playfair+Display:900" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Alice:400,700" rel="stylesheet" type="text/css" />

        <!-- Bootstrap -->
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
        <!-- <link rel="icon" type="image/x-icon" href="img/ciervo.png" />-->
        <link href="Estilos/error.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/login.css" rel="stylesheet" type="text/css"/>

        <!-- Custom stlylesheet -->

        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">


    </head>

    <body>
        <div id="booking" class="section">
            <div class="section-center">
                <div class="container">
                    <div class="row">

                        <div class="booking-form">

                            <div class="booking-bg">

                                <div class="form-header">

                                    <img src="assets/jardin/IconoNegro.svg" id="icono" alt="">
                                </div>
                            </div>
                            <form method="post" action="Usuario" id="loUsu">
                                <div class="logo">
                                    <img src="img/logo-osc.png" alt="" id="logo">
                                </div>
                                <div id="formulario">
                                    <center>
                                        <h1>Recuperar Contraseña</h1>
                                         <h3>Escriba su correo para recuperar su contraseña</h3>
                                    </center>


                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <span class="form-label">Correo</span>

                                                <input class="form-control" type="text" name="textLogin" placeholder="Correo" required id="cor">
                                                <p id="error1" class="error1">Debe ser un correo valido</p>
                                            </div>
                                        </div>

                                    </div>
                                  
                                </div>
                                <p id="uError" class="uError" >Debe completar el formulario</p>
                                <p id="exito" class="exito" >Formulario enviado</p>
                                <div class="form-btn">
                                    <button class="submit-btn">Recuperar Contraseña</button>
                                    <input type="hidden" value="11" name="opcion"><br>
                                </div>

                                <br>

                                <center>

                                    <form>
                                        <button id="btnpass" class="submit-btn" ><a href="Login.jsp">Volver</a></button>
                                    </form>
                                </center>

                                <br>
                                <%
                                    if (request.getAttribute("mensajeError") != null) {%>

                                ${mensajeError}
                                <%} else {%>
                                ${mensajeExito}
                                <%}
                                %>
                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/usu.js" type="text/javascript"></script>
    </body>

</html>
