<%-- 
    Document   : Menu
    Created on : 25/10/2022, 10:04:16 AM
    Author     : ranyerino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!----======== CSS ======== -->

        
        <!----===== Boxicons CSS ===== -->
        <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Menu | Bambiny</title>
    </head>
    <body>
        <% RolVO rolVO = new RolVO();
            RolDAO rolDAO = new RolDAO();
            ArrayList<RolVO> listaDatos = rolDAO.listar(usuario);

            for (int i = 0; i < listaDatos.size(); i++) {

                rolVO = listaDatos.get(i);
            }
        %>
        
        
        <div class="contenido" style="background-color: peachpuff">
            <div class="container arriba">
                    <div>
                        <header>Menu</header>

                        <div class="pag">
                            <a href="Menu.jsp">Inicio</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>
                <h1>Seleccione el rol con el que desea ingresar al sistema</h1>

                <div class="menu">

                    <div class="m">
                        <div>
                            <h1>Paginas</h1>
                        </div>
                        <div class="cards">
                            <div class="colu">
                                <%if (rolVO.getRolTiPo().equals("admin")) {

                                %>
                                <div class="uno">
                                    <img src="./assets/jardin/perfil.png" alt="imagen">
                                    <div class="info">
                                        <h4>Admin</h4>
                                        <p>Llena un formulario con tus datos para mayor accesibilidad </p>
                                        <a href="perfil.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>

                                <%}
                                    if (rolVO.getRolTiPo().equals("director")) {
                                %>
                                <div class="uno">
                                    <img src="./assets/jardin/perfil.png" alt="imagen">
                                    <div class="info">
                                        <h4>Director</h4>
                                        <p>Llena un formulario con tus datos para mayor accesibilidad </p>
                                        <a href="perfil.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>

                                <%}
                                    if (rolVO.getRolTiPo().equals("profesor")) {
                                %>
                                
                                <div class="uno">
                                    <img src="./assets/jardin/perfil.png" alt="imagen">
                                    <div class="info">
                                        <h4>Profesor</h4>
                                        <p>Llena un formulario con tus datos para mayor accesibilidad </p>
                                        <a href="perfil.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>

                                <%}
                                    if (rolVO.getRolTiPo().equals("alumno")) {
                                %>
                                
                                 <div class="uno">
                                    <img src="./assets/jardin/perfil.png" alt="imagen">
                                    <div class="info">
                                        <h4>Alumno</h4>
                                        <p>Llena un formulario con tus datos para mayor accesibilidad </p>
                                        <a href="perfil.jsp"><i class='bx bx-log-in-circle'></i>Ingresar</a>
                                    </div>
                                </div>

                                <%}    %>

                            </div>
                        </div>
                    </div>



                </div>


            </div>


   
    </body>
</html>
