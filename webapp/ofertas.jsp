<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="es.upm.dit.isst.bookAdvisor.model.Oferta" %>
<%@ page import="es.upm.dit.isst.bookAdvisor.model.Libreria" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BookAdvisor - Ofertas</title>
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
        <link href="css/libraries-bookstores-style.css" rel="stylesheet">

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

        <!-- "Ofertas y Descuentos" -->
		<div class="container">
            <div class="row">
                <!-- Main content -->
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="text-uppercase">Ofertas y descuentos</h2>
                        <hr class="templatemo-section-header-hr">
                        <p class="text-uppercase templatemo-section-subheader margin-bottom-0">Listado de ofertas</p>
                    </div>
                </div>
                <c:forEach items="${ofertas}" var="oferta">
	                <div class="row">
	                    <div class="col-lg-8 col-md-6 col-sm-12 col-xs-12 text-left">
	                        <div class="col-lg-2 col-md-6 col-sm-12 col-xs-12">
                        		<c:if test="${oferta.descuento lt 30}">
		                            <div class="circuloAzul">
		                                <c:out value="${oferta.descuento}" /> %
		                            </div>
	                            </c:if>
	                            <c:if test="${oferta.descuento gt 29 && oferta.descuento lt 60}">
		                            <div class="circuloAmarillo">
		                                <c:out value="${oferta.descuento}" /> %
		                            </div>
	                            </c:if>
	                            <c:if test="${oferta.descuento gt 59}">
		                            <div class="circuloRojo">
		                                <c:out value="${oferta.descuento}" /> %
		                            </div>
	                            </c:if>
	                        </div>
	                        <div class="post-title">
	                            <h3 class="text-uppercase"><c:out value="${oferta.titulo}" /></h3>
	                        </div>
	                        <div class="post-meta-data">
	                            <p class="gold-text"><i><c:out value="${oferta.libreria.nombre}" /></i></p>
	                        </div>
	                        <c:if test="${not empty oferta.cupon}">
		                        <div class="post-meta-data">
		                            <p class="gold-text"><i>Cupón descuento: "<c:out value="${oferta.cupon}" />"</i></p>
		                        </div>
	                        </c:if>
	                        <c:if test="${empty oferta.cupon}">
		                        <div class="post-meta-data">
		                            <p class="gold-text"><i> </i></p>
		                        </div>
	                        </c:if>
	                        <div class="post-excerpt gray-text">
	                            <p><c:out value="${oferta.descripcion}" /></p>
	                        <div class="post-meta-data">
	                            <p class="gold-text"><i>Válido hasta: <c:out value="${oferta.caducidad}" /></i></p>
	                        </div>
	                            <a href="${oferta.libreria.url}" class="gray-text margin-top-10 post-read-more">
	                            <i class="fa fa-arrow-circle-o-right fa-2x v-align-middle"></i> Visitar la web
	                        </a>
	                        </div>
	                    </div>
	                    <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
	                        <div class="col-lg-8 col-md-6 col-sm-12 col-xs-12" float="right">
	                            <div class="post-img-container">
	                                <img src="img/${oferta.libreria.imagen}" class="post-img img-responsive">
	                            </div>
	                        </div>
	                    </div>
	                </div>
	                <hr>
            	</c:forEach>
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
         <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCnvg6gIvL86Ki2Gzkri258RHJ7M_3yckM&callback=initMap">
    </script> 
    </body>
</html>