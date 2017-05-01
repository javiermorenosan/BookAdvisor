<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BookAdvisor - Inicio</title>
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

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="icon" type="image/png" href="img/logo2.png" />

    </head>
    <body>
   		<%@include file="cabecera.jsp" %>
        <!-- "Secciones" -->
        <section class="templatemo-white-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-uppercase">Secciones</h2>
                        <hr class="templatemo-section-header-hr">
                        <p class="text-uppercase templatemo-section-subheader">BookAdvisor</p>
                    </div>
                </div>
                <div class="row">
                    <!-- Left block, images -->
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 text-center">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <a href="libros.html">
                                    <div class="product-type-container">
                                        <div class="product-type-overlay">
                                            <div class="product-type-info">
                                                <i class="fa fa-search fa-2x gold-text"></i>
                                                <h3 class="gold-text text-uppercase">Libros</h3>
                                            </div>
                                        </div>
                                        <img src="img/books.jpeg" alt="Product Type 1" class="product-type-img img-responsive">
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <a href="autores.html">
                                    <div class="product-type-container">
                                        <div class="product-type-overlay">
                                            <div class="product-type-info">
                                                <i class="fa fa-search fa-2x gold-text"></i>
                                                <h3 class="gold-text text-uppercase">Autores</h3>
                                            </div>
                                        </div>
                                        <img src="img/author.jpeg" alt="Product Type 2" class="product-type-img img-responsive">
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <a href="bibliotecas.html">
                                    <div class="product-type-container">
                                        <div class="product-type-overlay">
                                            <div class="product-type-info">
                                                <i class="fa fa-search fa-2x gold-text"></i>
                                                <h3 class="gold-text text-uppercase">Bibliotecas</h3>
                                            </div>
                                        </div>
                                        <img src="img/library.jpeg" alt="Product Type 3" class="product-type-img img-responsive">
                                    </div>
                                </a>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <a href="librerias.html">
                                    <div class="product-type-container">
                                        <div class="product-type-overlay">
                                            <div class="product-type-info">
                                                <i class="fa fa-search fa-2x gold-text"></i>
                                                <h3 class="gold-text text-uppercase">Librerías</h3>
                                            </div>
                                        </div>
                                        <img src="img/bookstore.jpeg" alt="Product Type 4" class="product-type-img img-responsive">
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!-- Right block, text -->
                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <div class="gold-border">
                            <div class="product-type-message">
                                <h3 class="text-uppercase gray-text product-type-message-title" align="center"><b>registrarse</b></h3>
                                <p class="gray-text">
                                <p align="center"> 
                                    <a href="/registroLector" class="text-uppercase btn-gold-bordered">LECTOR</a>
                                    <a href="/registroBiblioteca" class="text-uppercase btn-gold-bordered">BIBLIOTECA</a>
                                </p>
                                <p align="center">
                                    <a href="/registroLibreria" class="text-uppercase btn-gold-bordered">LIBRERÍA</a>
                                    <a href="/registroEditorial" class="text-uppercase btn-gold-bordered">EDITORIAL</a>
                                </p>
                                <p  align="center">
                                    <a href="/login" class="text-uppercase btn-gold-bordered-big"><b>LOGIN</b></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> <!-- end Product Type -->

        <!-- "New Arrivals" -->
        <section class="container">
            
            <div class="row">
                <div class="product-type-message">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="text-uppercase h2-1">Acerca de</h2>
                            <hr class="templatemo-section-header-hr">
                            <p class="text-uppercase templatemo-section-subheader">BookAdvisor</p>
                        </div>
                    </div>
                    <p class="gray-text">
                        BookAdvisor es un servicio online de gestión de un catálogo de libros cuyos principales objetivos son el fomento de la lectura, el consumo legal de libros y la difusión cultural.
                    <p class="gray-text">
                        En él, un usuario podrá consultar un catálogo de libros, intercambiar un libro con otro usuario, comentar y valorar libros que se haya leído así como consultar la disponibilidad de un libro en sus librerías y bibliotecas más cercanas.
                    <p class="gray-text">
                        Por su parte, las librerías, bibliotecas y editoriales podrán publicar el listado de libros disponibles para su adquisición y consumo por parte de los lectores.
                </div>
            </div>
        </section> <!-- end "New Arrivals" -->
        
        <!-- "About Us" -->
        <section class="templatemo-dark-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="text-uppercase gold-text">Equipo BookAdvisor</h2>
                        <hr class="templatemo-about-hr">
                        <p class="templatemo-about-subtitle">Integrantes</p>
                        <hr class="templatemo-about-hr">
                        <p class="gray-text about-us-text">
                         <div class="contacto" style="margin-top: -20px;">
                            <div class="imagen"><img src="img/javier.png" alt="" class="img-circle" style="width:80px;"> 
                            </div>
                            <div class="puesto">
                                <contacto> Javier Moreno Sánchez</contacto> 
                                <p><puesto class="gold-text"> Product Owner </jefe></p>
                            </div>
                          </div></p>
                        <p class="gray-text about-us-text">
                         <div class="contacto">
                            <div class="imagen"><img src="img/edu.png" alt="" class="img-circle" style="width:80px;"> 
                            </div>
                            <div class="puesto">
                                <contacto> Eduardo Olarte Aguinaga</contacto> 
                                <p><puesto class="gold-text"> Scrum Master </jefe></p>
                            </div>
                          </div></p>
                        <p class="gray-text about-us-text">
                         <div class="contacto">
                            <div class="imagen"><img src="img/luis.png" alt="" class="img-circle" style="width:80px;"> 
                            </div>
                            <div class="puesto">
                                <contacto> Luis García de Fernando</contacto> 
                                <p><puesto class="gold-text"> Developer Team </jefe></p>
                            </div>
                          </div></p>
                        <p class="gray-text about-us-text">
                         <div class="contacto">
                            <div class="imagen"><img src="img/santi.png" alt="" class="img-circle" style="width:80px;"> 
                            </div>
                            <div class="puesto">
                                <contacto> Santiago Pantín de Prado</contacto> 
                                <p><puesto class="gold-text"> Developer Team </jefe></p>
                            </div>
                          </div></p>
                        <p class="gray-text about-us-text">
                         <div class="contacto">
                            <div class="imagen"><img src="img/nuria.png" alt="" class="img-circle" style="width:80px;"> 
                            </div>
                            <div class="puesto">
                                <contacto> Nuria de los Reyes Hípola</contacto> 
                                <p><puesto class="gold-text"> Developer Team </jefe></p>
                            </div>
                          </div></p>
                    </div>
                </div>
            </div>
        </section> <!-- end "About Us" -->

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
