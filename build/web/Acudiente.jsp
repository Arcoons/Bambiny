<%-- 
    Document   : AcudienteVO
    Created on : 6/09/2022, 09:45:34 PM
    Author     : solan
--%>

<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloDAO.AlumnoDAO"%>
<%@page import="ModeloVO.AlumnoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProfesorDAO"%>
<%@page import="ModeloVO.ProfesorVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!----======== CSS ======== -->
        <link href="Estilos/form2.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Registrar Acudiente | Bambiny</title>
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

                <div class="container arriba">
                    <div>
                        <header>Alumno</header>

                        <div class="pag">
                            <a href="alumno.jsp">Inicio</a><p> >> </p><a href="Acudiente.jsp" >Registrar Acudiente</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>

                <div class="container">
                    <%                    if (request.getAttribute("mensajeError") != null) {%>

                    ${mensajeError}
                    <%} else {%>
                    ${mensajeExito}
                    <%}
                    %>
                    <header>Registrar Acudiente</header>
                    <form method="post" action="Acudientes">
                        <div class="form first">
                            <div class="details personal">
                                <span class="title">Datos Personales</span>

                                <div class="fields">
                                    <div class="input-field">
                                        <label>Primer Nombre</label>
                                        <input type="text" name="textNom_acud1" placeholder="Escribe tu nombre" >
                                    </div>

                                    <div class="input-field">
                                        <label>Primer Apellido</label>
                                        <input type="text" name="textApel_acud1" placeholder="Escribe tu apellido" >
                                    </div>

                                    <div class="input-field">
                                        <label>Fecha de nacimiento</label>
                                        <input type="date" name="textFechnaci_acud" placeholder="Tu fecha de nacimiento" >
                                    </div>

                                    <div class="input-field">
                                        <label>Segundo Nombre</label>
                                        <input type="text" name="textNom_acud2" placeholder="Escribe tu nombre" >
                                    </div>

                                    <div class="input-field">
                                        <label>Segundo Apellido</label>
                                        <input type="text" name="textApel_acud2" placeholder="Escribe tu apellido" >
                                    </div>

                                    <div class="input-field">
                                        <label>Numero de cedula</label>
                                        <input type="number" name="textNumdocu_acud" placeholder="numero de documento" >
                                    </div>

                                    <div class="input-field">
                                        <label>Numero de celular</label>
                                        <input type="tel" name="textTele_acud" placeholder="Tu Numero Telefonico" >
                                    </div>

                                    <div class="input-field">
                                        <label>Direccion de domicilio</label>
                                        <input type="text" name="textDirec_acud" placeholder="Tu Numero Telefonico" >
                                    </div>

                                    <div class="input-field">
                                        <label>Parentesto con el alumno</label>
                                        <select name="textParect_acud">
                                            <option value="Tio">Tio</option>
                                            <option value="Primo">Primo</option>
                                            <option value="Abuelo">Abuelo</option>
                                            <option value="Madre">Madre</option>
                                            <option value="Padre">Padre</option>
                                        </select> 
                                    </div>

                                </div>
                            </div>

                            <input type="hidden" name="textId_alum" value="<%= id_alumn%>">
                            <button class="sumbit">
                                <span class="btnText">Enviar</span>
                                <i class="uil uil-navigator"></i>
                            </button>
                            <input type="hidden" value="2" name="opcion">
                        </div> 
                    </form>
                </div>
            </div>       
        </section>
    </body>
</html>
