<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="../fragments/head.jspf" %>
	<link rel="stylesheet" href="${prefix}resources/css/style_mis_actividades.css"> 	
	<script src="${prefix}resources/js/misActividades.js"></script>
	<script src="${prefix}resources/js/jquery-ui-1.11.2/external/jquery/jquery.js"></script>
	<script src="${prefix}resources/js/jquery-ui-1.11.2/jquery-ui.min.js"></script>
	<script>

		$(function(){
			buscar();
		});
	
	</script>
	
	
	
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
											<div id="modo_lista">
												<table id="lista_actv">
												<tr><td>Nombre Actividad</td><td>Personas unidas</td>
												<td>Máximo</td><td>Dia</td>
												<td>Lugar</td><td>Estado</td></tr>
													<c:forEach items="${actividades}" var="a">
														<tr><td><a href="actividad/${a.id}"> ${a.nombre} </a></td>
														<td>1</td><td>${a.maxPersonas}</td>
														<td>${a.fecha_ini}</td>
														<td>${a.localizacion}</td><td>${a.estado}</td>
														</tr>
													</c:forEach>
													 
												</table>
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
		<!--FIN DEL AÑADIDO -->

	</body>
</html>
