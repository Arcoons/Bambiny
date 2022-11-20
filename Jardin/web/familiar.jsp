<%-- 
    Document   : familiar
    Created on : 7/09/2022, 11:47:33 PM
    Author     : solan
--%>

<%@page import="ModeloVO.familiarVO"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link href="Estilos/form2.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/error.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Registrar Familiar | Bambiny</title>
    </head>
    <body>

        <%@include file="NavBar.jsp" %>
        <%             String id_usua = rolVO.getRolId();

            AlumnoVO alumVO = new AlumnoVO();
            AlumnoDAO alumDAO = new AlumnoDAO(alumVO);

            alumVO = alumDAO.consultarAlumno(id_usua);

            String id_alumn = alumVO.getId_alum();

        %>
        <section class="home">
            <% if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}

            <%} else {%>
            ${MensajeExito}        
            <%}%>

            <% if (request.getAttribute("MensajeErrorConsulta") != null) { %>
            ${MensajeError}

            <%} else {%>
            ${MensajeConsulta}        
            <%}%>
            <div class="container">
                <header>Registrar tutor legal</header>
                <form method="post" action="Familiar"id="regiFami">
                    <div class="form first">
                        <div class="details personal">
                            <span class="title">Datos Personales</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Primer Nombre</label>
                                    <input type="text" name="textnom1_fami" placeholder="Escribe tu nombre" id='nom' >
                                    <p id="error1" class="error1">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Primer Apellido</label>
                                    <input type="text" name="textapel1_fami" placeholder="Escribe tu apellido" id='apel' >
                                    <p id="error2" class="error2">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Fecha de nacimiento</label>
                                    <input type="date" name="textfechnaci_fami" placeholder="Tu fecha de nacimiento" id='na'>
                                    <p id="error3" class="error3">Debe ser una fecha valida, mayor de edad</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Nombre</label>
                                    <input type="text" name="textnom2_fami" placeholder="Escribe tu nombre" id='nom2' >
                                    <p id="error4" class="error4">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Apellido</label>
                                    <input type="text" name="textapel2_fami" placeholder="Escribe tu apellido" id='apel2' >
                                    <p id="error5" class="error5">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de cedula</label>
                                    <input type="number" name="textnumdocu_fami" placeholder="numero de documento" id='cedu' >
                                    <p id="error6" class="error6">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de celular</label>
                                    <input type="tel" name="texttelecel_fami" placeholder="Tu Numero Telefonico" id='cel'>
                                    <p id="error7" class="error7">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                            </div>
                        </div>

                        <div class="details personal">
                            <span class="title">Sobre ti</span>

                            <div class="fields">

                                <div class="input-field">
                                    <label>Parentesto</label>
                                    <select name="textparent_fami">
                                        <option>Seleccione</option>
                                        <option value="Madre">Madre</option>
                                        <option value="Padre">Padre</option>
                                        <option value="Hermano/a">Hermano/a</option>
                                        <option value="Abuelo/a">Abuelo/a</option>
                                        <option value="Otro">Otro</option>
                                    </select>
                                </div>



                                <div class="input-field">
                                    <label>ocupacion</label>
                                    <input type="text" name="textocupac_fami" placeholder="A que te dedicas" id='ocu'>
                                    <p id="error8" class="error8">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>lugar de trabajo</label>
                                    <input type="text" name="textlugatrab_fami" placeholder="Donde trabajas?" id='tra'>
                                    <p id="error9" class="error9">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de contacto de tu trabajo</label>
                                    <input type="tel" name="textteletrab_fami" placeholder="Numero Telefonico de tu trabajo" id='nutra' >
                                    <p id="error10" class="error10">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>




                            </div>
                        </div>


                        <p id="uError" class="uError" >Debe completar el formulario</p>
                        <p id="exito" class="exito" >Formulario enviado</p>

                        <input type="hidden" name="textid_alum" value="<%= id_alumn%>">
                        <button class="sumbit">
                            <span class="btnText">Enviar</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                        <input type="hidden" value="1" name="opcion">
                    </div> 

            </div>


        </form>

    </div>
</section>
<script src="js/fami.js" type="text/javascript"></script>
</body>
</html>
