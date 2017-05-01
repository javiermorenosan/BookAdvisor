<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="es.upm.dit.isst.bookAdvisor.model.Lector" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BookAdvisor - Libro</title>
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
        <link href="css/home-style.css" rel="stylesheet">
        <link rel="icon" type="image/png" href="img/logo2.png" />
        <style>
       

          .usuario{
            margin-top: -75px; 
            margin-left: 120px; 
          }

          .credenciales {
            border: 2px solid #D0991E;
            padding-bottom: 15px;
            padding-top: 5px;
            width: 35%;
            margin-left: 60px;
            border-radius: 10px;
            margin-top: 10px;
          }

          h11{
            font-weight: bold;
            color: #D0991E;
          }

          h10{
            
            font-weight: bold;
            color: black;
          }

          .BotonSubir{
            margin-left: -14px;
            margin-top: -50px;

          }
          
          .BotonSubirOferta{
            margin-left: 205px;
            margin-top: -54px;

          }

        </style>

    </head>
    <body>
        <!-- Header -->
         <div class="templatemo-container">
            <div class="templatemo-block-left">
                <div class="templatemo-header-left">
                    <div class="templatemo-header-text-wrap">
                        <div class="templatemo-header-text">
                            <hr class="templatemo-header-hr">
                            <p class="text-uppercase templatemo-slogan">Passion for Reading</p>
                            <p><img src="img/logo1.png" align="right"></p>
                        </div>
                    </div>
                    <div class="templatemo-header-left-overlay"></div>
                    <div class="templatemo-social templatemo-gray-bg">
        

                    </div>
                </div>
            </div>
            <div class="templatemo-block-right">
                <div class="templatemo-header-right">
                    <div class="templatemo-header-right-overlay"></div>
                    <div class="mobile-menu-icon">
                        <i class="fa fa-bars"></i>
                    </div>
                    
                </div>
            </div>
        </div> 
      <div class="templatemo-container">
            <nav class="templatemo-nav">
                <ul class="text-uppercase">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="/libros">Libros</a></li>
                    <li><a href="autores">Autores</a></li>
                    <li><a href="bibliotecas">Bibliotecas</a></li>
                    <li><a href="librerias">Librerías</a></li>
                    <li><a href="editoriales.jsp">Editoriales</a></li>
                    <li><a href="ofertas">Ofertas y descuentos</a></li>
                </ul>
            </nav>
        </div>
        
     <c:if test="${not empty lector}">
            
      <div class="credenciales">
        <div class="templatemo-container">
      	  <div class="imagen" style="margin-left:-10px"><img src="img/no-disponible.jpg" alt="" class="img-circle" style="width:80px;height: 80px;margin-left: 30px;"> </div>
          <div class="usuario">
      	     <h10>${lector.nombre}</h10> 
            <p><h11> Lector </h11></p>
       	    <a href="/logout" class="autenticado">Logout</a>
          </div>
          <div class="BotonSubir">
            <!--<a href="/subir.jsp" class="autenticado">Subir ficha</a>-->
            <%@include file="subir.jsp" %>
          </div>
        </div>
      </div> 
        
     </c:if>
         <c:if test="${not empty libreria}">
        <div class="credenciales">
        <div class="templatemo-container">
          <div class="imagen" style="margin-left:-10px"><img src="img/no-disponible.jpg" alt="" class="img-circle" style="width:80px;height: 80px;margin-left: 30px;"> </div>
          <div class="usuario">
             <h10>${libreria.nombre}</h10> 
            <p><h11> Libreria </h11></p>
            <a href="/logout" class="autenticado">Logout</a>
          </div>
          <div class="BotonSubir">
            <!--<a href="/subir.jsp" class="autenticado">Subir ficha</a>-->
            <%@include file="subir.jsp" %>
          </div>
          <div class="BotonSubirOferta">
            <!--<a href="/subirOferta.jsp" class="autenticado">Publicar oferta</a>-->
            <%@include file="subirOferta.jsp" %>
          </div>
        </div>
      </div> 
     </c:if>
         <c:if test="${not empty biblioteca}">
        <div class="credenciales">
        <div class="templatemo-container">
          <div class="imagen" style="margin-left:-10px"><img src="img/no-disponible.jpg" alt="" class="img-circle" style="width:80px;height: 80px;margin-left: 30px;"> </div>
          <div class="usuario">
             <h10>${biblioteca.nombre}</h10> 
            <p><h11> Biblioteca </h11></p>
            <a href="/logout" class="autenticado">Logout</a>
         </div>
          <div class="BotonSubir">
            <!--<a href="/subir.jsp" class="autenticado">Subir ficha</a>-->
            <%@include file="subir.jsp" %>
          </div>
        </div>
      </div> 
     </c:if>
      <c:if test="${not empty editorial}">
        <div class="credenciales">
        <div class="templatemo-container">
          <div class="imagen" style="margin-left:-10px"><img src="img/no-disponible.jpg" alt="" class="img-circle" style="width:80px;height: 80px;margin-left: 30px;"> </div>
          <div class="usuario">
             <h10>${editorial.nombre}</h10> 
            <p><h11> Editorial </h11></p>
            <a href="/logout" class="autenticado">Logout</a>
          </div>
        </div>
      </div> 
     </c:if>
         <!-- end Header -->


</body>
</html>