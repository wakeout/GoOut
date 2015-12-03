<!DOCTYPE HTML>

<html>
<head>
<%@ include file="../fragments/head.jspf"%>

</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->
		<%@ include file="../fragments/header_main.jspf"%>

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
								
										<c:forEach items="${actividades}" var="a">
											<a class="" href="actividad/${a.id}">
												<div class="img_thumb">

													<div class="img_desc">
														<p id="actividad">${a.nombre}</p>
													</div>

													<img class="i_actv"
														src="${prefix}resources/images/${a.idImagen}.jpg" alt="" />
												</div>
											</a>
										</c:forEach>
									</div>

								</div>
							</div>
							<div id="sugerencias">
								<p id="text">SUGERENCIAS</p>
									<c:forEach items="${actividades}" var="a">
											<a class="" href="actividad/${a.id}">
												<div class="img_thumb">

													<div class="img_desc">
														<p id="actividad">${a.nombre}</p>
													</div>

													<img class="i_actv"
														src="${prefix}resources/images/${a.idImagen}.jpg" alt="" />
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
