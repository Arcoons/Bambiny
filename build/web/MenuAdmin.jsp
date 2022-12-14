<%-- 
    Document   : MenuAdmin
    Created on : 20-nov-2022, 7:24:43
    Author     : yoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Administrador | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>



        <section class="home">
            <div class="contenido">

                <div class="container arriba">
                    <div>
                        <header>Adminisrtrador</header>

                        <div class="pag">
                            <a href="MenuAdmin.jsp">Inicio</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>

                <div class="menu">

                    <div class="m">
                        <div>
                            <h1>Paginas</h1>
                        </div>
                        <div class="cards">
                            <div class="colu">
                                <div class="uno">
                                    <img src="./assets/jardin/perfil.png" alt="imagen">
                                    <div class="info">
                                        <h4>Completar tu perfil</h4>
                                        <p>Llena un formulario con tus datos para mayor accesibilidad </p>
                                        <a href="perfil.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>
                                <div class="uno">
                                    <img src="./assets/jardin/archivo.png" alt="imagen">
                                    <div class="info">
                                        <h4>Usuarios</h4>
                                        <p>Usuarios ya registrados en el sistema </p>
                                        <a href="admin.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>

                                <div class="uno">
                                    <img src="./assets/jardin/registro.png" alt="imagen">
                                    <div class="info">
                                        <h4>Registrar usuarios</h4>
                                        <p>Registrar un nuevo usuario en el sistema </p>
                                        <a href="registrarUsuario.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="m">
                        <div>
                            <h1>Acciones</h1>
                        </div>
                        <div class="cards">
                            <div class="colu">
                                <div class="uno">
                                    <img src="./assets/jardin/grupo.png" alt="imagen">
                                    <div class="info">
                                        <h4>Reporte Usuarios</h4>
                                        <p>Alumnos registrados </p>
                                        <form method="post" action="GenerarReportes.jsp" target="_black" >
                                            <input class="inp" type="submit" value="Usuarios Registrados">
                                            <input type="hidden" name="nomreporte" value="UsuariosReportes.jasper">
                                        </form>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>


            </div>


        </section>
    </body>
</html>
