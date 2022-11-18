<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 18/11/2022
  Time: 0:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
  <%@include file="head.jsp"%>

</head>
<body>
<%@include file="menu.jsp" %>
<div class="container">
  <spring:url value="/usuario/guardar" var="guardarURL" htmlEscape="true"/>
  <form:form modelAttribute="usuarioForm" method="post" action="${guardarURL}" cssClass="form">
    <form:hidden path="idUsuario"/>
    <div class="form-row">
      <div class="col-md-6 mb-3">
        <label for="nombreCompleto">Nombre completo</label>
        <form:input path="nombreCompleto" id="nombre" maxlength="80"/>
      </div>
      <div class="col-md-6 mb-3">
        <label for="fechaNacimiento">Fecha de nacimiento</label>
        <form:input path="fechaNacimiento" id="fecha" maxlength="20"/>
      </div>
    </div>
    <div class="form-row">
      <div class="col-md-6 mb-3">
        <label for="run">Rut</label>
        <form:input path="run" id="run" maxlength="20" required=""/>
      </div>
      <div class="col-md-3 mb-3">
        <label for="tipo">Tipo</label>
        <form:select path="tipo" cssClass="custom-select" id="tipo">
          <option selected disabled value="">Seleccione...</option>
          <option>Usuario</option>
          <option>Admin</option>

        </form:select>
      </div>
    </div>

    <button class="btn btn-primary" type="submit">Registrar</button>
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

