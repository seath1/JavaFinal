<%--
  Created by IntelliJ IDEA.
  User: Golden Gamers
  Date: 11/11/2022
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@include file="head.jsp"%>
</head>
<body>
<%@include file="menu.jsp"%>
<div    class="container row col-12 justify-content-center" >
  <form action="login" method="post">
    <div class="form-group">
      <label for="exampleInputEmail1">Usuario</label>
      <input type="text" name= "username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Password</label>
      <input type="password" name="password" class="form-control" id="exampleInputPassword1">
    </div>

    <button type="submit" class="btn btn-primary">Enviar</button>
  </form>
  <%@include file="footer.jsp"%>
</body>
</html>
