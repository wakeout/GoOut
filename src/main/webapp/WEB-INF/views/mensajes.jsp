<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="../fragments/head.jspf" %>
	<link rel="stylesheet" href="${prefix}resources/css/style_mensajes.css"> 
	
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

							<section>

								<div id="global" align="center">

								<div id="mensajes">
									
									<div id="cont_inicio">
									
									
									<ul id="barra_mensajes">
							
										<li><a href="mensajes?metodo=escribir"><button id="b_redactar" class="cambiar2" >Redactar Mensaje</button></a></li>
										<li><a href="mensajes?metodo=entrada"><button id="b_entrada" type="button" name="entrada" class="cambiar" >Bandeja de Entrada</button></a></li>
										<li><a href="mensajes?metodo=salida"><button id="b_salida" class="cambiar">Bandeja de Salida</button></a></li>
									</ul>
									
									<div class="lista">
										<%@ include file="../fragments/mensaje_lista.jspf" %>
									</div>	
										
									
									</div>

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
