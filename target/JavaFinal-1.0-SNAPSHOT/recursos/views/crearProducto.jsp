<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 18/11/2022
  Time: 2:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="menu.jsp" %>
<div class="container">
    <spring:url value="/producto/guardar" var="guardarURL" htmlEscape="true"/>
    <form:form modelAttribute="productoForm" method="post" action="${guardarURL}" cssClass="form">
        <form:hidden path="idProducto"/>
        <div class="form-row">
            <div class="col-md-6 mb-3">
                <label for="nombreProducto">Nombre producto</label>
                <form:input path="nombreProducto" id="nombre" maxlength="100"/>
            </div>
            <div class="col-md-6 mb-3">
                <label for="stockProducto">Stock</label>
                <form:input path="stockProducto" id="fecha" maxlength="20"/>
            </div>
            <div class="col-md-6 mb-3">
                <label for="valorUnitario">Valor</label>
                <form:input path="valorUnitario" id="fecha" maxlength="20"/>
            </div>

                <div class="col-md-6 mb-3">
                <label for="tipo">Tipo</label>
                <form:select path="tipoProducto" cssClass="custom-select" id="tipo">
                    <option selected disabled value="">Seleccione...</option>
                    <option>Ropa</option>
                    <option>Accesorios</option>
                    <option>Zapatillas</option>

                </form:select>
            </div>
        </div>
        <div class="col-md-6 mb-3">
        <button class="btn btn-primary" type="submit">Registrar</button>
        </div>
        </div>
    </form:form>
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

