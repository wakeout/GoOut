<!DOCTYPE HTML>
<html>
	<head>
	<script type="text/javacsript" src="${prefix}resources/js/misActividades.js"></script>
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
										<input onkeyup="buscar()" type="text" id="buscar_actividades" name="actividad_b" maxlength="30">
										</span>
									
										<br>
									
										<input type="radio" id="misactividades" name="tipo_busqueda" checked/>Mis actividades
										<input type="radio" id="nomias" name="tipo_busqueda"/>Actividades nuevas
										<input type="radio" id="todo" name="tipo_busqueda"/>Todas las actividades
								
									<div id="cambio_modo">
									    <input type="checkbox" id="switch1" name="switch1" class="switch"/>
									    <label for="switch1">Modo lista</label>
									</div>
									
								<!-- 	
									<div id="filtro_MisActividades">
										<div id="cajaA">
										<input type="radio" id="act_fin" name="activas_fin" value="activas" checked="checked"/>Activas
										<input type="radio" id="act_fin" name="activas_fin" value="finalizadas"/>Finalizadas
											
										<input type="checkbox" onchange="filtro(${hoy})"  id="f1" value="1" name="filtro" />Hoy
										<input type="checkbox" onchange="filtro(${mes})" id="f2" value="2" name="filtro" />Este mes
										
										</div>
								
									</div> 
									-->
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
			buscar();
			actualizar();
		});
	
	</script>
		<!--FIN DEL AÑADIDO -->

	</body>
</html>
