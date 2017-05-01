<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="javax.swing.JOptionPane" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BookAdvisor - RegistroBiblioteca</title>
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
        <link href="css/registro.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="icon" type="image/png" href="img/logo2.png" />

    </head>
    <body>
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
        <!-- Header -->
        <div class="templatemo-header-left"></div>
           
        
        <div id="div-login">
            <div class="templatemo-container">
              <div class="wrapper">
                    <form class="form-signin" method="post" action="/registroBiblioteca" style="background-color: black;opacity: 0.9;margin-bottom: pad;padding-bottom: 20px;border-radius: 5px;">     
                        <img src="img/logo4.png" style="width: 215px; margin-left: 45px;margin-bottom: 10px;margin-top: 15px;">
                        <!-- <h2 class="form-signin-heading">BOOKADVISOR</h2> -->
                        <input type="text" class="form-control" name="email" id="email" placeholder="Email" required="" autofocus="" />
                        <input type="text" class="form-control" name="name" id="name" placeholder="Nombre usuario" required="" autofocus="" />
                        <input type="text" class="form-control" name="direccion" id="direccion" placeholder="Dirección biblioteca" required="" autofocus="" />
                        <input type="text" class="form-control" name="url" id="url" placeholder="URL página Web" required="" autofocus="" onclick="myurl()">
                        <script>
                                function myurl() {
                                document.getElementById("url").value="http://";
                                }
                        </script>
                        <textarea name="descripcion" placeholder="Describa su biblioteca" class="form-control" name="descripcion" id="descripcion" required="" autofocus=""style="resize: none;"></textarea>
                        <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña" required=""/>      
                        <input type="password" class="form-control" name="password2" id="password2" placeholder="Repetir la contraseña" required="" style="margin-bottom: 10px;"/>      
                      
                        <div class="drag-drop">
                            <input type="file" multiple="multiple" id="photo" />
                                <span class="fa-stack fa-2x">
                                <i class="fa fa-cloud fa-stack-2x bottom pulsating"></i>
                                <i class="fa fa-circle fa-stack-1x top medium"></i>
                                <i class="fa fa-arrow-circle-up fa-stack-1x top"></i>
                                </span>
                                <span class="desc">Pulse aquí para subir su foto de perfil</span>
                        </div>   
                      
                        <button class="btn btn-lg btn-primary btn-block" type="submit" style="font-size: 13px;background-color: #D0AF51;border-color: #D0AF51;color: white;">Registrarme</button> 
                        
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