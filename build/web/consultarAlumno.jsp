<%-- 
    Document   : consultarVehiculo
    Created on : 16/05/2022, 09:09:08 AM
    Author     : Sena
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.ProfesorDAO"%>
<%@page import="ModeloVO.ProfesorVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
        <!-- CSS only -->
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>

        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Profesor | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>
        <section class="home">
            <div class="contenido">


                <div class="container arriba">
                    <div>
                        <header>Profesor</header>

                        <div class="pag">
                            <a href="profesor.jsp">Inicio</a><a> >> </a><a href="consultarAlumno.jsp" >Alumnos</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>


                <%            if (request.getAttribute("mensajeError") != null) { %>
                ${mensajeError}

                <%} else {%>
                ${mensajeExito}        
                <%}%>
                   <div class="container ">   
                <table id="example" class="table table-striped" >
                    <thead>
                        <tr>
                            <th style="display: none" >Eps</th> 
                            <th style="display: none" >Lugar nacimiento</th>
                            <th>Nombre1</th>
                            <th>Nombre2</th>
                            <th>Apellido1</th>
                            <th>Apellido2</th>
                            <th>Nuip</th>
                            <th>Fecha nacimiento</th> 
                            <th style="display: none">Grupo sanguineo</th> 
                            <th style="display: none">Numero de hermanos</th> 
                            <th>Dirección</th> 
                            <th>Telefono fijo</th> 
                            <th>Telefono celular</th> 
                            <th style="display: none">Alergias</th> 
                            <th style="display: none">Medicina</th> 
                            <th style="display: none">Peso</th> 
                            <th style="display: none">Altura</th> 
                            <th style="display: none">Enfermedades</th>
                            <th style="display: none">Descripcion</th>
                            <th>Opciones</th> 

                        </tr
                    </thead>

                    <%
                        ProfesorVO proVO = new ProfesorVO();
                        ProfesorDAO proDAO = new ProfesorDAO();
                        ArrayList<ProfesorVO> listaAlumnos = proDAO.listar();
                        for (int i = 0; i < listaAlumnos.size(); i++) {

                            proVO = listaAlumnos.get(i);
                    %>
                    <tbody>
                        <tr>
                            <td style="display: none"><%=proVO.getNOM_ALUM1()%></td>
                            <td style="display: none"><%=proVO.getNOM_ALUM2()%></td>
                            <td><%=proVO.getAPEL_ALUM1()%></td>
                            <td><%=proVO.getAPEL_ALUM2()%></td>
                            <td><%=proVO.getNUIP_ALUM()%></td>
                            <td><%=proVO.getFECHANACI_ALUM()%></td>
                            <td><%=proVO.getLUGARNACI_ALUM()%></td>
                            <td><%=proVO.getGRUPOSANGUI_ALUM()%></td>
                            <td style="display: none"><%=proVO.getNUMHERMA_ALUM()%></td>
                            <td style="display: none"><%=proVO.getDIREC_ALUM()%></td>
                            <td><%=proVO.getTELECELURAR_ALUM()%></td>
                            <td><%=proVO.getTELEFIJO_ALUM()%></td>
                            <td><%=proVO.getEPS_ALUM()%></td>
                            <td style="display: none"><%=proVO.getALERGIAS_ALUM()%></td>
                            <td style="display: none"><%=proVO.getMEDICA_ALUM()%></td>
                            <td style="display: none"><%=proVO.getPESO_ALUM()%></td>
                            <td style="display: none"><%=proVO.getALTURA_ALUM()%></td>
                            <td style="display: none"><%=proVO.getENFERM_ALUM()%></td>
                            <td style="display: none"><%=proVO.getDESCENFER_ALUM()%></td>

                            <td>
                                <form method="post" action="Matricula">

                                    <button class="bn60" name="textAlum" value="<%= proVO.getID_ALUM()%>" >Ver</button>

                                    <input type="hidden" value="1" name="opcion"> 
                                </form>

                            </td>


                        </tr>
                    </tbody>
                    <%}%>
                </table>
                   </div>
                <br><br>

            </div>

        </section>



        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

        <script>
            $(document).ready(function () {
                $('#example').DataTable({
                    language: {
                        url: '//cdn.datatables.net/plug-ins/1.12.1/i18n/es-ES.json'
                    }
                });
            });
        </script>
    </body>
</html>
