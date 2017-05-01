<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="es.upm.dit.isst.bookAdvisor.model.Editorial" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BookAdvisor - Autores</title>
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
        <link href="css/editoriales-style.css" rel="stylesheet">

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
		 <%@include file="cabecera.jsp" %>
		<!-- end Header -->
		
		<!-- "Secciones" -->
        <section class="templatemo-white-bg">
            <div class="container" style="margin-bottom: 40px;">
                <div class="row">
                    <div class="col-lg-12" style="margin-bottom: -50px;">
                        <h2 class="text-uppercase">Autores</h2>
                        <hr class="templatemo-section-header-hr">
                        <p class="text-uppercase templatemo-section-subheader">Listado de Autores</p>
                    </div>
                    <div class="col-lg-12">
                        <ul class="pagination" style="margin-left: 86px;">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="/autores?letra=A">A</a></li>
                            <li><a href="/autores?letra=B">B</a></li>
                            <li><a href="/autores?letra=B">C</a></li>
                            <li><a href="/autores?letra=D">D</a></li>
                            <li><a href="/autores?letra=E">E</a></li>
                            <li><a href="/autores?letra=F">F</a></li>
                            <li><a href="/autores?letra=G">G</a></li>
                            <li><a href="/autores?letra=H">H</a></li>
                            <li><a href="/autores?letra=I">I</a></li>
                            <li><a href="/autores?letra=J">J</a></li>
                            <li><a href="/autores?letra=K">K</a></li>
                            <li><a href="/autores?letra=L">L</a></li>
                            <li><a href="/autores?letra=M">M</a></li>
                            <li><a href="/autores?letra=N">N</a></li>
                            <li><a href="/autores?letra=Ñ">Ñ</a></li>
                            <li><a href="/autores?letra=O">O</a></li>
                            <li><a href="/autores?letra=P">P</a></li>
                            <li><a href="/autores?letra=Q">Q</a></li>
                            <li><a href="/autores?letra=R">R</a></li>
                            <li><a href="/autores?letra=S">S</a></li>
                            <li><a href="/autores?letra=T">T</a></li>
                            <li><a href="/autores?letra=U">U</a></li>
                            <li><a href="/autores?letra=V">V</a></li>
                            <li><a href="/autores?letra=W">W</a></li>
                            <li><a href="/autores?letra=X">X</a></li>
                            <li><a href="/autores?letra=Y">Y</a></li>
                            <li><a href="/autores?letra=Z">Z</a></li>                              
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
                </div>
	            <div class="row">
                    <!-- Left block, images -->
                    <div class="col-lg-10 col-lg-offset-1">
                        <table class="table">
                            
                         </table>
                    </div>
                    <!-- Right block, text -->
                </div>
            </div>
        </section> <!-- end Product Type -->
 		
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