<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html lang="es">
<head>
    <title>Publicar Oferta</title>
    <meta charset="UTF-8" />
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/subir-style.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="img/logo2.png" />

    <style type="text/css">
            body{
                font-family: tahoma, verdana, sans-serif;
                }
    .capacalendario{
        width: 219px;
        position: absolute;
        display: none;
        background-color: #fff;
        z-index: 2000;"
    }
    .capacalendarioborde{
        padding: 3px;
        border: 1px solid #ddd;
    }
    .diassemana{
        overflow: hidden;
        background: #339;
        margin: 3px 0;
        clear: both;
    }
    .diasmes{
        overflow: hidden;
    }
    .diassemana span, .diasmes span{
        margin: 3px;
        width: 25px;
        display: block;
        float: left;
        text-align: center;
        height: 1.5em;
        line-height: 1.5em;
        font-size: 0.875em;
    }
    .diassemana span{
        text-transform: uppercase;
        color: #fff;
        font-weight: bold;
        height: 1.8em;
        line-height: 1.8em;
    }
    .diasmes span{
        background: #ddd;
        cursor: pointer;
    }
    .diasmes span.diainvalido{
        background: #aaa;
        cursor: default;
    }
    .diasmes span.domingo{
        color: #c00;
    }
    .capacalendario span.primero{
        margin-left:0 !important;
    }
    .capacalendario span.ultimo{
        margin-right:0 !important;
    }

    a.botoncal{
        margin-left: 5px;
        background: transparent url(img/calendario.png) no-repeat;
    }
    a.botoncal span{
        display: inline-table;
        width: 16px;
        height: 16px;
        margin-top: 3px;
    }
    a.botonmessiguiente{
        float: right;
        background: transparent url(img/105.png) no-repeat;
        margin: 5px 5px 0 5px;
    }
    a.botonmessiguiente span, a.botonmesanterior span, a.botoncambiaano span{
        display: inline-table;
        width: 10px;
        height: 10px;
    }
    a.botonmesanterior{
        float: left;
        background: transparent url(img/106.png) no-repeat;
        margin: 5px 5px 0 5px;
    }
    a.botoncambiaano{
        background: transparent url(img/193.png) no-repeat;
        margin: 5px 5px 0 5px;
        font-size: 0.8em;
    }
    .textomesano{
        background-color: #dfd;
        overflow: hidden;
        padding: 2px;
        font-size: 0.8em;
        font-weight: bold;
        text-align: center
    }
    .mesyano{
        margin-top: 3px;
    }
    .visualmesano{
        display: inline;
    }
    .capacerrar{
        background-color: #ddf;
        overflow: hidden;
        padding: 2px;
        font-size: 0.5em;
    }
    a.calencerrar{
        float: right;
        background: transparent url(img/101.png) no-repeat;
        margin: 2px 5px 0 5px;
    }
    a.calencerrar span{
        display: inline-table;
        width: 10px;
        height: 10px;
    }
    .capaselanos{
        width: 50px;
        display: none;
        font-size: 0.8em;
        text-align: center;
        position: absolute;
        background-color: #fff;
        border: 1px solid #ddd;
        z-index: 2000;"
    }
    .capaselanos a{
        display: block;
        text-decoration: none;
        border-bottom: 1px solid #ddd;
        padding: 2px 0;
    }
    .capaselanos a.seleccionado{
        background-color: #eef;
        font-weight: bold;
    }
    .capaselanos a.ultimo{
        border: 0;
    }

</style>
<script language="javascript" src="js/jquery-1.4.4.min.js"></script>
<script language="javascript" type="text/javascript">
    
jQuery.fn.calendarioDW = function() {
   this.each(function(){
        //saber si estoy mostrando el calendario
        var mostrando = false;
        //variable con el calendario
        var calendario;
        //variable con los días del mes
        var capaDiasMes;
        //variable para mostrar el mes y ano que se está viendo
        var capaTextoMesAnoActual = $('<div class="visualmesano"></div>');
        //iniciales de los días de la semana
        var dias = ["l", "m", "x", "j", "v", "s", "d"];
        //nombres de los meses
        var nombresMes = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
        
        //elemento input
        var elem = $(this);
        //creo un enlace-botón para activar el calendario
        var boton = $("<a class='botoncal' href='#'><span></span></a>");
        //inserto el enlace-botón después del campo input
        elem.before(boton);
        
        //evento para clic en el botón
        boton.click(function(e){
            e.preventDefault();
            mostrarCalendario();
        });
        //evento para clic en el campo
        elem.click(function(e){
            this.blur();
            mostrarCalendario();
        });
        
        //función para mostrar el calendario
        function mostrarCalendario(){
            if(!mostrando){
                mostrando = true;
                //es que hay que mostrar el calendario
                //dias de la semana
                var capaDiasSemana = $('<div class="diassemana"></div>');
                $(dias).each(function(indice, valor){
                    var codigoInsertar = '<span';
                    if (indice==0){
                        codigoInsertar += ' class="primero"';
                    }
                    if (indice==6){
                        codigoInsertar += ' class="domingo ultimo"';
                    }
                    codigoInsertar += ">" + valor + '</span>';
                    
                    capaDiasSemana.append(codigoInsertar);
                });
                
                //capa con los días del mes
                capaDiasMes = $('<div class="diasmes"></div>');
                
                //un objeto de la clase date para calculo de fechas
                var objFecha = new Date();
                //miro si en el campo INPUT tengo alguna fecha escrita
                var textoFechaEscrita = elem.val();
                if (textoFechaEscrita!= ""){
                    if (validarFechaEscrita(textoFechaEscrita)){
                        var arrayFechaEscrita = textoFechaEscrita.split("/");
                        //hago comprobación sobre si el año tiene dos cifras
                        if(arrayFechaEscrita[2].length == 2){
                            if (arrayFechaEscrita[2].charAt(0)=="0"){
                                arrayFechaEscrita[2] = arrayFechaEscrita[2].substring(1);
                            }
                            arrayFechaEscrita[2] = parseInt(arrayFechaEscrita[2]);
                            if (arrayFechaEscrita[2] < 50)
                                arrayFechaEscrita[2] += 2000;
                        }
                        objFecha = new Date(arrayFechaEscrita[2], arrayFechaEscrita[1]-1, arrayFechaEscrita[0])
                    }
                }
                
                //mes y año actuales
                var mes = objFecha.getMonth();
                var ano = objFecha.getFullYear();
                //muestro los días del mes y año dados
                muestraDiasMes(mes, ano);
                
                //control para ocultar el calendario
                var botonCerrar = $('<a href="#" class="calencerrar"><span></span></a>');
                botonCerrar.click(function(e){
                    e.preventDefault();
                    calendario.hide("slow");
                })
                var capaCerrar = $('<div class="capacerrar"></div>');
                capaCerrar.append(botonCerrar)
                
                //controles para ir al mes siguiente / anterior
                var botonMesSiguiente = $('<a href="#" class="botonmessiguiente"><span></span></a>');
                botonMesSiguiente.click(function(e){
                    e.preventDefault();
                    mes = (mes + 1) % 12;
                    if (mes==0)
                        ano++;
                    capaDiasMes.empty();
                    muestraDiasMes(mes, ano);
                })
                var botonMesAnterior = $('<a href="#" class="botonmesanterior"><span></span></a>');
                botonMesAnterior.click(function(e){
                    e.preventDefault();
                    mes = (mes - 1);
                    if (mes==-1){
                        ano--;
                        mes = 11
                    }   
                    capaDiasMes.empty();
                    muestraDiasMes(mes, ano);
                })
                var botonCambioAno = $('<a href="#" class="botoncambiaano"><span></span></a>')
                botonCambioAno.click(function(e){
                    e.preventDefault();
                    var botonActivoSelAnos = $(this);
                    //creo una capa con una serie de años para elegir
                    var capaAnos = $('<div class="capaselanos"></div>');
                    //genero 10 años antes y 10 después
                    for (var i=ano-10; i<=ano+10; i++){
                        var codigoEnlace = '<a href="#"';
                        if (i==ano)
                            codigoEnlace += ' class="seleccionado"';
                        if (i==ano+10)
                            codigoEnlace += ' class="ultimo"';
                        codigoEnlace += '><span>' + i + '</span></a>';
                        var opcionAno = $(codigoEnlace);
                        opcionAno.click(function(e){
                            e.preventDefault();
                            ano = parseInt($(this).children().text());
                            capaDiasMes.empty();
                            muestraDiasMes(mes, ano);
                            capaAnos.slideUp();
                            capaAnos.detach();
                        })
                        capaAnos.append(opcionAno);
                    }
                    //coloco la capa en la página
                    $(document.body).append(capaAnos);
                    //posiciono la capa
                    capaAnos.css({
                        top: (botonActivoSelAnos.offset().top + 12) + "px",
                        left: (botonActivoSelAnos.offset().left - 25) + "px"
                    })
                    capaAnos.slideDown();
                })
                
                //capa para mostrar el texto del mes y ano actual
                var capaTextoMesAno = $('<div class="textomesano"></div>');
                var capaTextoMesAnoControl = $('<div class="mesyano"></div>')
                capaTextoMesAno.append(botonMesSiguiente);
                capaTextoMesAno.append(botonMesAnterior);
                capaTextoMesAno.append(capaTextoMesAnoControl);
                capaTextoMesAnoControl.append(capaTextoMesAnoActual);
                capaTextoMesAnoControl.append(botonCambioAno);
                
                //calendario y el borde
                calendario = $('<div class="capacalendario"></div>');
                var calendarioBorde = $('<div class="capacalendarioborde"></div>');
                calendario.append(calendarioBorde);
                calendarioBorde.append(capaCerrar);
                calendarioBorde.append(capaTextoMesAno);
                calendarioBorde.append(capaDiasSemana);
                calendarioBorde.append(capaDiasMes);
                
                //inserto el calendario en el documento
                $(document.body).append(calendario);
                //lo posiciono con respecto al boton
                calendario.css({
                    top: boton.offset().top + "px",
                    left: (boton.offset().left + 20) + "px"
                })
                //muestro el calendario
                calendario.show("slow");
                
            }else{
                //es que el calendario ya se estaba mostrando...
                calendario.fadeOut("fast");
                calendario.fadeIn("fast");
                
            }
            
        }
        
        function muestraDiasMes(mes, ano){
            //console.log("muestro (mes, ano): ", mes, " ", ano)
            //muestro en la capaTextoMesAno el mes y ano que voy a dibujar
            capaTextoMesAnoActual.text(nombresMes[mes] + " " + ano);
            
            //muestro los días del mes
            var contadorDias = 1;
            
            //calculo la fecha del primer día de este mes
            var primerDia = calculaNumeroDiaSemana(1, mes, ano);
            //calculo el último día del mes
            var ultimoDiaMes = ultimoDia(mes,ano);
            
            //escribo la primera fila de la semana
            for (var i=0; i<7; i++){
                if (i < primerDia){
                    //si el dia de la semana i es menor que el numero del primer dia de la semana no pongo nada en la celda
                    var codigoDia = '<span class="diainvalido';
                    if (i == 0)
                        codigoDia += " primero";
                    codigoDia += '"></span>';
                } else {
                    var codigoDia = '<span';
                    if (i == 0)
                        codigoDia += ' class="primero"';
                    if (i == 6)
                        codigoDia += ' class="ultimo domingo"';
                    codigoDia += '>' + contadorDias + '</span>';
                    contadorDias++;
                }
                var diaActual = $(codigoDia);
                capaDiasMes.append(diaActual);
            }
            
            //recorro todos los demás días hasta el final del mes
            var diaActualSemana = 1;
            while (contadorDias <= ultimoDiaMes){
                var codigoDia = '<span';
                //si estamos a principio de la semana escribo la clase primero
                if (diaActualSemana % 7 == 1)
                    codigoDia += ' class="primero"';
                //si estamos al final de la semana es domingo y ultimo dia
                if (diaActualSemana % 7 == 0)
                    codigoDia += ' class="domingo ultimo"';
                codigoDia += '>' + contadorDias + '</span>';
                contadorDias++;
                diaActualSemana++;
                var diaActual = $(codigoDia);
                capaDiasMes.append(diaActual);
            }
            
            //compruebo que celdas me faltan por escribir vacias de la última semana del mes
            diaActualSemana--;
            if (diaActualSemana%7!=0){
                //console.log("dia actual semana ", diaActualSemana, " -- %7=", diaActualSemana%7)
                for (var i=(diaActualSemana%7)+1; i<=7; i++){
                    var codigoDia = '<span class="diainvalido';
                    if (i==7)
                        codigoDia += ' ultimo'
                    codigoDia += '"></span>';
                    var diaActual = $(codigoDia);
                    capaDiasMes.append(diaActual);
                }
            }
            
            //crear el evento para cuando se pulsa un día de mes
            //console.log(capaDiasMes.children());
            capaDiasMes.children().click(function(e){
                var numDiaPulsado = $(this).text();
                if (numDiaPulsado != ""){
                    elem.val(numDiaPulsado + "/" + (mes+1) + "/" + ano);
                    calendario.fadeOut();
                }
            })
        }
        //función para calcular el número de un día de la semana
        function calculaNumeroDiaSemana(dia,mes,ano){
            var objFecha = new Date(ano, mes, dia);
            var numDia = objFecha.getDay();
            if (numDia == 0) 
                numDia = 6;
            else
                numDia--;
            return numDia;
        }
        
        //función para ver si una fecha es correcta
        function checkdate ( m, d, y ) {
            // función por http://kevin.vanzonneveld.net
            // extraida de las librerías phpjs.org manual en http://www.desarrolloweb.com/manuales/manual-librerias-phpjs.html
            return m > 0 && m < 13 && y > 0 && y < 32768 && d > 0 && d <= (new Date(y, m, 0)).getDate();
        }
        
        //funcion que devuelve el último día de un mes y año dados
        function ultimoDia(mes,ano){ 
            var ultimo_dia=28; 
            while (checkdate(mes+1,ultimo_dia + 1,ano)){ 
               ultimo_dia++; 
            } 
            return ultimo_dia; 
        } 
        
        function validarFechaEscrita(fecha){
            var arrayFecha = fecha.split("/");
            if (arrayFecha.length!=3)
                return false;
            return checkdate(arrayFecha[1], arrayFecha[0], arrayFecha[2]);
        }
   });
   return this;
};

$(document).ready(function(){
    $("#campofecha").calendarioDW();
})

</script>

</head>
<body>
    <div class="box">
        <a class="button" href="#popup2">Publicar Oferta</a>
    </div>      
    <div id="popup2" class="overlay" style="overflow: scroll;">
        <div class="popup">
            <h1 style="text-align: center;text-decoration: underline;margin-bottom: -10px;"> Publicar Oferta </h1>
            <form class="form-subir" role="form" method="post" action="/subirOferta" style="margin-left: -3px;margin-top: 22px;">
                <div class="form-group">
                    <a class="close" href="#">&times;</a>
                    <label for="titulo">Título</label>
                    <input type="text" class="form-control" name="titulo" id="titulo"/>
                    <label for="descuento">Descuento</label>
                    <select name="descuento" class="form-control" id="descuento">
                        <option value="0">Seleccione un descuento</option>
                        <option value="5">5%</option> 
                        <option value="10">10%</option>
                        <option value="15">15%</option> 
                        <option value="20">20%</option> 
                        <option value="25">25%</option> 
                        <option value="30">30%</option>
                        <option value="35">35%</option> 
                        <option value="40">40%</option>
                        <option value="45">45%</option> 
                        <option value="50">50%</option> 
                        <option value="55">55%</option> 
                        <option value="60">60%</option>
                        <option value="65">65%</option> 
                        <option value="70">70%</option> 
                        <option value="75">75%</option> 
                        <option value="80">80%</option>
                        <option value="85">85%</option> 
                        <option value="90">90%</option>
                        <option value="95">95%</option>
                    </select>
                    <label for="cupon">¿Quieres asignar un cupón a tu oferta?</label>
                    <input type="text" class="form-control" name="cupon" id="cupon" />
                    <label for="caducidad" style="margin-left:18px;">Fecha de caducidad</label>
                    <input type="text" name="fecha" id="campofecha" class="form-control" value="" style="width: 100%; text-align: center;"/>
                    <label for="descripcion">Descripción</label> 
                    <textarea class="form-control" name="descripcion" style="width: 320px; height: 100px; border-radius: 4px"></textarea>                  
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
                <button type="reset" class="btn btn-default">Borrar todo</button>
            </form>
        </div>
    </div> 
</body>
</html>