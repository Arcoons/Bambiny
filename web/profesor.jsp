<%-- 
    Document   : profesor
    Created on : 21/07/2022, 07:06:13 AM
    Author     : ranyerino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Profesor | Bambiny</title>

    </head>
    <body>
    <%@include file="NavBar.jsp" %>

        <section class="home">
           
            <div class="contenido">
                
                <div class="cards">
                    <div class="cowe">
                        <img src="./assets/jardin/Profesor.svg">
                        <div class="infow">
                            <h1>Bienvenido</h1>
                            <h4>A nuestro sistema de matriculas Bambiny</h4>
                            <hr>
                            <p>Visualiza la informacion de los estudiantes</p>
                        </div>
                        
                    </div>
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
                                <h4>Alumnos </h4>
                                <p>Alumnos ya registrados en el sistema </p>
                                <a href="consultarAlumno.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                            </div>
                        </div>
                        
                        
                    </div>

                    
                </div>            

            </div>


        </section>
    </body>
</html>
