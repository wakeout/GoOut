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

									
									<div id="filtro_MisActividades">
										<div id="cajaA">
										<input type="radio" id="act_fin" name="activas_fin" value="activas"/>Activas
										<input type="radio" id="act_fin" name="activas_fin" value="finalizadas"/>Finalizadas
										
										<input type="checkbox" id="tiempo" name="hoy" />Hoy
										<input type="checkbox" id="tiempo" name="semana" />Esta semana
										<input type="checkbox" id="tiempo" name="mes" />Este mes
										<input type="checkbox" id="tiempo" name="mes_siguiente" />Proximos meses
										<input type="checkbox" id="mis_creaciones" name="mis_creaciones" />Mis Creaciones
										<button class="boton" id="filtrarMis" name="submit" type="submit">Filtrar</button>
										</div>
									</div>

									<div id="fotos">
									
									<c:forEach var="i" begin="1" end="20">
   										<a class="actv_mostradas" href="actividad">
											<div class="img_thumb">
												<div class="img_desc">
													<p id="actividad"> Senderismo </p>
													<p id="actividad">10/11/2015 8:00 </p>
													<p id="actividad">Guadarrama</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
											</div>
										</a>
									</c:forEach>
									
									<a class="actv_creadas" href="actividad_creador">
											<div class="img_thumb">
												<div class="img_desc">
													<p id="actividad"> Futbol </p>
													<p id="actividad">10/11/2015 8:00 </p>
													<p id="actividad">Paraninfo</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/futbol.jpg" alt="" />
											</div>
									</a>

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
