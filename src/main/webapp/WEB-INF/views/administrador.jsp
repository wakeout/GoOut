<!DOCTYPE HTML>
<html>
	<head>
		
		
		<title>GoOut</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<%@ page contentType="text/html; charset=UTF-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib  uri="https://www.owasp.org/index.php/OWASP_Java_Encoder_Project" prefix="e" %>
	
		<link rel="stylesheet" href="${prefix}resources/css/style_admin.css">

	</head>
<body>
	<div class="cabecera">
		<a href="home"><h1>GoOut <h1></a>
	</div>

	<ul>
 		<li>
 		  <button>Actividades </button>
 		</li>
 		<li>
 		  <button>Usuarios</button>
  		</li>
  		<li>
  		  <button>Mensajes</button>
  		</li>
  		<li>
  		  <button>Tags</button>
  		</li>
   		<li>
  		  <button>Comentarios</button>
  		</li>
   		<li>
  		  <button>Novedades</button>
  		</li>
  		<li>
  		  <button>Hitos</button>
  		</li>
  		<li>
  		  <button>Foros</button>
  		</li>  		
	</ul>

	<div class="lista">
		<%@ include file="../fragments/admin_lista.jspf" %>
	</div>	
		
		
	<%@ include file="../fragments/scripts.jspf" %>

</body>


</html>

