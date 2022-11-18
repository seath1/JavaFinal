<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 18/11/2022
  Time: 2:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%@include file="head.jsp"%>
<body>
<div id="backgroundList">
    <%@include file="menu.jsp" %>
    <div class="container-fluid">

        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">id_producto</th>
                <th scope="col">Nombre_producto</th>
                <th scope="col">Stock</th>
                <th scope="col">Valor Unitario</th>
                <th scope="col">tipo</th>
                <th scope="col">Actualizar</th>
                <th scope="col">Eliminar</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="productos" items="${productos}">

                <tr>
                    <td>${productos.idProducto}</td>
                    <td>${productos.nombreProducto}</td>
                    <td>${productos.stockProducto}</td>
                    <td>${productos.valorUnitario}</td>
                    <td>${productos.tipoProducto}</td>

                    <td>
                        <spring:url value="/producto/actualizar/${productos.idProducto}" var="actualizarURL"/>
                        <a class="btn btn-info" href="${actualizarURL}" role="button">Editar</a>
                    </td>
                    <td>
                        <spring:url value="/producto/eliminar/${productos.idProducto}" var="eliminarURL"/>
                        <a class="btn btn-info" href="${eliminarURL}" role="button"> Eliminar </a>

                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@include file="footer.jsp"%>
</html>