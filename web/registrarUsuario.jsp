<%-- 
    Document   : registrarUsuario
    Created on : 9/05/2022, 09:18:14 AM
    Author     : Sena
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <!----======== CSS ======== -->
        <link href="Estilos/form1.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/error.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Administrador | Bambiny</title>

        <title>Registrar</title>

    </head>
    <body>   
        <%@include file="NavBar.jsp" %>

        <section class="home">
            <div class="contenido">
               
                <div class="container arriba">
                    <div>
                        <header>Administrador</header>

                        <div class="pag">
                            <a href="MenuAdmin.jsp">Inicio</a><a> >> </a><a href="registrarUsuario.jsp" >Registrar Usuario</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>
                
                 <%                    if (request.getAttribute("mensajeError") != null) { %>

                <h3 class="msgError" >${mensajeError}</h3>  

                <%} else {%>
                <h3 class="msgSucces" >${mensajeExito}</h3>  

                <%}%>


                <div class="container cont">
                    <div>
                        <header>Registrar Usuario</header>
                        <form method="post" action="Usuario" id="loUsu">
                            <div class="form first">
                                <div class="details personal">
                                    <span class="title">Datos Personales</span>

                                    <div class="fields">
                                        <div class="input-field">
                                            <label>Correo Electronico</label>
                                            <input type="email" name="textLogin" placeholder="Corro@email.com" required id="cor">
                                            <p id="error1" class="error1">Debe ser un correo valido</p>
                                        </div>

                                        <div class="input-field">
                                            <label>Contraseña</label>
                                            <input type="password" name="textPassword" placeholder="******" required id="con">
                                            <p id="error2" class="error2">Minimo 4 caracteres</p>
                                        </div>



                                    </div>
                                </div>
                                <p id="uError" class="uError" >Debe completar el formulario</p>
                                <p id="exito" class="exito" >Formulario enviado</p>
                                <button class="sumbit">
                                    <span class="btnText">Enviar</span>
                                    <i class="uil uil-navigator"></i>
                                </button>
                                <input type="hidden" value="1" name="opcion">
                            </div> 
                        </form>
                    </div>
                    <div class="avatar">
                        <img class="img" src="./assets/jardin/avatar1.svg" alt="avatar">
                    </div>
                </div>

            </div>
        </section>
        <script src="js/navbar.js" type="text/javascript"></script>
        <script src="js/usu.js" type="text/javascript"></script>
    </body>
</html>
