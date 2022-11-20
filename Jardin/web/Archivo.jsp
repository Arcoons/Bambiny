<%-- 
    Document   : Archivo
    Created on : 17/11/2022, 11:04:12 AM
    Author     : Sena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="alumno.jsp">Volver</a>
        <form name="upload" action="UploadFileServlet" method="POST" enctype="multipart/form-data">
            <br>
            Documento: <input type="file" name="file">
            <br><br>
            <input type="submit" value="upload" name="upload">
        </form>
    </body>
</html>
