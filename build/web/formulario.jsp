<%-- 
    Document   : formulario
    Created on : 23/08/2023, 5:25:47 p. m.
    Author     : Estudiante
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Formulario</title>
</head>
<body>
    <form action="Control" method="post">
        Usuario (correo): <input type="email" name="correo" required><br>
        Contraseña: <input type="password" name="contrasena" required><br>
        Edad: <input type="number" name="edad" required><br>
        <input type="submit" value="Enviar">
    </form>
    
    <!-- Esta parte es para mostrar el mensaje de edad -->
    <%
        String mensajeEdad = (String) request.getAttribute("mensajeEdad");
        if (mensajeEdad != null && !mensajeEdad.isEmpty()) {
    %>
        <p>${mensajeEdad}</p>
    <%
        }
    %>
</body>
</html>

