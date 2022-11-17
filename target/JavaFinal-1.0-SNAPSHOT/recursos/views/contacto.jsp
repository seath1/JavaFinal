<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 27/10/2022
  Time: 14:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<%@include file="head.jsp" %>
<%@include file="menu.jsp" %>

<h1>Formulario de Contacto</h1>
<br/>
<br/>
<div class="contacto">
    <form action="contacto" name="miformulario" id="miformulario" method="post">
        Nombre:
        <input
                type="text"
                name="nombre"
                id="nombre"
                maxlength="50"
                required
        />
        <br/>
        <br/>

        Email:
        <input
                type="email"
                name="miEmail"
                id="miemail"
                maxlength="40"
                required
        />

        <br/>
        <br/>
        Mensaje:
        <input
                type="text"
                name="mensaje"
                id="mensaje"
                maxlength="200"
                required
        />
        <br/>
        <br/>
        <br/>
        <input id="button" type="submit" value="Enviar"/>
    </form>

</div>

<%@include file="footer.jsp" %>
</html>

