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
<html>

<%@include file="head.jsp"%>
<body>
<h1>Lista de Contacto</h1>
<br/>
<br/>
<div id="backgroundList">
    <div class="container-fluid">
        <%@include file="menu.jsp" %>
        <table class="table table-dark">
            <thead>
            <tr>
                <th scope="col">id_contacto</th>
                <th scope="col">Nombre_contacto</th>
                <th scope="col">Email_Contacto</th>
                <th scope="col">Mensaje_Contacto</th>
                <th scope="col">Opcion</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="contactos" items="${contactos}">

                <tr>
                    <td><c:out value="${contactos.getIdContacto()}"/></td>
                    <td><c:out value="${contactos.getNombreContacto()}"/></td>
                    <td><c:out value="${contactos.getEmailContacto()}"/></td>
                    <td><c:out value="${contactos.getMensajeContacto()}"/></td>

                    <td>
                        <form class="col-md-1" action="EliminarContacto" method="post">
                            <button title="eliminar" type="submit" class="btn btn-danger"
                                    name="id" value="${contactos.getIdContacto()}">
                                Eliminar Contacto
                            </button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<%@include file="footer.jsp"%>
</html>
