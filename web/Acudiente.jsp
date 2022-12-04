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
        <link href="Estilos/error.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acudiente</title>
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
                            <a href="alumno.jsp">Inicio</a><a> >> </a><a href="Acudiente.jsp" >Registrar Acudiente</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>
                <%                if (request.getAttribute("mensajeError") != null) { %>

                <h3 class="msgError" >${mensajeError}</h3>  

                <%} else {%>
                <h3 class="msgSucces" >${mensajeExito}</h3> 
                <% } %>
                <div class="container">
                    <p id="exito" class="exito" >Formulario enviado</p>
                            <p id="uError" class="uError" >Debe completar el formulario</p>
                    
                    <header>Registration</header>
                    <form method="post" action="Acudientes" id="regiAcu">
                        <div class="form first">
                            <div class="details personal">
                                <span class="title">Datos Personales</span>

                                <div class="fields">
                                    <div class="input-field">
                                        <label>Primer Nombre</label>
                                        <input type="text" name="textNom_acud1" placeholder="Escribe tu nombre" id="nom"></i>
                                        <p id="error1" class="error1">El campo solo acepta letras, minimo 3 letras</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Primer Apellido</label>
                                        <input type="text" name="textApel_acud1" placeholder="Escribe tu apellido" id="apel"></i>
                                        <p id="error2" class="error2">El campo solo acepta letras, minimo 4 letras</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Fecha de nacimiento</label>
                                        <input type="date" name="textFechnaci_acud" placeholder="Tu fecha de nacimiento" id="na" >
                                        <p id="error3" class="error3">Debe ser una fecha valida, mayor de edad</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Segundo Nombre</label>
                                        <input type="text" name="textNom_acud2" placeholder="Escribe tu nombre" id="nom2"></i>
                                        <p id="error4" class="error4">El campo solo acepta letras, minimo 3 letras</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Segundo Apellido</label>
                                        <input type="text" name="textApel_acud2" placeholder="Escribe tu apellido" id="apel2"></i>
                                        <p id="error5" class="error5">El campo solo acepta letras, minimo 4 letras</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Número de cedula</label>
                                        <input type="number" name="textNumdocu_acud" placeholder="numero de documento" id="cedu">
                                        <p id="error6" class="error6">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Numero de celular</label>
                                        <input type="tel" name="textTele_acud" placeholder="Tu Numero Telefonico" id="cel" >
                                        <p id="error7" class="error7">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                    </div>

                                    <div class="input-field">
                                        <label>Direccion de domicilio</label>
                                        <input type="text" name="textDirec_acud" placeholder="Tu Numero Telefonico" id="dire" >
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
        <script src="js/acu.js" type="text/javascript"></script>
    </body>
</html>
