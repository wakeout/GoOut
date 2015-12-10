<!DOCTYPE HTML>
<html>
	<head>
	<%@ include file="../fragments/head.jspf" %>
	<link rel="stylesheet" href="${prefix}resources/css/style_mensajes.css"> 
	
	</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->
			<%@ include file="../fragments/header_main.jspf" %>
			
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
										
										
										<!--<form action="crearMensaje" method="post">
											<table class="mensajes" align="center">
												<tbody>
													<tr>
														<td colspan="2"><b>¡Envía mensajes a otros
																usuarios de GoOut!</b></td>
													</tr>
													<tr>
														<td>Asunto: <input class="barra_men" type="text"
															name="asunto" size="20"> Destinatario: <input class="barra_men" type="text"
															name="destinatario" size="20">
														</td>
													</tr>
													<tr>
														<td colspan="2"><textarea id="cuerpo_msj" rows="7" cols="80"
																name="mensaje" maxlength="200"
																tooltiptext="Máximo 200 caracteres"></textarea></td>
													</tr>
													<tr>
														<td colspan="2"><input class="enviar" type="submit"
															value="Enviar Mensaje" name="Enviar"> <input
															type="reset" value="Borrar" name="Borrar"></td>
													</tr>
												</tbody>
											</table>
										</form>-->
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
