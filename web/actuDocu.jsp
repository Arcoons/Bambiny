<%-- 
    Document   : actuDocu
    Created on : 11/09/2022, 11:30:56 PM
    Author     : solan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloVO.docuVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!----======== CSS ======== -->
        <link href="Estilos/form1.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Actualizar Documentos | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>

        <section class="home">
            <div class="contenido">
                <div class="container arriba">
                    <div>
                        <header>Alumno</header>

                        <div class="pag">
                            <a href="alumno.jsp">Inicio</a><p> >> </p><a href="listarDocumentos.jsp" >listar Documentos</a><p> >> </p><a >Actualizar Documentos</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>


                <%            docuVO doVO = (docuVO) request.getAttribute("datosConsultados");
                    if (doVO != null) {

                %>

                <div class="container">
                    <%                        if (request.getAttribute("mensajeError") != null) { %>
                    ${mensajeError}

                    <%} else {%>
                    ${mensajeExito}        
                    <%}%>

                    <header>Actualizar Documento</header>
                    <form method="post" action="Document">
                        <div class="form first">
                            <div class="details personal">
                                <span class="title">Datos Personales</span>

                                <div class="fields">

                                    <div class="input-field">
                                        <label>Nombre del Archivo</label>
                                        <input type="text" name="texttipo_docu" value="<%= doVO.getTipo_docu()%>" readonly  >
                                    </div>

                                    <div class="input-field">
                                        <label>Cargar Archivo</label>
                                        <input type="file" name="textarchivo_docu" value=" <%= doVO.getArchivo_docu()%>" >
                                    </div>

                                    <div class="input-field">
                                        <input type="hidden" name="textarchivo_docu"  >
                                    </div>

                                    <div class="input-field">
                                        <input type="hidden" name="textarchivo_docu"  >
                                    </div>

                                    <div class="input-field">
                                        <input type="hidden" name="textarchivo_docu"  >
                                    </div>

                                </div>
                            </div>

                            <button class="sumbit button">
                                <span class="btnText">Enviar</span>
                                <i class="uil uil-navigator"></i>
                            </button>
                            <input type="hidden" value="2" name="opcion">
                            <input type="hidden" name="textid_docu" value="<%= doVO.getId_docu()%>">
                        </div> 
                    </form>
                </div>

                <%}%>



            </div>
        </section>




    </body>
</html>
