<%-- 
    Document   : actuAcudiente
    Created on : 11/09/2022, 08:31:47 PM
    Author     : solan
--%>

<%@page import="ModeloVO.AcudienteVO2"%>
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
        <title>Actualizar Acudiente | Bambiny</title>
    </head>
    <body>
    <%@include file="NavBar.jsp" %>
        <%
        
        String id_usua = rolVO.getRolId();

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
                            <a href="alumno.jsp">Inicio</a><p> >> </p><a href="ListaActAcud.jsp">Listar Acudientes</a><p> >> </p><a >Actualizar Acudiente</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>
        
        <%
            AcudienteVO2 acuVO = (AcudienteVO2) request.getAttribute("datosConsultados");
            if (acuVO != null) {
        %>
        
        <div class="container">
                
                <header>Acrualizar Acudiente</header>
                <form method="post" action="Acudientes" id="regiAcu">
                    <div class="form first">
                        <div class="details personal">
                            <span class="title">Datos Personales</span>

                            <div class="fields">
                                <div class="input-field">
                                    <label>Primer Nombre</label>
                                    <input type="text" name="textNom_acud1" value="<%= acuVO.getNOM_ACUD1() %>" id="nom" >
                                    <p id="error1" class="error1">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Primer Apellido</label>
                                    <input type="text" name="textApel_acud1" value="<%= acuVO.getAPEL_ACUD1() %>" id="apel" >
                                    <p id="error2" class="error2">El campo solo acepta letras, minimo 4 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Fecha de nacimiento</label>
                                    <input type="date" name="textFechnaci_acud" value="<%= acuVO.getFECHNACI_ACUD() %>" id="na" >
                                    <p id="error3" class="error3">Debe ser una fecha valida, mayor de edad</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Nombre</label>
                                    <input type="text" name="textNom_acud2"  value="<%= acuVO.getNOM_ACUD2() %>" id="nom2m" >
                                    <p id="error2" class="error4">El campo solo acepta letras, minimo 3 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Segundo Apellido</label>
                                    <input type="text" name="textApel_acud2" value="<%= acuVO.getAPEL_ACUD2() %>" id="apel2" >
                                    <p id="error5" class="error5">El campo solo acepta letras, minimo 4 letras</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de cedula</label>
                                    <input type="number" name="textNumdocu_acud" value="<%= acuVO.getNUMDOCU_ACUD() %>" id="cedu" >
                                    <p id="error6" class="error6">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Numero de celular</label>
                                    <input type="tel" name="textTele_acud" value="<%= acuVO.getTELE_ACUD() %>" id="cel" >
                                    <p id="error7" class="error7">El campo solo admite numeros, minimo 3 y maximo 11</p>
                                </div>

                                <div class="input-field">
                                    <label>Direccion de domicilio</label>
                                    <input type="text" name="textDirec_acud" value="<%= acuVO.getDIREC_ACUD() %>" >
                                </div>

                                <div class="input-field">
                                    <label>Parentesco</label>
                                    <input type="text" name="textParect_acud" value="<%= acuVO.getPARENT_ACUD() %>" readonly>
                                </div>
                                
                                <div class="input-field">
                                    <label>Parentesco</label>
                                    <select name="textEstadoauto_acud">
                                        <option value="Autorizado">Autorizado</option>
                                        <option value="No autorizado">No Autorizado</option>
                                    </select>
                                    
                                    
                                </div>

                            </div>
                        </div>

                        <p id="uError" class="uError" >Debe completar el formulario</p>
                        <button class="sumbit">
                            <span class="btnText">Enviar</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                        <input type="hidden" value="4" name="opcion">
                        <input type="hidden" name="textID_acud" value="<%= acuVO.getID_ACUD() %>">
                    </div> 
                </form>
            </div>

        
        <%}%>


        <%
            if (request.getAttribute("mensajeError") != null) { %>
        ${mensajeError}

        <%} else {%>
        ${mensajeExito}        
        <%}%>

        
     </section>
        <script src="js/acu.js" type="text/javascript"></script>
    </body>
</html>
