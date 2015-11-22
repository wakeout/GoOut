<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<%@ include file="../fragments/head.jspf" %>
</head>
	<body class="homepage">
		<div id="page-wrapper">

			<!-- Header -->

				<div id="header-wrapper">
				<div id="header">

				<div id="northHeader">		
					
					<div id="logo">	
						<!-- Logo -->
					<h1><a href="sin_registro"><img id="logo" src="${prefix}resources/images/logo.png"></a></h1>
					</div>

				</div>
					<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a id="b_registro" href="registro">REGISTRARSE</a></li>
									<li><a id="b_login" href="login">INICIAR SESION</a></li>
								</ul>
							</nav>
			</div>
			</div>
			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row">
							<div class="12u">

								<!-- Portfolio -->
									<section>
									
									<div id="global" align="center">
									
									<div id="ActRecientes">
										<p id="encMisAct">ACTIVIDADES QUE SE HAN CREADO</p>
									</div>

									<div id="fotos">

										<a class="" href="actividad">
											<div class="img_thumb">
												<div class="img_desc">
													<p id="actividad"> Senderismo </p>
													<p id="actividad">10/11/2015 8:00 </p>
													<p id="actividad">Sierra de Guadarrama</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
											</div>
										</a>

										<a class="" href="actividad">
											<div class="img_thumb">

												<div class="img_desc">
													<p id="actividad">Fiesta </p>
													<p id="actividad">7/11/2015 23:00 </p>
													<p id="actividad">Kapital</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/fiesta.jpg" alt="" />

											</div>
										</a>
										<a class="" href="actividad">
											<div class="img_thumb">

												<div class="img_desc">
													<p id="actividad">Jugar Futbol </p>
													<p id="actividad">15/11/2015 16:00 </p>
													<p id="actividad">Polideportivo</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/futbol.jpg" alt="" />
											</div>
										</a>

										<a class="" href="actividad">
											<div class="img_thumb">
												<div class="img_desc">
													<p id="actividad"> Senderismo </p>
													<p id="actividad">10/11/2015 8:00 </p>
													<p id="actividad">Sierra de Guadarrama</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
											</div>
										</a>

									
										<a class="" href="actividad">
											<div class="img_thumb">
												<div class="img_desc">
													<p id="actividad">Paintball </p>
													<p id="actividad">20/09/2015 10:00 </p>
													<p id="actividad">Navalcalnero</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/paintball.jpg" alt="" />
											</div>
										</a>
									

									<a class="" href="actividad">
										<div class="img_thumb">

											<div class="img_desc">
												<p id="actividad">Playa </p>
												<p id="actividad"> 5/08/2015 8:00 </p>
												<p id="actividad">Valencia</p>
											</div>

											<img class="i_actv" src="${prefix}resources/images/playa.jpg" alt="" />

										</div>
									</a>

								</div>

	
									</div>

									</section>

							</div>
						</div>
					</div>
				</div>

			<!-- Footer -->
			<%@ include file="../fragments/footer.jspf" %>

		</div>

		<!-- Scripts -->
		<%@ include file="../fragments/scripts.jspf" %>

	</body>
</html>
