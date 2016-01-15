<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<link rel="stylesheet" href="${prefix}resources/css/style_buscar.css">
<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css">
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

									<form action="${prefix}buscarAmigos" id="bus_amigos" method="POST">
										<span>
										<input type="text" id="buscar_amigos" name="amigo_b">
										<button type="submit" name="submit" id="boton_busca_amigos">Buscar</button>
										</span>
									</form>
									<div id="resultado_buscar">
									<c:if test="${buscado == null}">
									<c:forEach items="${usuario.amigos}" var="p_amigos">
										<tr>
									        <td><a href="perfil/${p_amigos.id}"><img class="i_people" src="${prefix}resources/images/${p_amigos.idFoto}"></a></td>
									        <td>${p_amigos.login}</td>
									</c:forEach>
									</c:if>
									
									<c:choose>
									    <c:when test="${not empty buscado}">
									    <table id="usuarios_buscados">
									    <c:forEach items="${no_amigos}" var="resultados">
									        
									        <tr>
									        <td><a href="perfil/${resultados.id}"><img class="i_people" src="${prefix}resources/images/${resultados.idFoto}"></a></td>
									        <td>${resultados.login}</td>
									       
									    </c:forEach>
									     </table>
									    </c:when>    									   
									    
									    <c:otherwise>
									        <p>${noEncontrado}</p>
									    </c:otherwise>
									</c:choose>
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
