<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	
	<%@ include file="../fragments/head.jsp" %>
	<link rel="stylesheet" href="${prefix}resources/css/sliding.css">
	</head>
	
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->

			<%@ include file="../fragments/header.jsp" %>
			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="12u">

								<!-- Portfolio -->
									<section>
									
									<div id="global" align="center">
									
							<div id="contenido" align="center">
							<p id = "text">BUSCA NUEVAS COSAS QUE HACER!</p><button id="boton_buscar" type="button"></button>
							<input type="checkbox" name="check" id="check"/>
							<label  for="check" id="actv_a">Actividades de tus amigos</label>

								<div id="buscar">
								
									<div id="actv_amigos">
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									<a href="actividad"><img class="img_amigos" src="${prefix}resources/images/luna2.png"></a>
									</div>
									
									<div id="mostrar_bus1">	
										
										<div id="buscar_1">
											<p id = "text">¿QUE?</p>
											<input id="buscar_que" type="text">
										</div>
										<div id="buscar_2">
											<p id = "text">¿CUANDO?</p>
											<input id="buscar_cuando" type="text">
										</div>
										
										<div id="buscar_3">
											<p id = "text">¿DONDE?</p>
											<input id="buscar_donde" type="text">
										</div>
										
										<div id="resultados1">
										</div>
										
										<div id="resultados2">
											<a href="actividad" class="">
											<div class="img_thumb">
												<div class="img_desc">
													<p id= "actividad"> Senderismo </p>
													<p id= "actividad">10/11/2015 8:00 </p>
													<p id= "actividad">Sierra de Guadarrama</p> 
												</div>
												<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
											</div>
											</a>
											<a href="actividad" class="">
											<div class="img_thumb">
												<div class="img_desc">
													<p id= "actividad">Jugar Futbol </p>
													<p id= "actividad">15/11/2015 16:00 </p>
													<p id= "actividad">Polideportivo</p> 
												</div>
												<img class="i_actv" src="${prefix}resources/images/futbol.jpg" alt="" />
											</div>
											</a>
											<a href="actividad" class="">
											<div class="img_thumb">
												<div class="img_desc">
													<p id= "actividad">Paintball </p>
													<p id= "actividad">20/09/2015  10:00 </p>
													<p id= "actividad">Navalcalnero</p> 
												</div>
											<img class="i_actv" src="${prefix}resources/images/paintball.jpg" alt="" />
											</div>
											</a>
											<a href="actividad" class="">
											<div class="img_thumb">
											<div class="img_desc">
												<p id="actividad">Playa </p>
												<p id="actividad">5/08/2015 8:00 </p>
												<p id="actividad">Valencia</p>
											</div>
											<img class="i_actv" src="${prefix}resources/images/playa.jpg" alt="" />
										</div>
											</a>
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
			<%@ include file="../fragments/footer.jsp" %>
			
		</div>

	<%@ include file="../fragments/scripts.jsp" %>

	</body>
</html>
