<!DOCTYPE HTML>
<!-- Dopetrope by HTML5 UP html5up.net | @n33co Free for personal and commercial 
	use under the CCA 3.0 license (html5up.net/license) -->
<html>
	<head>
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

									<div id="ActRecientes">
										<p id="text">ACTIVIDADES RECIENTES </p>
									</div>

									<div id="fotos">
									
									<c:forEach var="i" begin="1" end="20">
   										<a class="" href="actividad">
											<div class="img_thumb">
												<div class="img_desc">
													<p id="actividad"> Senderismo </p>
													<p id="actividad">10/11/2015 8:00 </p>
													<p id="actividad">Guadarrama</p>
												</div>

												<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
											</div>
										</a>
									</c:forEach>

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
