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
<body onload="mostrar('.admin_actv')">
	<div class="cabecera">
		<a href="home"><h1>GoOut <h1></a>
	</div>

	<ul>
 		<li>
 		  <button id="b_actividad" type="submit" name="upload" onclick="mostrar('.admin_actv')"> Actividades </button>
 		</li>
 		<li>
 		  <button id="b_usuarios" onclick="mostrar('.admin_usuario')" >Usuarios</button>
  		</li>
  		<li>
 		  <button id="b_registros" onclick="mostrar('.admin_registros')">Registros</button>
  		</li>
  		<li>
  		  <button id="b_mensajes" onclick="mostrar('.admin_mensaje')">Mensajes</button>
  		</li>
  		<li>
  		  <button id="b_tags" onclick="mostrar('.admin_tags')">Tags</button>
  		</li>
   		<li>
  		  <button id="b_comentarios" onclick="mostrar('.admin_comentarios')">Comentarios</button>
  		</li>
   		<li>
  		  <button id="b_novedades" onclick="mostrar('.admin_novedades')">Novedades</button>
  		</li>
  		<li>
  		  <button id="b_hitos" onclick="mostrar('.admin_hitos')">Hitos</button>
  		</li>
  		<li>
  		  <button id="b_pagos" onclick="mostrar('.admin_pagos')">Pagos</button>
  		</li>
  		<li>
  			<button id="b_encuestas" onclick="mostrar('.admin_encuestas')">Encuestas</button>
  		</li>
  		<li>
  			<button id="b_respuestas" onclick="mostrar('.admin_respuestas')">Respuestas</button>
  		</li>  		
	</ul>

	<div class="lista">
		<%@ include file="../fragments/admin_lista.jspf" %>
	</div>	
		
	<%@ include file="../fragments/scripts.jspf" %>
		<script src="${prefix}resources/js/admin.js"></script>	
	<script src="${prefix}resources/js/buscar_admin.js"></script>

</body>


</html>

