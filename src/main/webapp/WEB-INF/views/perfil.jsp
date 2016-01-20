<html>
<head>

<%@ include file="../fragments/head.jspf"%>

<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css">
</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->

		<%@ include file="../fragments/header.jspf"%>

		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
		<div id="contenido_perfil">
				<div class="s_perfil">
					<a class="">
					<img id="i_perfil" src="../usuario/imagen?id=${perfil.id}"/></a> <br>
					
						<form action="${prefix}mensajeAmigo" class="cuadro_acciones" method="GET">
						<input type="hidden" name="nombre_amigo" value="${perfil.id}">
						<a><button type="submit" name="submit" class="btne">Enviar Mensaje a ${perfil.login}</button></a>
						</form>
						
						<%@ include file="../fragments/galeria.jspf" %>

						<c:if test="${amigos == false}">
						<form action="${prefix}solicitudAmigo" class="cuadro_acciones" method="POST">
							<input type="hidden" name="id_amigo" value="${perfil.id}">
							<input type="hidden" name="id_propio" value="${usuario.id}">
							<button class="" type="submit" name="submit">Enviar solicitud de
								amistad</button>
						</form>
						</c:if>
						
						
				</div>

				<div class="info_perfil">

					<div id="datos_perfil">

						<div id="amigos">
							<table>
								<thead>Amigos</thead>
								<tbody>
									<c:forEach items="${perfil.amigos}" var="p_amigos">
										<tr>
											<td>
											<a href="../perfil/${p_amigos.id}">
											<img class="i_people" src="../usuario/imagen?id=${p_amigos.id}" alt="" />
											</a>
											</td> 
								
									</c:forEach>
								</tbody>
							</table>
							<section class="cd-section">
								<div class="cd-modal-action">
									<a href="#0"  data-type="modal-trigger"><center><button>Ver amigos de ${perfil.login}</button></center></a>
									<span class="cd-modal-bg"></span>
								</div> <!-- cd-modal-action -->
						
								<div class="cd-modal">	
									<div class="cd-modal-content">
										<%@ include file="../fragments/ver_amigos.jspf" %>
									</div> <!-- cd-modal-content -->
								</div> <!-- cd-modal -->
						
								<a href="#0" class="cd-modal-close">Close</a>
							</section>
						</div>					
					

						<div class="n_perfil">

							 <table>
							 <tr>
								<td id="login_perfil">${perfil.login}</td>
							 </tr>
							 <tr>
								 <td id="nacimiento_perfil"> ${perfil.email} </td>
							 </tr>
							 <tr>
						 		<td id="provincia_perfil"> ${perfil.provincia}</td>
							 </tr>
							 <tr>
								<td id="email_perfil"> ${perfil.provincia}</td>
							 </tr>
							</table>
							
						</div>


						
					</div>
				</div>
				</div>
			</div>

			<!-- Footer -->
		<%@ include file="../fragments/footer.jspf"%>
		</div>

		<!-- Scripts -->
		<%@ include file="../fragments/scripts.jspf"%>
</body>
</html>
