<%-- 
    Document   : regAlumno
    Created on : 3/08/2022, 04:48:50 PM
    Author     : solan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloVO.lunacVO"%>
<%@page import="ModeloDAO.lunacDAO"%>
<%@page import="ModeloDAO.EpsDAO"%>
<%@page import="ModeloVO.EpsVO"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!----======== CSS ======== -->
        <link href="Estilos/form2.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/error.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Registrar Alumno | Bambiny</title>
    </head>
    <body>

        <%@include file="NavBar.jsp" %>
        <%            String id_usua = rolVO.getRolId();

            AlumnoVO alumVO = new AlumnoVO();
            AlumnoDAO alumDAO = new AlumnoDAO(alumVO);

            alumVO = alumDAO.consultarAlumno(id_usua);

            String id_alumn = alumVO.getId_alum();

            for (int i = 0; i < listaDatos.size(); i++) {

                rolVO = listaDatos.get(i);
            }
        %>



        <section class="home">
            <% if (request.getAttribute("MensajeError") != null) { %>
            ${MensajeError}

            <%} else {%>
            ${MensajeExito}        
            <%}%>
            <div class="container">
                <header>Registrar Alumno</header>
                <form method="post" action="Alumno" id="regiAlum">
                    <div class="form first">
                        <div class="details personal">
                            <span class="title">Datos Personales</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Primer Nombre</label>
                                    <input type="text" name="textnom1_alum" placeholder="Escribe tu nombre"id='nom' >
                                    <p id="error1" class="error1">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Primer Apellido</label>
                                    <input type="text" name="textapel1_alum" placeholder="Escribe tu apellido"id='apel' >
                                    <p id="error2" class="error2">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Fecha de nacimiento</label>
                                    <input type="date" name="textfechnaci_alum" placeholder="Tu fecha de nacimiento"id='na' >
                                    <p id="error3" class="error3">Debe ser una fecha valida, mayor de edad</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Nombre</label>
                                    <input type="text" name="textnom2_alum" placeholder="Escribe tu nombre"id='nom2' >
                                    <p id="error4" class="error4">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Apellido</label>
                                    <input type="text" name="textapel2_alum" placeholder="Escribe tu apellido" id='apel2' >
                                    <p id="error5" class="error5">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero Nuip</label>
                                    <input type="number" name="textnuip_alumn" placeholder="Tu registro civil" id='regi' >
                                    <p id="error6" class="error6">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                            </div>
                        </div>

                        <div class="details personal"> 
                            <span class="title">Sobre ti</span>

                            <div class="fields">

                                <div class="input-field">
                                    <label>Eps</label>
                                    <select name="textid_eps">

                                        <option>Seleccione la eps</option>
                                        <%                        EpsDAO epsDAO = new EpsDAO();
                                            for (EpsVO epsVO : epsDAO.listar()) {
                                        %>
                                        <option value="<%= epsVO.getId_eps()%>"> <%= epsVO.getNom_eps()%></option>
                                        <%}%>
                                    </select>
                                </div>

                                <div class="input-field">
                                    <label>Lugar de Nacimiento</label>
                                    <select name="textid_luganaci">

                                        <option>Seleccione lugar de nacimiento</option>
                                        <%
                                            lunacDAO lunacDAO = new lunacDAO();
                                            for (lunacVO lunacVO : lunacDAO.listarn()) {
                                        %>
                                        <option value="<%= lunacVO.getId_luganaci()%>"> <%= lunacVO.getNom_luganaci()%></option>
                                        <%}%>
                                    </select>
                                </div>

                                <div class="input-field">
                                    <label>Numero de Hermanos</label>
                                    <input type="number" name="textnumherma_alum" placeholder="Cuantos hermanos tienes?" id='her' >
                                    <p id="error7" class="error7">El campo solo admite numeros, un digito</p>
                                </div>

                                <div class="input-field">
                                    <label>Grupo Sanguineo</label>
                                    <input type="text" name="textgrupsangui_alum" placeholder="Grupo Sanguineo" id='san'>
                                    <p id="error8" class="error8">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>


                            </div>
                        </div>

                        <div class="details personal">
                            <span class="title">Informacion de Contacto</span>

                            <div class="fields">

                                <div class="input-field">
                                    <label>Direccion de Domicilio</label>
                                    <input type="text" name="textdirec_alum" placeholder="Donde vives?" >
                                </div>

                                <div class="input-field">
                                    <label>Telefono fijo</label>
                                    <input type="number" name="texttelefijo_alum" placeholder="Telefono fijo" id='tel' >
                                    <p id="error9" class="error9">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Telefono Celular</label>
                                    <input type="number" name="texttelecelu_alum" placeholder="Telefono Celular" id='cel' >
                                    <p id="error10" class="error10">El campo solo admite numeros, minimo 3 y maximo 10</p>
                                </div>



                            </div>
                        </div>


                        <div class="details ID">
                            <span class="title">Sobre tu Salud</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Alergias</label>
                                    <input type="text" name="textalerg_alum" placeholder="Tus alergias" id='aler' >
                                    <p id="error11" class="error11">El campo solo acepta letras, minimo 2 letras</p>  
                                </div>

                                <div class="input-field">
                                    <label>Medicamentos</label>
                                    <input type="text" name="textmedica_alumd" placeholder="Tomas alguna Pastilla?" id='medi' >
                                    <p id="error12" class="error12">El campo solo acepta letras, minimo 2 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Peso al nacer</label>
                                    <input type="text" name="textpeso_alum" placeholder="50 Gramos" id='peso' >
                                    <p id="error13" class="error13">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Altura al nacer</label>
                                    <input type="text" name="textaltura_alum" placeholder="50 cm" id='altu' >
                                    <p id="error14" class="error14">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Enfermedades</label>
                                    <input type="text" name="textenferm_alum" placeholder="Enfermedades" id='enfe' >
                                    <p id="error15" class="error15">El campo solo acepta letras, minimo 2 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Descripcion de la enfermedad</label>
                                    <input name="textdescenferm_alum" placeholder="Decribe es que lo que tu enfermedad te proboca" id='des' >
                                    <p id="error16" class="error16">El campo solo acepta letras, minimo 2 letras</p>
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



        <script src="js/alum.js" type="text/javascript"></script>  



    </body>
</html>
