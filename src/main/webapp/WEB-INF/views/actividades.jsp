<!DOCTYPE HTML>
<html>
	<head>
	<link rel="stylesheet" href="${prefix}resources/css/style_buscar.css">
	<link rel="stylesheet" href="${prefix}resources/css/style_mis_actividades.css">
		
	<%@ include file="../fragments/head.jspf" %>

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
										<input onkeyup="buscar()" type="text" id="buscar_actividades" name="actividad_b" maxlength="30" placeholder="  Buscar actividades...">
										</span>
									
										<br>
									
										<input type="radio" onchange="buscar()"  id="misactividades" name="tipo_busqueda" checked/>Mis actividades
										<input type="radio" onchange="buscar()"  id="nomias" name="tipo_busqueda"/>Actividades nuevas
										<input type="radio" onchange="buscar()"  id="todo" name="tipo_busqueda"/>Todas las actividades
								
									<div id="cambio_modo">
									    <input type="checkbox" id="switch1" name="switch1" class="switch"/>
									    <label for="switch1">Modo lista</label>
									</div>
									
								 	
									<div id="filtro_MisActividades">
										<div id="cajaA">
										<input type="radio" onchange="buscar()" id="todas" name="activas_fin" value="todas" checked="checked"/>Todas
										<input type="radio" onchange="buscar()" id="activas" name="activas_fin" value="activas"/>Abiertas
										<input type="radio" onchange="buscar()" id="finalizadas" name="activas_fin" value="finalizadas"/>Cerradas
											
										<input type="checkbox" onchange="buscar()"  id="hoy" value="1" name="filtro" />Hoy
										<input type="checkbox" onchange="buscar()" id="mes" value="2" name="filtro" />Este mes
										
										</div>
								
									</div> 
									
									<div id="modo_lista">
									
									
							
									</div> 
											
									<div id="modo_burbuja">
									
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
			<script>

			$(function(){
				f_fecha();
				buscar();
				actualizar();
			});
	
	</script>
	<script src="${prefix}resources/js/misActividades.js"></script>	
		<!--FIN DEL A�ADIDO -->

	</body>
</html>
