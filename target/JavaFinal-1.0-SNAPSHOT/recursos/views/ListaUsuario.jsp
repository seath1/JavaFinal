<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 18/11/2022
  Time: 0:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <%@include file="head.jsp"%>

</head>
<body>
<%@include file="menu.jsp" %>
<div class="container">

    <table class="table">
        <thead class="table-info">
        <tr>
            <th>ID</th>
            <th>Nombre completo</th>
            <th>Fecha de Nacimiento</th>
            <th>Rut</th>
            <th>Tipo</th>
            <th>Opción</th>
            <th>Opción</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="usuarios" items="${usuarios}">
            <tr>
                <td>${usuarios.idUsuario}</td>
                <td>${usuarios.nombreCompleto}</td>
                <td>${usuarios.fechaNacimiento}</td>
                <td>${usuarios.run}</td>
                <td>${usuarios.tipo}</td>
                <td>
                    <spring:url value="/usuario/actualizar/${usuarios.idUsuario}" var="actualizarURL"/>
                    <a class="btn btn-info" href="${actualizarURL}" role="button">Editar</a>
                </td>
                <td>
                    <spring:url value="/usuario/eliminar/${usuarios.idUsuario}" var="eliminarURL"/>
                    <a class="btn btn-info" href="${eliminarURL}" role="button">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <spring:url value="/usuario/agregar" var="crearURL"/>
    <a class="btn btn-info" href="${crearURL}" role="button">Agregar Usuario</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
        crossorigin="anonymous"></script>
</body>
</html>
