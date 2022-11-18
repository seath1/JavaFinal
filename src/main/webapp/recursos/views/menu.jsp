<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 27/10/2022
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<header>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: rgba(10, 10, 10, 0.747)">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">AOTROLEVEL</a>
        <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation" >

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/"
                    >Inicio<span class="sr-only">(current)</span></a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/tienda/ver">Tienda</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="${pageContext.request.contextPath}/contacto/agregar"
                            role="button"
                            data-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Contacto
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/contacto/agregar">Contacto</a>
                        <sec:authorize access="!isAuthenticated()">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/contacto/lista">Lista de Contacto</a>
                        </sec:authorize>
                    </div>
                </li>

                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href=""
                            role="button"
                            data-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Usuarios
                    </a>
                    <div class="dropdown-menu">
                        <sec:authorize access="hasAnyAuthority('ADMIN')">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/usuario/agregar">Registrar Usuario</a>
                        </sec:authorize>
                        <sec:authorize access="!isAuthenticated()">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/usuario/lista">Ver Usuarios</a>
                        </sec:authorize>
                    </div>

                    </li>
                    <li class="nav-item dropdown">

                    <a
                            class="nav-link dropdown-toggle"
                            href=""
                            role="button"
                            data-toggle="dropdown"
                            aria-expanded="false"
                    >Productos</a>

                    <div class="dropdown-menu">
                        <sec:authorize access="hasAnyAuthority('ADMIN')">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/producto/agregar">Registrar Producto</a>
                        </sec:authorize>
                        <sec:authorize access="hasAnyAuthority('ADMIN' , 'CLIENTE')">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/producto/lista">Ver Productos</a>
                        </sec:authorize>
                    </div>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/logout"
                    >Logout<span class="sr-only">(current)</span></a
                    >
                </li>

            </ul>
        </div>
    </nav>
    </div>

</header>
</html>