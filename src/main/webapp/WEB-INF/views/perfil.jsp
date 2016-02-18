<html>
<head>

<%@ include file="../fragments/head.jspf"%>

<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css">
<link rel="stylesheet" href="${prefix}resources/css/style_efecto.css">
<script src="${prefix}resources/js/perfil.js"></script>
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

						<c:if test="${amigos == false && (usuario.id != perfil.id) && solicitado == false}">
						<form action="${prefix}solicitudAmigo" class="cuadro_acciones" method="POST">
							<input type="hidden" name="id_amigo" value="${perfil.id}">
							<input type="hidden" name="id_propio" value="${usuario.id}">
							<br>
							<button id="envio_solicitud" type="submit" name="submit">Enviar solicitud de
								amistad</button>
						</form>
						</c:if>
						<c:if test="${amigos == true}">
						<form action="${prefix}eliminarAmistad" class="cuadro_acciones" method="POST">
						<input type="hidden" name="id_amigo" value="${perfil.id}">
							<input type="hidden" name="id_propio" value="${usuario.id}">
							<br>
							<button id="envio_solicitud" type="submit" name="submit">Eliminar amistad</button>
						</form>
						</c:if>
						
						
				</div>

				<div class="info_perfil">

					<div id="datos_perfil">
					<div id="cont_amigos">
						<div id="amigos">
							<table>
								<thead>Amigos</thead>
								<tbody>
									<c:forEach items="${perfil.amigos}" var="p_amigos">
										<c:if test="${p_amigos.borrado == false }">
										<tr>
											<td>
											<a href="../perfil/${p_amigos.id}">
											<img class="i_people" src="../usuario/imagen?id=${p_amigos.id}" alt="" />
											</a>
											</td> 
										</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
							
						</div>
						<div id="ver_amigos">

							<%@ include file="../fragments/ver_amigos.jspf" %>

											
						</div>
					</div>	

						<div class="n_perfil">
						<p id="login_perfil"><c:out value="${perfil.login}"/></p>
						
					<fieldset class="estilo_campos">
  							<legend>Datos usuario</legend>
  					
  							<div class="campos_Perfil">
								<label for="nombre_perfil">Nombre:</label> 
								<label id="nombre_perfil"><c:out value="${perfil.nombre}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="fecha_perfil">Fecha Nac:</label> 
								<label id="fecha_perfil"><c:out value="${perfil.nacimiento}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="prov_perfil">Provincia:</label> 
								<label id="prov_perfil"><c:out value="${perfil.provincia}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="email_perfil">Email: </label> 
								<label id="email_perfil"><c:out value="${perfil.email}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="tipo_usuario">Tipo de usuario: </label> 
								<label id="tipo_usuario"><c:out value="${perfil.rol}"/></label>
							</div>
					
							</fieldset>
							
						</div>
						
					</div>
					
				</div>
				<div class="actv_apuntadas2">
				<p class="apuntadas2">Actividades a las que está apuntado</p>
							<table id="mis_actv">
								<c:forEach items="${actv}" var="a">
								<c:if test="${a.actividad.eliminado == false }">
								<a  href="../actividad/${a.actividad.id}">
								<div class='img_thumb'>
									<div class='img_desc'>
										<p id='actividad'>${a.actividad.nombre}</p>
									</div>
								<img class='i_actv'src="../actividad/imagen?id=${a.actividad.id}"/>
								</div>
								</a>
								</c:if>
								</c:forEach>
							</table>
							
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
