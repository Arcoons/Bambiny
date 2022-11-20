<%-- 
    Document   : ConsultarDocumentos
    Created on : 08-nov-2022, 12:07:51
    Author     : yoang
--%>

<%@page import="ModeloDAO.AcudienteDAO2"%>
<%@page import="ModeloVO.AcudienteVO2"%>
<%@page import="ModeloVO.docuVO"%>
<%@page import="ModeloDAO.docuDAO"%>
<%@page import="ModeloVO.docuVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.FamiliarDAO"%>
<%@page import="ModeloVO.familiarVO"%>
<%@page import="ModeloVO.lunacVO"%>
<%@page import="ModeloDAO.lunacDAO"%>
<%@page import="ModeloVO.EpsVO"%>
<%@page import="ModeloDAO.EpsDAO"%>
<%@page import="ModeloVO.AlumnoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!----======== CSS ======== -->
        <link href="Estilos/form2.css" rel="stylesheet" type="text/css"/>
        <link href="Estilos/generales.css" rel="stylesheet" type="text/css"/>
        <!----===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" rel="stylesheet" />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/jardin/IconoNegro.ico">
        <title>Informacion Alumno | Bambiny</title>
    </head>
    <body>
        <%@include file="NavBar.jsp" %>
        <section class="home">
            <div class="contenido">
               
                <%            AlumnoVO aluVO = (AlumnoVO) request.getAttribute("datosConsultados");
                    if (aluVO != null) {
                %>



                <div class="container">
                    <header>Datos del alumno</header>
                    <form method="post" action="Alumno">
                        <div class="form first">
                            <div class="details personal">
                                <span class="title">Datos Personales</span>

                                <div class="fields">
                                    <div class="input-field">
                                        <label>Primer Nombre</label>
                                        <input type="text" name="textnom1_alum" value="<%= aluVO.getNom1_alum()%>" readonly="">
                                    </div>

                                    <div class="input-field">
                                        <label>Primer Apellido</label>
                                        <input type="text" name="textapel1_alum" value="<%= aluVO.getApel1_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Fecha de nacimiento</label>
                                        <input type="date" name="textfechnaci_alum"  value="<%= aluVO.getFechnaci_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Segundo Nombre</label>
                                        <input type="text" name="textnom2_alum" value="<%= aluVO.getNom2_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Segundo Apellido</label>
                                        <input type="text" name="textapel2_alum" value="<%= aluVO.getApel2_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Numero Nuip</label>
                                        <input type="number" name="textnuip_alumn" value="<%= aluVO.getNuip_alumn()%>" readonly>
                                    </div>

                                </div>
                            </div>

                            <div class="details personal">
                                <span class="title">Sobre ti</span>

                                <div class="fields">



                                    <div class="input-field">
                                        <label>Eps</label>
                                        <select name="textid_eps" disabled="">


                                            <%                        EpsDAO epsDAO = new EpsDAO();
                                                for (EpsVO epsVO : epsDAO.listar()) {
                                            %>
                                            <option value="<%= epsVO.getId_eps()%>"> <%= epsVO.getNom_eps()%></option>
                                            <%}%>
                                        </select>
                                    </div>

                                    <div class="input-field">
                                        <label>Lugar de Nacimiento</label>
                                        <select name="textid_luganaci" disabled>


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
                                        <input type="number" name="textnumherma_alum" value="<%= aluVO.getNumherma_alum()%>" readonly >
                                    </div>

                                    <div class="input-field">
                                        <label>Grupo Sanguineo</label>
                                        <input type="text" name="textgrupsangui_alum" value="<%= aluVO.getGrupsangui_alum()%>" readonly >
                                    </div>


                                </div>
                            </div>

                            <div class="details personal">
                                <span class="title">Informacion de Contacto</span>

                                <div class="fields">

                                    <div class="input-field">
                                        <label>Direccion de Domicilio</label>
                                        <input type="text" name="textdirec_alum" value="<%= aluVO.getDirec_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Telefono fijo</label>
                                        <input type="number" name="texttelefijo_alum" value="<%= aluVO.getTelefijo_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Telefono Celular</label>
                                        <input type="number" name="texttelecelu_alum" value="<%= aluVO.getTelecelu_alum()%>" readonly>
                                    </div>



                                </div>
                            </div>


                            <div class="details ID">
                                <span class="title">Sobre tu Salud</span>

                                <div class="fields">
                                    <div class="input-field">
                                        <label>Alergias</label>
                                        <input type="text" name="textalerg_alum" value="<%= aluVO.getAlerg_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Medicamentos</label>
                                        <input type="text" name="textmedica_alumd" value="<%= aluVO.getMedica_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Peso al nacer</label>
                                        <input type="text" name="textpeso_alum" value="<%= aluVO.getPeso_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Altura al nacer</label>
                                        <input type="text" name="textaltura_alum" value="<%= aluVO.getAltura_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Enfermedades</label>
                                        <input type="text" name="textenferm_alum" value="<%= aluVO.getEnferm_alum()%>" readonly>
                                    </div>

                                    <div class="input-field">
                                        <label>Descripcion de la enfermedad</label>
                                        <input name="textdescenferm_alum" value="<%= aluVO.getDescenferm_alum()%>" readonly>
                                    </div>


                                </div>


                            </div> 

                        </div>


                    </form>

                </div><br>           




                <%}%>

                <%
                    String id_alum = aluVO.getId_alum();
                %>
                <br>
                <br>
                <div class="container">
                    <h1>Familiares</h1>
                    <form class="acu" method="post" action="Familiar">

                        <table id="example" class="table table-striped">
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

                                </tr>
                            </thead>
                            <%
                                familiarVO FamiVO = new familiarVO();
                                FamiliarDAO FamiDAO = new FamiliarDAO();

                                ArrayList<familiarVO> ListarFami = FamiDAO.listarFami(id_alum);
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


                            </tr>
                            <%}%>




                        </table>
                    </form>
                    <br>
                    <br>
                    <h1>Acudientes</h1>
                    <form class="acu" method="post" action="Acudientes">

                        <table id="example" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>                               
                                    <th>Nombre</th>
                                    <th>Apellido</th>                                
                                    <th>Numero documento</th>
                                    <th>Telefono celular</th>
                                    <th>Direccion</th>  
                                    <th>Estado</th> 
                                    <th>Fecha de nacimiento</th>

                                </tr>
                            </thead>
                            <%
                                AcudienteVO2 AcuVO = new AcudienteVO2();
                                AcudienteDAO2 AcuDAO = new AcudienteDAO2();

                                ArrayList<AcudienteVO2> ListarA = AcuDAO.listarAcu(id_alum);;
                                for (int i = 0; i < ListarA.size(); i++) {
                                    AcuVO = ListarA.get(i);

                            %>

                            <tr>
                                <td><%= AcuVO.getID_ACUD()%></td>
                                <td><%= AcuVO.getNOM_ACUD1()%> <%= AcuVO.getNOM_ACUD2()%></td>                           
                                <td><%= AcuVO.getAPEL_ACUD1()%> <%= AcuVO.getAPEL_ACUD2()%></td>                            
                                <td><%= AcuVO.getNUMDOCU_ACUD()%></td>
                                <td><%= AcuVO.getTELE_ACUD()%></td>
                                <td><%= AcuVO.getDIREC_ACUD()%></td>
                                <td><%= AcuVO.getESTADOAUTO_ACUD()%></td>
                                <td><%= AcuVO.getFECHNACI_ACUD()%></td>


                            </tr>
                            <%}%>




                        </table>
                    </form>
                    <br>
                    <br>
                    <h1>Documentos</h1>
                    <form method="post" action="Document">

                        <table id="example" class="table table-striped">
                            <thead>
                                <tr>
                                    <th>n</th>
                                    <th>alumno</th>
                                    <th>documento</th>
                                    <th>fecha</th>
                                    <th>archivo</th>

                                </tr>
                            </thead>
                            <%
                                docuVO doVO = new docuVO();
                                docuDAO doDAO = new docuDAO();

                                ArrayList<docuVO> ListarAcu = doDAO.listarDoc(id_alum);
                                for (int i = 0; i < ListarAcu.size(); i++) {
                                    doVO = ListarAcu.get(i);

                            %>

                            <tr>
                                <td><%= doVO.getId_docu()%></td>
                                <td><%= doVO.getId_alum()%></td>
                                <td><%= doVO.getTipo_docu()%></td>
                                <td><%= doVO.getFechcreac_docu()%></td>
                                <td><%= doVO.getArchivo_docu()%></td>


                            </tr>
                            <%}%>

                        </table>
                    </form>
                </div>

            </div>
        </section>


    </body>
</html>
