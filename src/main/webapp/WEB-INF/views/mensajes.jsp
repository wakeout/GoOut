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

							<!-- Portfolio -->
							<section>

								<div id="global" align="center">

								<div id="mensajes">
									
									<div id="cont_inicio">
									
									
									<ul id="barra_mensajes">
							
										<li><button id="b_redactar" class="cambiar2" href="">Redactar Mensaje</button></li>
										<li><button id="b_entrada" type="button" name="entrada" class="cambiar" href="">Bandeja de Entrada</button></li>
										<li><button id="b_salida" class="cambiar"	href="">Bandeja de Salida</button></li>
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
