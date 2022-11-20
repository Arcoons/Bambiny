<%-- 
    Document   : alumno
    Created on : 21/07/2022, 07:06:29 AM
    Author     : ranyerino
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/form1.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Alumno | Bambiny</title>

    </head>
    <body>

        <%@include file="NavBar.jsp" %>

        <%            String id_usua = rolVO.getRolId();

            AlumnoVO alumVO = new AlumnoVO();
            AlumnoDAO alumDAO = new AlumnoDAO(alumVO);

            alumVO = alumDAO.consultarAlumno(id_usua);

            String id_alumn = alumVO.getId_alum();

        %>


        <section class="home">
            <div class="contenido">
                
                <div class="">
                    <div class="cowe">
                      
                        <div class="infow">
                            <h1>Bienvenido</h1>
                            <h4>A nuestro sistema de matriculas Bambiny</h4>
                            <hr>
                            <p>Para comenzar la inscripcion da click en los botones "ingresar" que encontras en la parte
                            de abajo, presta atencion a los mensajes en cada uno de ellos</p>
                        </div>
                        
                    </div>
                </div>

                <div class="cards">
                    <div class="colu">
                        <div class="uno">
                            <img src="./assets/jardin/Ralumno.png" alt="imagen">
                            <div class="info">
                                <h4>Registrar Alumno</h4>
                                <p>Llena el formulario de registro con los datos del alumno</p>
                                <a href="regAlumno.jsp">
                                    <i class='bx bx-log-in-circle'></i>
                                    Ingresar
                                </a> 
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/Rfamilia.png" alt="imagen">
                            <div class="info">
                                <h4>Registrar Familiar</h4>
                                <p>Registra a el adulto mayor que se encarga de ti</p>
                                <a href="familiar.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a> 
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/Racu.png" alt="imagen">
                            <div class="info">
                                <h4>Registrar Acudiente</h4>
                                <p>Registra a las personas que pueden recoger al alumno </p>
                                <a href="Acudiente.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a> 
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/Rdocu.png" alt="imagen">
                            <div class="info">
                                <h4>Registrar Documentos</h4>
                                <p>Registra todos tus documentos personales</p>
                                <a href="documento.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a> 
                            </div>
                        </div>
                    </div>

                    <div class="colu">
                        <div class="uno">
                            <img src="./assets/jardin/Aalu.png" alt="imagen">
                            <div class="info">
                                <h4>Actualizar Alumno</h4>
                                <p>Actauliza tus datos si han cambiado</p>
                                <form action="Alumno" method="post">
                                    
                                    <button name="textid_alum" value="<%= id_alumn%>" ><i class='bx bx-log-in-circle'></i>Ingresar</button>
                                    <input name="opcion" value="2" type="hidden">
                                </form>
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/editar.png" alt="imagen">
                            <div class="info">
                                <h4>Actualizar Familiar</h4>
                                <p>Actualiza los datos tus adultos encargados de ti</p>
                                <a href="listarFamiliar.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a> 
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/editar.png" alt="imagen">
                            <div class="info">
                                <h4>Actualizar Acudiente</h4>
                                <p>Actualiza la informacion o cambia la autorizacion de tus acudientes</p>
                                <a href="ListaActAcud.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a> 
                            </div>
                        </div>
                        <div class="uno">
                            <img src="./assets/jardin/Adocu.png" alt="imagen">
                            <div class="info">
                                <h4>Actualizar Documentos</h4>
                                <p>Actauliza los documentos que sean necesarios</p>
                                <a href="listarDocumentos.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a> 
                            </div>
                        </div>
                    </div>
                </div>            

            </div>


            <%
                if (request.getAttribute("mensajeError") != null) { %>
            ${mensajeError}

            <%} else {%>
            ${mensajeExito}        
            <%}%>


        </section>
    </body>
</html>
