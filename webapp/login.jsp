<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BookAdvisor - Login</title>
        <meta name="description" content="">
        <meta name="author" content="templatemo">
        <!-- 
        Luxury Gold Template
        http://www.templatemo.com/preview/templatemo_456_luxury_gold
        -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Dancing+Script' rel='stylesheet' type='text/css'>
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/estilos-login.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="icon" type="image/png" href="img/logo2.png" />
    </head>
    <body>
        <!-- Header -->
     <%
    if (request.getSession().getAttribute("mensaje")!=null){
    	String mensaje = (String)request.getSession().getAttribute("mensaje");
    %>	
    	<div class="alert alert-warning">
    	  <strong><%= mensaje %></strong>
    	</div>
    <%
    	request.getSession().removeAttribute("mensaje");
    }
    %>
        <div class="templatemo-header-left"></div>
           
        
        <div id="div-login">
            <div class="templatemo-container">
              <div class="wrapper">
                    <form class="form-signin" method="post" action="/compruebaLogin" style="background-color: black;opacity: 0.9;margin-bottom: pad;padding-bottom: 20px;border-radius: 5px;">    
                        <img src="img/logo4.png" style="width: 215px; margin-left: 45px;margin-bottom: 10px;margin-top: 15px;">
                        <!-- <h2 class="form-signin-heading">BOOKADVISOR</h2> -->
                        <input type="text" class="form-control" name="username" placeholder="Email" required="" autofocus="" />
                        <input type="password" class="form-control" name="password" placeholder="Contraseña" required=""/>      
                        <label class="checkbox">
                            <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Recordar Contraseña 
                        </label>
                        <button class="btn btn-lg btn-primary btn-block" type="submit" style="font-size: 13px;background-color: #D0AF51;border-color: #D0AF51;">LOGIN</button> 
                        <a class="btn btn-block btn-social btn-facebook" onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-facebook']);">
                            <span class="fa fa-facebook"></span> Login con Facebook
                        </a>  
                        <a class="btn btn-block btn-social btn-google" onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-google']);">
                            <span class="fa fa-google"></span> Login con Google
                        </a>
                         <a class="btn btn-block btn-social btn-instagram" onclick="_gaq.push(['_trackEvent', 'btn-social', 'click', 'btn-instagram']);">
                            <span class="fa fa-instagram"></span> Login con Instagram
                        </a>
                        <div class ="texto-login" style="text-align: center;margin-top: 10px;" color>
                            <p class="gray-text">
                            <a href="#"> ¿Has olvidado tu contraseña? </a>
                            <p class="gray-text" style="margin-top: -10px;">
                            <a href="elegirRegistro.html"> ¿No tienes una cuenta? <b>Registrate</b> </a>
                            <p class="gray-text" style="margin-top: -10px;">
                            <a href="index.html"> Volver </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>

         <!-- "About Us" -->
         <!-- end "About Us" -->

        <footer class="text-center">
            <p class="text-uppercase">
                <img src="img/logo2.png" style="width: 50px;">
                2017 BookAdvisor 
            </p>
        </footer>
        <!-- JS -->
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
        <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

    </body>
</html>
