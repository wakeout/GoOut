<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<link rel="stylesheet" href="${prefix}resources/css/sliding.css">
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
									<p id="text">BUSCA NUEVAS COSAS QUE HACER!</p>
									<button id="boton_buscar" type="button"></button>
									<input type="checkbox" name="check_amigos" id="check_amigos" />
									<label for="check" id="actv_a">Actividades de tus amigos</label>

									<div id="buscar">

										<div id="actv_amigos">
											<c:forEach var="i" begin="1" end="6">
												<a href="actividad"><img class="img_amigos"
													src="${prefix}resources/images/luna2.png"></a>
											</c:forEach>

										</div>

										<div id="mostrar_bus1">

											<div id="buscar_1">
												<p id="text">¿QUE?</p>
												<input id="buscar_que" class="cuadro_bus"type="text"><br>
												<input type="checkbox" name="check_donde" id="check_donde" value="Tag1"/>Tag1
												<input type="checkbox" name="check_donde" id="check_donde"/>Tag2
												<input type="checkbox" name="check_donde" id="check_donde"/>Tag3
											</div>

											<div id="buscar_2">
												<p id="text">¿CUANDO?</p>
												<input id="buscar_cuando" class="cuadro_bus" type="date">
												<br> 
												<input type="radio" name="radio_cuando" id="radio_cuando"/>Hoy
												<input type="radio" name="radio_cuando" id="radio_cuando"/>Mañana
												<input type="radio" name="radio_cuando" id="radio_cuando"/>Futuras
											</div>

											<div id="buscar_3">
												<p id="text">¿DONDE?</p>
												<input id="buscar_donde" class="cuadro_bus" type="text"><br>
												<input type="checkbox" name="check_donde" id="check_donde"/>Cerca de mi
											</div>

											<div id="resultados1"></div>

											<div id="resultados2">
												
												<c:forEach var="i" begin="1" end="6">
												<a href="actividad" class="">
													<div class="img_thumb">
														<div class="img_desc">
															<p id="actividad">Senderismo</p>
															<p id="actividad">10/11/2015 8:00</p>
															<p id="actividad">Sierra Guadarrama</p>
														</div>
														<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
													</div>
												</a>
												</c:forEach>
												
											</div>
										</div>

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

</body>
</html>
