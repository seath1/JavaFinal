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
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index">Christian Muñoz</a>
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
                    <a class="nav-link" href="${pageContext.request.contextPath}/index"
                    >Inicio<span class="sr-only">(current)</span></a
                    >
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/tienda/ver">Tienda</a>
                </li>
                <li class="nav-item dropdown">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            role="button"
                            data-toggle="dropdown"
                            aria-expanded="false"
                    >
                        Proyecto
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/contacto/ver">Contacto</a>
                        <a class="dropdown-item" href=${pageContext.request.contextPath}/listacontacto/ver">Lista de Contacto</a>
                    </div>
                </li>

            </ul>
        </div>
    </nav>
    </div>

</header>
</html>