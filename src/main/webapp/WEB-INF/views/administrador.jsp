<!DOCTYPE HTML>
<html>
	<head>
		<link rel="stylesheet" href="${prefix}resources/css/admin.css">

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
  
</ul>

	<div class="lista">
		<%@ include file="../fragments/admin_actividades.jspf" %>
	</div>	
		
		
	<%@ include file="../fragments/footer.jspf" %>
	<%@ include file="../fragments/scripts.jspf" %>
</body>


</html>

