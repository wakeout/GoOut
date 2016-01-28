<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<script src="${prefix}resources/js/novedades.js"></script>
		

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
										<br>
										<h2>!Aún no hay ninguna novedad!</h2>
										
										<p><a href="actividades">Pincha aquí y comienza tu experiencia en goout</a></p>
									</div>
									<c:if test="${novedades!=null}">
												<script>

													$(function(){

		    											var obj = "${novedades}";
		    
														formato(obj);
													});
	
												</script>
									</c:if>

								</div>
							</div>
							<div id="sugerencias">
								<p id="text">SUGERENCIAS</p>
									<c:forEach items="${actividades}" var="a">
										<c:if test="${a.eliminado == false }">
											<a class="" href="actividad/${a.id}">
												<div class="img_thumb">

													<div class="img_desc">
														<p id="actividad"><c:out value="${a.nombre}"/></p>
													</div>

													<img class="i_actv"
														src="actividad/imagen?id=${a.id}" />
												</div>
											</a>
										</c:if>	
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
		<script>

		$(function(){

			console.log("${novedades}");
		    var obj = "${novedades}";
		    
			formato(obj);
		});
	
	</script>
	
</body>
</html>
