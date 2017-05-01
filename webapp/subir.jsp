<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
<% BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService(); %>
    
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Título</title>
    <meta charset="UTF-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/subir-style.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="img/logo2.png" />

</head>
<body>
    <div class="box">
        <a class="button" href="#popup1">Subir una ficha</a>
    </div>      
    <div id="popup1" class="overlay" style="overflow: scroll;">
        <div class="popup">
            <h1 style="text-align: center;text-decoration: underline;margin-bottom: -10px;"> Subir una ficha </h1>
            <form class="form-subir" role="form" method="post" action="/subir" style="margin-left: -3px;margin-top: 22px;">
                <div class="form-group">
                    <a class="close" href="#">&times;</a>
                    <label for="titulo">Título</label>
                    <input type="text" class="form-control" name="titulo" id="titulo"/>
                    <label for="autor">Autor</label>
                    <input type="text" class="form-control" name="autor" id="autor" />
                    <label for="genero">Género</label>
                    <select name="genero" class="form-control">
                        <option value="SinGénero">Seleccione un género literario</option>
                        <option value="Policial">Policial</option> 
                        <option value="Romantico">Romántico</option>
                        <option value="Terror">Terror</option> 
                        <option value="CienciaFiccion">Ciencia Ficción</option> 
                        <option value="Aventura">Aventura</option> 

                    </select>
                    <label for="comentarios">Resumen</label> 
                    <textarea class="form-control" name="resumen" style="width: 320px; height: 100px; border-radius: 4px"></textarea>
                        
                </div>
                <div class="drag-drop">
                    <input type="file" name="file" id="photo" />
                    <span class="fa-stack fa-2x">
                        <i class="fa fa-cloud fa-stack-2x bottom pulsating"></i>
                        <i class="fa fa-circle fa-stack-1x top medium"></i>
                        <i class="fa fa-arrow-circle-up fa-stack-1x top"></i>
                    </span>
                    <span class="desc">Pulse aquí para subir una ficha</span>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
                <button type="reset" class="btn btn-default">Borrar todo</button>
            </form>
        </div>
    </div> 
</body>
</html>