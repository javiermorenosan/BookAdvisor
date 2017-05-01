<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import = "es.upm.dit.isst.bookAdvisor.model.Valoracion" %>
<%@ page import = "es.upm.dit.isst.bookAdvisor.model.Libro" %>
<!DOCTYPE html>
<html lang="en">
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
        <link href="css/libro-style.css" rel="stylesheet">

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
      
         <!-- end Header -->

        <!-- "New Arrivals" -->
        <section class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3 id="nombre-libro" class="text-uppercase">${libro.titulo}</h3>
                    <hr class="templatemo-section-header-hr">
                    <p class="text-uppercase templatemo-section-subheader"></p>
                <div id ="div-derecha">
                    <div id="div-derecha-sub">
                    <div id="resumen" class ="derecha-dentro">
                        <h5><strong>Resumen:</strong></h5>
                        <h6>${libro.resumen}
                        </h6>
                        <h5><strong>Género:</strong></h5>
                        <h6>${libro.genero}
                        </h6>
                    </div>
                    <div id="valoracion"  class ="derecha-dentro">
                    Valoracion: ${libro.valoracion }<br>
                    Veces valorado: ${libro.vecesValorado}<br>
                    <%Libro libro = (Libro)request.getSession().getAttribute("libro"); 
                    	int valoracionEntera = (int)libro.getValoracion();
                    	int estrellas =0;
                    	for (int i=0; i<5; i++){
                    		if(estrellas<valoracionEntera){
                    			estrellas++;
                    			%>
                    			 <label class="estrella-llena">&#9733;</label>
                    			<% 
                    		}
                    		else {
                    			
                    			%>
                    			 <label class="estrella-vacia">&#9733;</label>
                    			
                    <% 
                    		}
                    	}
                    %>
                      <!--  <label class="estrella-llena">&#9733;</label>
                      <label class="estrella-llena">&#9733;</label>
                      <label class="estrella-llena">&#9733;</label>
                      <label class="estrella-vacia">&#9733;</label>
                      <label class="estrella-vacia">&#9733;</label>
                      -->
                    </div>

                    
                    </div>
                </div>
                
                 <c:if test="${not empty lector and empty valoracion}">
                  <div id="div-derecha2">
                    <div id="div-derecha2-sub">
                   
                    <div id="nuevo-comentario"  class ="derecha-dentro">
                        <h5><strong>Añadir valoración:</strong></h5>
                        <form class="" method="post" action="/valoracion">
                        <div class="rating">
  							  <span><input  class="star" type="radio" name="rating" id="str5" value="5"><label for="str5"></label></span>
  							  <span><input class="star" type="radio" name="rating" id="str4" value="4"><label for="str4"></label></span>
  							  <span><input class="star" type="radio" name="rating" id="str3" value="3"><label for="str3"></label></span>
   						  	 <span><input class="star" type="radio" name="rating" id="str2" value="2"><label for="str2"></label></span>
    						<span><input class="star" type="radio" name="rating" id="str1" value="1"><label for="str1"></label></span>
							</div>
							
							<input type="hidden" name="valoracionUser" id="valoracionUser" value="0">
							<input type="hidden" name="libro" id="libro" value="${libro.id}">
                             <textarea class="form-control" name="comentario" rows="5" id="comment"></textarea>
                             <button  type="submit" class="btn-default buscador" id="boton-comentar">Añadir</button>
                        </form>
                    </div>
                    
                    </div>
                   </div>
                    </c:if>  
                   
                </div>
            </div>
                <span>
             
                 <img  src="img/${libro.imagen}" alt="Error al cargar la imagen" id="libro-image" class="img-rounded imagen-libro">
                
                  </span>
                  <span>
                  </span>     
          
        </section> <!-- end "New Arrivals" -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    // Check Radio-box
    $(".rating input:radio").attr("checked", false);
   
    $('.rating input').click(function () {
        $(".rating span").removeClass('checked');
        $(this).parent().addClass('checked');
        
    });

    $('input:radio').change(
      function(){
        var userRating = this.value;
       // document.getElementById("valoracion").value = (String)userRating;
       $(function () {
  		$('#valoracionUser').val(userRating);
		});
       //	alert($("#valoracionUser").val());
    }); 
});
</script>
 <c:if test="${not empty lector and not empty valoracion}">
                   
                        <h5><strong>Tu valoración:</strong></h5>
                        ${valoracion.valoracion}
                        <br>
                        ${valoracion.comentario}
                  	 	
                    </c:if>  
<div id="comentarios"  class ="">
                        <h4><strong>Comentarios:</strong></h4>
                        <c:if test="${not empty valoraciones}">
                        <c:forEach items="${valoraciones}" var="vali">
                        <p>
                        <h5><strong>${vali.lectorNombre}</strong></h5>
                        </p>
                        <p>
                        ${vali.comentario}
                        </p>
                        </c:forEach>
                        </c:if>
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
