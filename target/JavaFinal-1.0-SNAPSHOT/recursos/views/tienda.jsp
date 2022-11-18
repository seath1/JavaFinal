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
    <div class="cproduct">
        <!-- <div class="productos">
          <img
            src="https://static.nike.com/a/images/t_default/e777c881-5b62-4250-92a6-362967f54cca/calzado-air-force-1-07-Dz225W.png"
            alt="nike air force 1"
            style="width: 80%"
          />
          <h4>Nike Air Force 1</h4>
          <p class="precio">$69.990</p>
          <p>Nike Air force one</p>
          <p><button>Comprar</button></p>
        </div>
        <div class="separador"></div>
        <div class="productos">
          <img
            src="https://cdn.shopify.com/s/files/1/0414/8917/0599/products/1_2_30b5e275-e3bf-441c-a67f-75305d278643_large.png?v=1655982043"
            alt="nike air force 1"
            style="width: 80%"
          />
          <h4>Gorra Chicago Bulls</h4>
          <p class="precio">$19.990</p>
          <p>New Era Chicago Bulls</p>
          <p><button>Comprar</button></p>
        </div>
        <div class="separador"></div>
        <div class="productos">
          <img
            src="http://moodstore.es/wp-content/uploads/2022/03/CTR008A-300x300.png"
            alt="nike air force 1"
            style="width: 80%"
          />
          <h4>Hoodie essential</h4>
          <p class="precio">$49.990</p>
          <p>Hoddie essential blanco</p>
          <p><button>Comprar</button></p>
        </div> -->
        <div>
            <a class="grouped_elements" rel="group1" href="http://moodstore.es/wp-content/uploads/2022/03/CTR008A-300x300.png"><img src="http://moodstore.es/wp-content/uploads/2022/03/CTR008A-300x300.png" alt=""/></a>
            <h4>Hoodie essential</h4>
            <p class="precio">$49.990</p>
            <p>Hoddie essential blanco</p>
            <p><button>Comprar</button></p>
        </div>
        <div><a class="grouped_elements" rel="group1" href="https://cdn.shopify.com/s/files/1/0414/8917/0599/products/1_2_30b5e275-e3bf-441c-a67f-75305d278643_large.png?v=1655982043"><img src="https://cdn.shopify.com/s/files/1/0414/8917/0599/products/1_2_30b5e275-e3bf-441c-a67f-75305d278643_large.png?v=1655982043" alt=""/></a>
            <h4>Gorra Chicago Bulls</h4>
            <p class="precio">$19.990</p>
            <p>New Era Chicago Bulls</p>
            <p><button>Comprar</button></p> 	</div>
        <div>
            <a class="grouped_elements" rel="group2" href="image_big_3.jpg"><img src="https://static.nike.com/a/images/t_default/e777c881-5b62-4250-92a6-362967f54cca/calzado-air-force-1-07-Dz225W.png" alt=""/></a>
            <h4>Nike Air Force 1</h4>
            <p class="precio">$69.990</p>
            <p>Nike Air force one</p>
            <p><button>Comprar</button></p>
        </div>



    </div>
    <%@include file="footer.jsp"%>

<!-- link de bootsrap
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script> -->
</body>
</html>
