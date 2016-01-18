<!DOCTYPE HTML>

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

										<c:forEach items="${actividades}" var="a">
											<c:if test="${a.privacidad.equals('publica')}">
												<a href="actividad/${a.id}">
												<div class="img_thumb">
													<div class="img_desc">
														<p id="actividad">${a.nombre}</p>
													</div>

													<img class="i_actv"
														src="actividad/imagen?id=${a.id}" alt="" />
												</div>
												</a>
											</c:if>
										</c:forEach>

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
