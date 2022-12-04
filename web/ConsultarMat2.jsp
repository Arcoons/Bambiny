<%-- 
    Document   : ConsultarMat2
    Created on : 04-sep-2022, 20:27:30
    Author     : yoang
--%>


<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.RolDAO"%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.MatriculaDAO"%>
<%@page import="ModeloVO.MatriculaVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="sweetalert2.min.css">
        <script src="sweetalert2.min.js"></script>
        <link rel="stylesheet" href="sweetalert2.min.css">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Director | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>


        <section class="home">

            <div class="contenido">

                <div class="container arriba">
                    <div>
                        <header>Director</header>

                        <div class="pag">
                            <a href="director.jsp">Inicio</a><p> >> </p><a href="ConsultarMat2.jsp" >Matriculas</a>
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
                <div class="container ">    
                    <h1>Matriculas por registradas</h1>

                    <br>


                    <form method="post" action="GenerarReportes.jsp" target="_black" >
                        <input type="submit" class="bn60" value="Generar Reporte">
                        <input type="hidden" name="nomreporte" value="MatriculasReportes.jasper">
                    </form>
                    <br>

                    <table id="example" class="table table-striped" >
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Director</th>
                                <th>Alumno</th>
                                <th style="display: none">Alumno</th>
                                <th>Registro</th>
                                <th>Fecha ultima modificacion</th>
                                <th>Estado</th>
                                <th>Acciones</th>
                                <th>Acciones</th>

                            </tr>
                        </thead>

                        <%
                            MatriculaVO matVO = new MatriculaVO();
                            MatriculaDAO matDAO = new MatriculaDAO();
                            ArrayList<MatriculaVO> listaMatrEst = matDAO.listarEst();
                            for (int i = 0; i < listaMatrEst.size(); i++) {
                                matVO = listaMatrEst.get(i);


                        %>
                        <tr>
                            <td><%= matVO.getIdMatr()%></td>                        
                            <td><%= matVO.getIdUsua()%></td>
                            <td style="display: none"><%= matVO.getIdAlum()%></td>
                            <td><%= matVO.getAlumMatr()%></td>
                            <td><%= matVO.getRegiMatr()%></td>
                            <td><%= matVO.getFechMatr()%></td>
                            <td><%= matVO.getEstaMatr()%></td>

                            <td>
                                <form method="post" action="Matricula">

                                    <button class="bn60" name="textAlum" value="<%= matVO.getIdAlum()%>" >Ver</button>

                                    <input type="hidden" value="2" name="opcion"> 
                                </form>

                            </td>
                            <td>

                                <form method="post" action="Matricula">
                                    <input type="hidden" name="textUsua" value="<%=rolVO.getRolId()%>">

                                    <button class="bn62" name="textMatr" value="<%= matVO.getIdMatr()%>" >Activar</button>

                                    <input type="hidden" value="6" name="opcion"> 
                                </form>

                            </td>

                        </tr>

                        <% }%>
                    </table>
                </div>
                <br>

            </div>
        </section>



    </body>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
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
</html>

