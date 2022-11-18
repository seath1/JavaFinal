<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 03/11/2022
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>

<%@include file="head.jsp"%>
<body>
<div id="backgroundList">
    <%@include file="menu.jsp" %>
    <div class="container-fluid">

        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">id_contacto</th>
                <th scope="col">Nombre_contacto</th>
                <th scope="col">Email_Contacto</th>
                <th scope="col">Mensaje_Contacto</th>
                <th scope="col">Actualizar</th>
                <th scope="col">Eliminar</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="contactos" items="${contactos}">

                <tr>
                    <td>${contactos.idContacto}</td>
                    <td>${contactos.nombreContacto}</td>
                    <td>${contactos.emailContacto}</td>
                    <td>${contactos.mensajeContacto}</td>

                    <td>
                        <spring:url value="/contacto/actualizar/${contactos.idContacto}" var="actualizarURL"/>
                        <a class="btn btn-info" href="${actualizarURL}" role="button">Editar</a>
                    </td>
                    <td>
                        <spring:url value="/contacto/eliminar/${contactos.idContacto}" var="eliminarURL"/>
                        <a class="btn btn-info" href="${eliminarURL}" role="button"> Eliminar Contacto</a>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@include file="footer.jsp"%>
</html>
