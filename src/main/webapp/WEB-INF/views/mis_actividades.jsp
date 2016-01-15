<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="../fragments/head.jspf" %>
	<link rel="stylesheet" href="${prefix}resources/css/style_mis_actividades.css"> 
	
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
			<%@ include file="../fragments/header.jspf" %>
			
			<!-- Main -->
			<div id="main-wrapper">
				<div class="container">
					<div class="row">
						<div class="12u">

							<!-- Portfolio -->
							<section>

								<div id="global" align="center">

									<form action="${prefix}buscarActividades" id="bus_amigos" method="POST">
										<span>
										<input type="text" id="buscar_amigos" name="actividad_b">
										<button type="submit" name="submit" id="boton_busca_amigos">Buscar</button>
										</span>
									</form>
									
									<div id="filtro_MisActividades">
										<form action="${prefix}filtrarActividades">
										<div id="cajaA">
										<input type="radio" id="act_fin" name="activas_fin" value="activas" checked="checked"/>Activas
										<input type="radio" id="act_fin" name="activas_fin" value="finalizadas"/>Finalizadas
										
										
										<input type="checkbox" id="tiempo" value="1" name="filtro" />Hoy
										<input type="checkbox" id="tiempo" value="2" name="filtro" />Esta semana
										<input type="checkbox" id="tiempo" value="3" name="filtro" />Este mes
										<input type="checkbox" id="tiempo" value="4"name="filtro" />Proximos meses
										<input type="checkbox" id="mis_creaciones" value="5" name="filtro" />Mis Creaciones
										
										<button class="boton" id="filtrarMis" name="submit" type="submit">Filtrar</button>
										
										</div>
										</form>
									</div>

									<div id="fotos">
										<c:if test="${no_mias==null}">
										<c:forEach items="${actividades}" var="a">
									
											<a class="" href="actividad/${a.id}">
												<div class="img_thumb">

													<div class="img_desc">
														<p id="actividad">${a.nombre}</p>
													</div>

													<img class="i_actv"
														src="${prefix}resources/images/${a.idImagen}" />
												</div>
											</a>
									
										</c:forEach>
										</c:if>
										<c:if test="${no_mias!=null}">
										<c:forEach items="${no_mias}" var="a">
									
											<a class="" href="actividad/${a.id}">
												<div class="img_thumb">

													<div class="img_desc">
														<p id="actividad">${a.nombre}</p>
													</div>

													<img class="i_actv"
														src="${prefix}resources/images/${a.idImagen}" />
												</div>
											</a>
									
										</c:forEach>
										</c:if>
										
								</div>

						</div>

					</section>

					</div>
				</div>
			</div>
		</div>
	</div>
		<!-- Footer -->
		<%@ include file="../fragments/footer.jspf" %>



		<!-- Scripts -->
		<%@ include file="../fragments/scripts.jspf" %>
		<!--FIN DEL AÑADIDO -->

	</body>
</html>
