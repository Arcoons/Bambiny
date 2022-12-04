<%-- 
    Document   : listarFamiliar
    Created on : 11-nov-2022, 13:46:04
    Author     : yoang
--%>
<%@page import="ModeloDAO.FamiliarDAO"%>
<%@page import="ModeloVO.familiarVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Estilos/form1.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Alumno Familiar | Bambiny</title>
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
                            <a href="alumno.jsp">Inicio</a><a> >> </a><a href="listarFamiliar.jsp" >Tus Familiares</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>
                <% if (request.getAttribute("MensajeError") != null) { %>

                <h5 class="msgError" >${MensajeError}</h5>  

                <%} else {%>
                <h5 class="msgSucces" >${MensajeExito}</h5> 
                <% } %>
                
                <div class="container arriba">
                    <br><br>
                    <h1>Tus Familiares</h1>

                    
                    <br>
                    <form class="acu" method="post" action="Familiar">

                        <table id="example" class="table table-striped" style="width: 100%">
                            <thead>
                                <tr>

                                    <th>Nombre</th>
                                    <th>Apellido</th>                                
                                    <th>Numero documento</th>
                                    <th>Parentesco</th>
                                    <th>Celular</th>
                                    <th>Fecha de nacimiento</th>
                                    <th>Ocupacion</th>
                                    <th>Lug. Trabajo</th>
                                    <th>Telefono Trabajo</th>
                                    <th>opciones</th>
                                </tr>
                            </thead>
                            <%
                                familiarVO FamiVO = new familiarVO();
                                FamiliarDAO FamiDAO = new FamiliarDAO();

                                ArrayList<familiarVO> ListarFami = FamiDAO.listarFami(id_alumn);
                                for (int i = 0; i < ListarFami.size(); i++) {
                                    FamiVO = ListarFami.get(i);

                            %>

                            <tr>

                                <td><%= FamiVO.getNom1_fami()%> <%= FamiVO.getNom2_fami()%></td> 
                                <td><%= FamiVO.getApel1_fami()%> <%= FamiVO.getApel2_fami()%></td> 
                                <td><%= FamiVO.getNumdocu_fami()%></td> 
                                <td><%= FamiVO.getParent_fami()%></td> 
                                <td><%= FamiVO.getTelecel_fami()%></td> 
                                <td><%= FamiVO.getFechnaci_fami()%></td> 
                                <td><%= FamiVO.getOcupac_fami()%></td> 
                                <td><%= FamiVO.getLugatrab_fami()%></td> 
                                <td><%= FamiVO.getTeletrab_fami()%></td> 

                                <td>
                                    <form method="post" action="Familiar">

                                        <button class="bn60" name="textid_fami" value="<%= FamiVO.getId_fami()%>" >Actualizar</button>
                                        <input name="opcion" value="3" type="hidden">

                                    </form>
                                </td>
                            </tr>
                            <%}%>




                        </table>
                    </form>
                </div>

            </div>
        </section>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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
