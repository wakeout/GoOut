<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<link rel="stylesheet" href="${prefix}resources/css/style_buscar.css">
<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css">
<link rel="stylesheet" href="${prefix}resources/js/jquery-ui-1.11.2/jquery-ui.min.css">
<script src="${prefix}resources/js/jquery-ui-1.11.2/external/jquery/jquery.js"></script>
<script src="${prefix}resources/js/jquery-ui-1.11.2/jquery-ui.min.js"></script>
	
</head>

<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->

		<%@ include file="../fragments/header.jspf"%>
		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
				<div class="row">
					<div class="12u">

						<!-- Portfolio -->
						<section>

							<div id="global" align="center">
								
								<div id="contenido" align="center">

										<span>
										<input type="text" onkeyup="buscar()" id="buscar_amigos" name="amigo_b">
										</span>
										<br>
										
										<input type="radio" id="misamigos" name="tipo_busqueda" checked/>Mis amigos
										<input type="radio" id="noamigos" name="tipo_busqueda"/>Gente nueva
										<input type="radio" id="todo" name="tipo_busqueda"/>Todo GoOut
										
									<div id="resultado_buscar">
									    <table id="usuarios_buscados">
									    </table>
									</div>
								
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@ include file="../fragments/footer.jspf"%>

	</div>

	<%@ include file="../fragments/scripts.jspf"%>
	
	<script src="${prefix}resources/js/amigos.js"></script>

</body>
</html>
