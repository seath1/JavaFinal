<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 27/10/2022
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <%@include file="head.jsp"%>

</head>
<body>
    <%@include file="menu.jsp"%>
<main>
    <div>
        <h2>Productos</h2>
    </div>

    <div class="card mb-3" style="max-width: 540px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="http://moodstore.es/wp-content/uploads/2022/03/CTR008A-300x300.png" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Ropa</h5>
                    <p class="card-text">Podras encontrar distintas prendas de vestir desde hoodies hasta calcetines!!</p>
                    <p class="card-text"><small class="text-muted">Hoddie essential blanco</small></p>
                </div>
            </div>
        </div>
    </div>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="https://cdn.shopify.com/s/files/1/0414/8917/0599/products/1_2_30b5e275-e3bf-441c-a67f-75305d278643_large.png?v=1655982043" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h5 class="card-title">Accesorios</h5>
                    <p class="card-text">Tambien tenemos accesorios de las mejores marcas!! </p>
                    <p class="card-text"><small class="text-muted">New Era Chicago Bulls</small></p>
                </div>
            </div>
        </div>
    </div>
    <div class="card mb-3" style="max-width: 540px;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="https://static.nike.com/a/images/t_default/e777c881-5b62-4250-92a6-362967f54cca/calzado-air-force-1-07-Dz225W.png" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body">Zapatillas</h5>
                    <p class="card-text">Y por si fuera poco el plato fuerte , las zapatillas !! </p>
                    <p class="card-text"><small class="text-muted">Nike Air force one</small></p>
                </div>
            </div>
        </div>
    </div>


    </div>
    <%@include file="footer.jsp"%>

<!-- link de bootsrap
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script> -->
</body>
</html>
