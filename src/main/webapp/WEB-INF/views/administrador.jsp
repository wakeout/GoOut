<!DOCTYPE HTML>
<html>
	<head>

		<title>GoOut</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<%@ page contentType="text/html; charset=UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib  uri="https://www.owasp.org/index.php/OWASP_Java_Encoder_Project" prefix="e" %>
		
		<link rel="stylesheet" href="${prefix}resources/css/style_admin.css">
		<link rel="stylesheet" href="${prefix}resources/css/style_efecto_admin.css">

	</head>
<body>
	<div class="cabecera">
		<a href="home"><h1>GoOut <h1></a>
	</div>

	<ul>
 		<li>
 		  <button id="b_actividad" type="submit" name="upload"> Actividades </button>
 		</li>
 		<li>
 		  <button id="b_usuarios" >Usuarios</button>
  		</li>
  		<li>
 		  <button id="b_registros" >Registros</button>
  		</li>
  		<li>
  		  <button id="b_mensajes">Mensajes</button>
  		</li>
  		<li>
  		  <button id="b_tags">Tags</button>
  		</li>
   		<li>
  		  <button id="b_comentarios">Comentarios</button>
  		</li>
   		<li>
  		  <button id="b_novedades">Novedades</button>
  		</li>
  		<li>
  		  <button id="b_hitos">Hitos</button>
  		</li>
  		<li>
  		  <button id="b_pagos">Pagos</button>
  		</li>
  		<li>
  			<button id="b_encuestas">Encuestas</button>
  		</li>
  		<li>
  			<button id="b_respuestas">Respuestas</button>
  		</li>  		
	</ul>

	<div class="lista">
		<%@ include file="../fragments/admin_lista.jspf" %>
	</div>	
		
		
	<%@ include file="../fragments/scripts.jspf" %>

</body>


</html>

