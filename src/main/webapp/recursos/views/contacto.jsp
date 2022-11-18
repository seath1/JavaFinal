<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="Nombre" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 27/10/2022
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <%@include file="head.jsp" %>
</head>
<body>

<%@include file="menu.jsp" %>



<h1>Formulario de Contacto</h1>
<div class="contacto">
    <spring:url value="/contacto/guardar" var="guardarURL"/>
    <form:form modelAttribute="contactoForm" method="post" action="${guardarURL}" cssClass="form">
        <form:hidden path="idContacto"/>
       <label for="nombre">Nombre:</label>
        <form:input type="text" path="nombreContacto" id="nombre" maxlength="50" required=""/>
        <br>
        <br>

        <label for="miemail">E-mail:</label>
        <form:input type="email" path="emailContacto" id="miemail" maxlength="40" required=""/>

        <br>
        <br>
        <label for="mensaje">Mensaje:</label>
        <form:input type="text" path="mensajeContacto" id="mensaje" maxlength="200" required=""/>
        <br>
        <br>
        <br>


        <button class="btn btn-primary" type="submit">Enviar</button>


    </form:form>

</div>

<%@include file="footer.jsp" %>
</body>
</html>

