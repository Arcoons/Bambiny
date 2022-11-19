<%-- 
    Document   : director
    Created on : 21/07/2022, 07:05:51 AM
    Author     : ranyerino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/extras.css" rel="stylesheet" type="text/css"/>
        
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Director | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>



        <section class="home">

            <div class="container arriba">
                <div>
                    <header>Director</header>

                    <div class="pag">
                        <a href="director.jsp">Inicio</a><p> >> </p><a href="registrarUsuario.jsp" >Registrar Usuario</a>
                    </div>
                </div>    
                <div class="boton">
                    <form method="post" action="Sesiones">

                        <input class="cs" type="submit" value="Cerrar Sesion">

                    </form>  
                </div>

            </div>


            <section class="services section container" id="services">
                <h2 class="section__title">Projects_</h2>

                <div class="services__container grid">

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="/assets/img/baidu-line.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg">BESPET</h3>
                        <p class="services__detail">
                            Proyecto realizado en JAVA, sistema de informacion 
                            para la gestion y organizacion de la peluqueria canina
                            Titanes Peludos.
                        </p>
                    </div>

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="/assets/img/reactjs-fill.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg">HOTELIA</h3>
                        <p class="services__detail">
                            Proyecto realizado en REACT, conexion a API 
                            y funcionalidad CRUD.
                        </p>
                    </div>

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="/assets/img/folder-upload-line.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg">PORTAFOLIO</h3>
                        <p class="services__detail">
                            Proyecto realizado en EXPRESS, portafolio donde 
                            se encuentra mis datos personales, estudios, proyectos y 
                            contacto.
                        </p>
                    </div>

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="/assets/img/shopping-cart-2-line.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg">TIENDA</h3>
                        <p class="services__detail">
                            Proyecto realizado en LARAVEL, sistema que registra 
                            productos y los lista con su respectiva imagen.
                        </p>
                    </div>

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="/assets/img/car-line.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg">FORTUNE</h3>
                        <p class="services__detail">
                            Proyecto realizado en PHP, sistema para gestionar 
                            la entrada de visitantes, novedades y parqueadero.
                        </p>
                    </div>

                    <div class="services__item">
                        <div class="icon__box">
                            <img src="/assets/img/braces-line.png" alt="" class="services__icon">
                            <div class="services__dot">
                                <span class="dot"></span>
                            </div>
                        </div>
                        <h3 class="services__title text-lg">JAVASCRIPT</h3>
                        <p class="services__detail">
                            Pagina realizada en JAVASCRIPT, permite realizar 
                            diferentes tipos de calculos, juego de instructores y 
                            validaciones de formulario.
                        </p>
                    </div>

                </div>
            </section>

            <div class="contenido">

                <form method="post" action="GenerarReportes.jsp" target="_black" >
                    <input type="submit" value="Alumnos Registrados">
                    <input type="hidden" name="nomreporte" value="AlumnosReportes.jasper">
                </form><br>

                <form method="post" action="GenerarReportesParametros.jsp" target="_black" >

                    <input type="hidden" name="nomreporte" value="ReporteEmpleados.jasper">

                    <select name="parametro" required>
                        <option value="Director">Director</option>
                        <option value="Profesor">Profesor</option>
                    </select>
                    <input type="submit" value="Alumnos Registrados">
                </form>

            </div>


        </section>

    </body>
</html>
