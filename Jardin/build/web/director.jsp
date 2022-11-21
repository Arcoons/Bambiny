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
            <div class="contenido">

                <div class="container arriba">
                    <div>
                        <header>Director</header>

                        <div class="pag">
                            <a href="director.jsp">Inicio</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>
                
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
                                <h4>Matriculas</h4>
                                <p>Listado de las matriculas que estan activas o inactivas </p>
                                <a href="ConsultarMat2.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                            </div>
                        </div>

                    </div>
                </div>

                <div>
                    <h1>Acciones</h1>
                </div>
                <div class="cards">
                    <div class="colu">
                        <div class="uno">
                            <img src="./assets/jardin/estudiante.png" alt="imagen">
                            <div class="info">
                                <h4>Reportes Alumnos</h4>
                                <p>Alumnos registrados </p>
                                <form method="post" action="GenerarReportes.jsp" target="_black" >
                                    <input class="inp" type="submit" value="Alumnos Registrados">
                                    <input type="hidden" name="nomreporte" value="AlumnosReportes.jasper">
                                </form>
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/empleados.png" alt="imagen">
                            <div class="info">
                                <h4>Reporte Empleados</h4>
                                <p>Elige el cargo por que el se van alistar los empleados</p>
                                <form method="post" action="GenerarReportesParametros.jsp" target="_black" >

                                    <input class="inp" type="hidden" name="nomreporte" value="ReporteEmpleados.jasper">

                                    <select name="parametro" required>
                                        <option value="Director">Director</option>
                                        <option value="Profesor">Profesor</option>
                                    </select>
                                    <input type="submit" value="Alumnos Registrados">
                                </form>

                            </div>
                        </div>

                    </div>
                </div>


            </div>


        </section>

    </body>
</html>
