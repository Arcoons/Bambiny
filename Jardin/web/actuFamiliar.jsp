<%-- 
    Document   : actuFamiliar
    Created on : 11/09/2022, 08:32:14 PM
    Author     : solan
--%>

<%@page import="ModeloVO.familiarVO"%>
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
        <title>Actualizar Familiar | Bambiny</title>
    </head>
    <body>

        <%@include file="NavBar.jsp" %>

        <section class="home">
            <h1>Acudiente</h1><br><br>
            <a href="listarFamiliar.jsp">Volver</a>

            <%            familiarVO famiVO = (familiarVO) request.getAttribute("datosConsultados");
                if (famiVO != null) {
            %>

            <div class="container">
                <header>Registration</header>
                <form method="post" action="Familiar" id="regiFami">
                    <div class="form first">
                        <div class="details personal">
                            <span class="title">Datos Personales</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Primer Nombre</label>
                                    <input type="text" name="textnom1_fami" value="<%= famiVO.getNom1_fami()%>" id="nom" >
                                    <p id="error1" class="error1">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Primer Apellido</label>
                                    <input type="text" name="textapel1_fami" value="<%= famiVO.getApel1_fami()%>" id="apel" >
                                    <p id="error2" class="error2">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Fecha de nacimiento</label>
                                    <input type="date" name="textfechnaci_fami" value="<%= famiVO.getFechnaci_fami()%>" id="na">
                                    <p id="error3" class="error3">Debe ser una fecha valida, mayor de edad</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Nombre</label>
                                    <input type="text" name="textnom2_fami" value="<%= famiVO.getNom2_fami()%>" id="nom2" >
                                    <p id="error4" class="error4">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Apellido</label>
                                    <input type="text" name="textapel2_fami" value="<%= famiVO.getApel2_fami()%>" id="apel2" >
                                    <p id="error5" class="error5">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de cedula</label>
                                    <input type="number" name="textnumdocu_fami" value="<%= famiVO.getNumdocu_fami()%>" id="cedu" >
                                    <p id="error6" class="error6">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de celular</label>
                                    <input type="tel" name="texttelecel_fami" value="<%= famiVO.getTelecel_fami()%>" id="cel" >
                                    <p id="error7" class="error7">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                            </div>
                        </div>

                        <div class="details personal">
                            <span class="title">Sobre ti</span>

                            <div class="fields">


                                <div class="input-field">
                                    <label>Parentesto</label>
                                    <input type="tel" name="textparent_fami" value="<%= famiVO.getParent_fami()%>" readonly="" >
                                </div>



                                <div class="input-field">
                                    <label>ocupacion</label>
                                    <input type="text" name="textocupac_fami" value="<%= famiVO.getOcupac_fami()%>" id="ocu">
                                    <p id="error8" class="error8">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>lugar de trabajo</label>
                                    <input type="text" name="textlugatrab_fami" value="<%= famiVO.getLugatrab_fami()%>" id="tra" >
                                    <p id="error9" class="error9">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de contacto de tu trabajo</label>
                                    <input type="tel" name="textteletrab_fami" value="<%= famiVO.getTeletrab_fami()%>" id="nutra" >
                                    <p id="error10" class="error10">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>




                            </div>
                        </div>




                        <input type="hidden" name="textid_fami" value="<%= famiVO.getId_fami()%>">
                        <button class="sumbit">
                            <span class="btnText">Enviar</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                        <input type="hidden" value="2" name="opcion">
                    </div> 

            </div>


        </form>

    </div>

</section>
<%}%>


<%
            if (request.getAttribute("mensajeError") != null) { %>
${mensajeError}

<%} else {%>
${mensajeExito}        
<%}%>

<script src="js/fami.js" type="text/javascript"></script>
</body>
</html>
