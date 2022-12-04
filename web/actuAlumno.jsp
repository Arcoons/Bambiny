<%-- 
    Document   : actuAlumno
    Created on : 11/09/2022, 05:50:47 PM
    Author     : solan
--%>

<%@page import="ModeloVO.AlumnoVO"%>
<%@page import="ModeloVO.EpsVO"%>
<%@page import="ModeloVO.lunacVO"%>
<%@page import="ModeloDAO.lunacDAO"%>
<%@page import="ModeloDAO.EpsDAO"%>
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
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Actualizar Alumno | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>




        <section class="home">
            <div class="contenido">
                <div class="container arriba">
                    <div>
                        <header>Alumno</header>

                        <div class="pag">
                            <a href="alumno.jsp">Inicio</a><a> >> </a><a >Actualizar Datos</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>

           <%                if (request.getAttribute("mensajeError") != null) { %>

                <h5 class="msgError" >${mensajeError}</h5>  

                <%} else {%>
                <h5 class="msgSucces" >${mensajeExito}</h5> 
                <% } %>

            <%            AlumnoVO aluVO = (AlumnoVO) request.getAttribute("datosConsultados");
                if (aluVO != null) {
            %>

            <div class="container">
                <header>Actualiza tus datos</header>
                <form method="post" action="Alumno" id='regiAlum'>
                    <div class="form first">
                        <div class="details personal">
                            <span class="title">Datos Personales</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Primer Nombre</label>
                                    <input type="text" name="textnom1_alum" value="<%= aluVO.getNom1_alum()%>" id='nom' >
                                    <p id="error1" class="error1">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Primer Apellido</label>
                                    <input type="text" name="textapel1_alum" value="<%= aluVO.getApel1_alum()%>" id='apel' >
                                    <p id="error2" class="error2">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Fecha de nacimiento</label>
                                    <input type="date" name="textfechnaci_alum"  value="<%= aluVO.getFechnaci_alum()%>" id='na'>
                                    <p id="error3" class="error3">Debe ser una fecha valida, mayor de edad</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Nombre</label>
                                    <input type="text" name="textnom2_alum" value="<%= aluVO.getNom2_alum()%>" id='nom2' >
                                    <p id="error4" class="error4">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Apellido</label>
                                    <input type="text" name="textapel2_alum" value="<%= aluVO.getApel2_alum()%>" id='apel2' >
                                    <p id="error5" class="error5">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero Nuip</label>
                                    <input type="number" name="textnuip_alumn" value="<%= aluVO.getNuip_alumn()%>" id='regi' >
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
                                    <input type="number" name="textnumherma_alum" value="<%= aluVO.getNumherma_alum()%>" id='her'>
                                    <p id="error7" class="error7">El campo solo admite numeros, un digito</p>
                                </div>

                                <div class="input-field">
                                    <label>Grupo Sanguineo</label>
                                    <input type="text" name="textgrupsangui_alum" value="<%= aluVO.getGrupsangui_alum()%>" id='san' >
                                    <p id="error8" class="error8">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>


                            </div>
                        </div>

                        <div class="details personal">
                            <span class="title">Informacion de Contacto</span>

                            <div class="fields">

                                <div class="input-field">
                                    <label>Direccion de Domicilio</label>
                                    <input type="text" name="textdirec_alum" value="<%= aluVO.getDirec_alum()%>"  >
                                </div>

                                <div class="input-field">
                                    <label>Telefono fijo</label>
                                    <input type="number" name="texttelefijo_alum" value="<%= aluVO.getTelefijo_alum()%>" id="tel" >
                                    <p id="error9" class="error9">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Telefono Celular</label>
                                    <input type="number" name="texttelecelu_alum" value="<%= aluVO.getTelecelu_alum()%>" id='cel' >
                                    <p id="error10" class="error10">El campo solo admite numeros, minimo 3 y maximo 10</p>
                                </div>



                            </div>
                        </div>


                        <div class="details ID">
                            <span class="title">Sobre tu Salud</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Alergias</label>
                                    <input type="text" name="textalerg_alum" value="<%= aluVO.getAlerg_alum()%>" id="aler" >
                                    <p id="error11" class="error11">El campo solo acepta letras, minimo 3 letras</p>  
                                </div>

                                <div class="input-field">
                                    <label>Medicamentos</label>
                                    <input type="text" name="textmedica_alumd" value="<%= aluVO.getMedica_alum()%>" id="medi" >
                                    <p id="error12" class="error12">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Peso al nacer</label>
                                    <input type="text" name="textpeso_alum" value="<%= aluVO.getPeso_alum()%>" id="peso">
                                    <p id="error13" class="error13">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Altura al nacer</label>
                                    <input type="text" name="textaltura_alum" value="<%= aluVO.getAltura_alum()%>" id="altu" >
                                    <p id="error14" class="error14">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Enfermedades</label>
                                    <input type="text" name="textenferm_alum" value="<%= aluVO.getEnferm_alum()%>" id="enfe">
                                    <p id="error15" class="error15">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Descripcion de la enfermedad</label>
                                    <input name="textdescenferm_alum" value="<%= aluVO.getDescenferm_alum()%>" id="des" >
                                    <p id="error16" class="error16">El campo solo acepta letras, minimo 3 letras</p>
                                </div>


                            </div>



                            <input type="hidden" name="textid_alum" value="<%= aluVO.getId_alum()%>">
                            <button class="sumbit">
                                <span class="btnText">Enviar</span>
                                <i class="uil uil-navigator"></i>
                            </button>
                            <input type="hidden" value="3" name="opcion">
                        </div> 

                    </div>


                </form>
                
            </div>
        </section>

        <%}%>

        <script src="js/alum.js" type="text/javascript"></script>


    </body>
</html>
