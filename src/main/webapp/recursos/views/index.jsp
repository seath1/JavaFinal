<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="es">
<head>
    <%@include file="head.jsp"%>

</head>
<body>
<%@include file="menu.jsp"%>
<main>
    <div class="bd-example">
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://i.pinimg.com/originals/5a/ef/44/5aef44f26ae50c7439f782c4ade20354.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 style="color: black">Tienda de Ropa al por Mayor</h1>
                        <p style="color: black">Aqui encontraras marcas exclusivas!!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://media.gq.com/photos/61156e22eae2861d94e8974c/master/pass/TRAVIS-FRAGMENT.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 style="color: black">Las mejores colaboraciones</h1>
                        <p style="color: black">como por ejemplo esta colaboracion Jordan x Cactus Jack</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://media.blackandwhite-ff.com/10000/2bb1dfe4-78ba-45b2-a43c-b59b64a44445_tophero350.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h1 style="color: black">Las mejores zapatillas</h1>
                        <p style="color: black">A quien no le gustan las YEZY 350 !!</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>



    <%@include file="footer.jsp"%>

    <!-- link de bootsrap
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script> -->
</body>
</html>

