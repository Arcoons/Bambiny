<%-- 
    Document   : roles.jsp
    Created on : 14/09/2022, 08:05:17 AM
    Author     : ranyerino
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.RolDAO"%>
<%@page import="ModeloVO.RolVO"%>
<%@include file="Sesiones.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="Estilos/form1.css" rel="stylesheet" type="text/css"/>

        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <!----======== CSS ======== -->
        <link href="Estilos/NavBar.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <!----===== Boxicons CSS ===== -->
        <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>JSP Page</title>
    </head>
    <body>

        <nav class="sidebar close">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="img/iconnav.png" alt="">
                    </span>

                    <div class="text logo-text">
                        <span class="name">Bambiny</span>
                        <span class="profession"><%= usuario%></span>
                    </div>
                </div>

                <i class="bx bx-chevron-right toggle"></i>
            </header>

            <div class="menu-bar">
                <div class="menu">

                    <li class="search-box li">
                        <i class="bx bx-search icon"></i>
                        <input type="text" placeholder="Search...">
                    </li>

                    <ul class="menu-links">

                        <li class="nav-links">
                            <a href="MenuAdmin.jsp">
                                <i class="bx bx-home-alt icon" ></i>
                                <span class="text nav-text">Inicio</span>
                            </a>
                        </li>    
                        <li class="nav-links">
                            <a href="admin.jsp">
                                <i class='bx bxs-group icon'></i>
                                <span class="text nav-text">Usuarios</span>
                            </a>
                        </li>
                        <li class="nav-links">
                            <a href="perfil.jsp">
                                <i class='bx bx-user icon'></i>
                                <span class="text nav-text">Perfil</span>
                            </a>
                        </li>
                        <li class="nav-links">
                            <a href="registrarUsuario.jsp">
                                <i class='bx bxs-user-plus icon'></i>
                                <span class="text nav-text">Nuevos Usuarios</span>
                            </a>
                        </li>

                    </ul>
                </div>

                <div class="bottom-content">
                    <li class="">

                        <a>
                            <form method="post" action="Sesiones">

                                <button type="submit" class="out-btn">
                                    <i class="bx bx-log-out icon"></i>
                                    <span class="text nav-text">Cerrar Sesion</span>
                                </button>
                            </form>
                        </a>


                    </li>



                    <li class="mode">
                        <div class="sun-moon">
                            <i class="bx bx-moon icon moon"></i>
                            <i class="bx bx-sun icon sun"></i>
                        </div>
                        <span class="mode-text text">Dark mode</span>

                        <div class="toggle-switch">
                            <span class="switch"></span>
                        </div>
                    </li>

                </div>
            </div>

        </nav>


        <section class="home">
            <div class="contenido">


                <div class="container arriba">
                    <div>
                        <header>Administrador</header>

                        <div class="pag">
                            <a href="MenuAdmin.jsp">Inicio</a><p>>></p><a href="admin.jsp" >Usuarios</a><p>>></p><a >Asignar Rol</a>
                        </div>
                    </div>    
                    <div class="boton">
                        <form method="post" action="Sesiones">

                            <input class="cs" type="submit" value="Cerrar Sesion">

                        </form>  
                    </div>

                </div>


                <div class="container cont">
                    <%
                        if (request.getAttribute("mensajeError") != null) { %>
                    ${mensajeError}

                    <%} else {%>
                    ${mensajeExito}        
                    <%}%>
                    <div>
                        <header>Asignar Rol</header>
                        <form method="post" action="Usuario">
                            <div class="form first">
                                <div class="details personal">
                                    <span class="title">Usuario</span>


                                    <div class="user-box">
                                        <h2><%=request.getAttribute("loginUsuario")%></h2><br>
                                    </div>

                                    <div class="user-box">
                                        <h2><%=request.getAttribute("estadoUsuario")%></h2><br>
                                    </div>

                                    <div class="fields">


                                        <div class="input-field">
                                            <label>Roles</label>
                                            <select name="rol">
                                                <option>Elija el rol</option>
                                                <%
                                                    RolVO rolVO = new RolVO();
                                                    RolDAO rolDAO = new RolDAO();
                                                    ArrayList<RolVO> listarRoles = rolDAO.listarRoles();
                                                    for (int i = 0; i < listarRoles.size(); i++) {

                                                        rolVO = listarRoles.get(i);

                                                %>
                                                <option value="<%=rolVO.getRolId()%>"><%=rolVO.getRolTiPo()%></option>
                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>


                                    </div>
                                </div>



                                <button class="sumbit button">
                                    <span class="btnText">Enviar</span>
                                    <i class="uil uil-navigator"></i>
                                </button>
                                <input type="hidden" value="<%=request.getAttribute("idUsuario")%>" name="usuarioID">
                                <input type="hidden" value="9" name="opcion">
                            </div> 
                        </form>
                    </div>
                    <div class="avatar">
                        <img class="img" src="./assets/jardin/sign.svg" alt="avatar">
                    </div>
                </div>

            </div>

        </section>
                                <script src="js/form.js" type="text/javascript"></script>

    </body>
</html>
