<%-- 
    Document   : prueba
    Created on : 21-sep-2022, 18:27:22
    Author     : yoang
--%>

<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@page import="ModeloDAO.docuDAO"%>
<%@page import="ModeloVO.docuVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="Estilos/form1.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="sweetalert2.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Alumno Documentos | Bambiny</title>
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
           
            <div class="contenido">
                <div class="container arriba">
                    <div>
                        <header>Alumno</header>

                        <div class="pag">
                            <a href="alumno.jsp">Inicio</a><a> >> </a><a href="listarDocumentos.jsp" >Tus documentos</a>
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
                
                <div class="container arriba">
                    <br>
                    <h2>Tus Documentos</h2>
                    <br><br>
                    <form method="post" action="Document">

                        <table id="example" class="table table-striped" style="width: 100%">
                            <thead>
                                <tr>
                                    <th>n</th>
                                    <th>alumno</th>
                                    <th>documento</th>
                                    <th>fecha</th>
                                    <th>archivo</th>
                                    <th>opciones</th>
                                </tr>
                            </thead>
                            <%
                                docuVO doVO = new docuVO();
                                docuDAO doDAO = new docuDAO();

                                ArrayList<docuVO> ListarAcu = doDAO.listarDoc(id_alumn);
                                for (int i = 0; i < ListarAcu.size(); i++) {
                                    doVO = ListarAcu.get(i);

                            %>

                            <tr>
                                <td><%= doVO.getId_docu()%></td>
                                <td><%= doVO.getId_alum()%></td>
                                <td><%= doVO.getTipo_docu()%></td>
                                <td><%= doVO.getFechcreac_docu()%></td>
                                <td><%= doVO.getArchivo_docu()%></td>

                                <td>
                                    <form method="post" action="Document">


                                        <button class="bn60" name="textid_docu" value="<%= doVO.getId_docu()%>" >Actualizar</button>

                                        <input type="hidden" value="3" name="opcion"> 
                                    </form>
                                </td>
                            </tr>
                            <%}%>

                        </table>
                    </form>
                </div>
            </div>
        </section>
    </body>

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
