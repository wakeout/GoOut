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

										<span>
										<input onkeyup="buscar()" type="text" id="buscar_actividades" name="actividad_b">
										</span>
									
										<br>
									
										<input type="radio" id="misactividades" name="tipo_busqueda" checked/>Mis actividades
										<input type="radio" id="nomias" name="tipo_busqueda"/>Actividades nuevas
										<input type="radio" id="todo" name="tipo_busqueda"/>Todas las actividades
								
									
									
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
		<script src="${prefix}resources/js/misActividades.js"></script>
		<!--FIN DEL AÑADIDO -->

	</body>
</html>
