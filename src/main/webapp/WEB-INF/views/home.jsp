<!DOCTYPE HTML>

<html>
<head>
<%@ include file="../fragments/head.jspf"%>

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

						<div id="global" align="center">

							<div id="principal" align="center">
								<div id="novedades">
									<div id="actv_nov">
										<p id="text">NOVEDADES</p>

										<c:forEach var="i" begin="1" end="20">
											<a class="" href="actividad">
												<div class="img_thumb">

													<div class="img_desc">
														<p id="actividad">Jugar Futbol</p>
														<p id="actividad">15/11/2015 16:00</p>
														<p id="actividad">Polideportivo</p>
													</div>

													<img class="i_actv"
														src="${prefix}resources/images/futbol.jpg" alt="" />
												</div>
											</a>
										</c:forEach>
									</div>

								</div>
							</div>
							<div id="sugerencias">
								<p id="text">SUGERENCIAS</p>
								<c:forEach var="i" begin="1" end="6">
									<a class="" href="actividad">
										<div class="img_thumb">
											<div class="img_desc">
												<p id="actividad">Fiesta</p>
												<p id="actividad">7/11/2015 23:00</p>
												<p id="actividad">Kapital</p>
											</div>
											<img class="i_actv"
												src="${prefix}resources/images/fiesta.jpg" alt="" />
										</div>
									</a>
								</c:forEach>


							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="../fragments/footer.jspf"%>

	<!-- Scripts -->
	<%@ include file="../fragments/scripts.jspf"%>
</body>
</html>
