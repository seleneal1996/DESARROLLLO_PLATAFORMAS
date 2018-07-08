<!DOCTYPE html>
<html lang="en">
<head>
<title>Car Repair | Price List</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" media="screen" href="css/reset.css">
<link rel="stylesheet" type="text/css" media="screen" href="css/style.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700,300' rel='stylesheet' type='text/css'>
<script src="js/jquery-1.7.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<!--[if lt IE 9]>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body>
<div class="bg">
      <%@include file="includes/header.jsp" %>
s
  <section id="content">
    <div class="sub-page">
      <div class="sub-page-left box-9">
        <form action="login/checklogin.jsp" method="post" >
            <p> Inicie sesión al nuevo mundo</p>
            <br>
            <label>Dirección de correo:</label>
            <br>
            <input type="email" name="correo" id="correo" required>
            <br>
            <br>
            <label>Password:</label>
            <br>
            <input type="password" name="contrasena" id="contrasena" required>
            <br>
            <br>
            <input type="submit" name="Submit" value="Acceder">
            <br>
            <br>
        </form>
      </div>
      <div class="sub-page-right">
        <p>Registrate Mr Auto </p>
        <form action="cliente/nuevocliente.jsp" method="POST">
            <label for="nombre">Nombre:<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="nombre" required/>
            <br>
            <label for="dni">DNI:<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="dni" required/>
            <br>
            <label for="correo">Email :<span><em>(requerido)</em></span></label>
            <br>
            <input type="email" name="correo" required/>
            <br>
            <label for="contrasena">Contrasenha<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="contrasena" required/>
            <br>
            <br><br>
            <input type="submit" name="submit" value="Suscribirse"/>
        </form>
        <br>
      </div>
    </div>
  </section>
 <%@include file="includes/foot.jsp" %>
</div>
</body>
</html>