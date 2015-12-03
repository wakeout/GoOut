<html>
<head>

<%@ include file="../fragments/head.jspf" %>

		<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css"> 
</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->

		<%@ include file="../fragments/header_especific.jspf" %>
		
		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">

				<div class="s_perfil">
					<a class=""><img id="i_perfil" src="${prefix}resources/images/${perfil.idFoto}.jpg" alt="" /></a>
					<br>
					<center>
						<button class="btn">Enviar Mensaje a ${usuario.login}</button>
					</center>
				</div>

				<div class="info_perfil">

					<div id="datos_perfil">
					
						<div id="amigos">
							<table>
								<thead>
								Amigos
								</thead>
								<tbody>
									<c:forEach var="i" begin="1" end="3">
									<tr>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
								</c:forEach>
								</tbody>
							</table>
							<a href="">Ver amigos de ${usuario.login}</a>
						</div>					
					

						<div class="n_perfil">

							<span id="campos_Perfil">Nombre: </span> <span
								id="relleno_Campos"> ${perfil.login} </span> </br>
							</br> <span id="campos_Perfil">Fecha Nacimiento:</span> <span
								id="relleno_Campos"> ${perfil.nacimiento} </span></br>
							</br> <span id="campos_Perfil">Provincia:</span> <span
								id="relleno_Campos"> ${perfil.provincia}</span></br>
							</br> <span id="campos_Perfil">email: </span> <span
								id="relleno_Campos"> ${perfil.email} </span>

								</br>
							</br>
						</div>


						<div class="activ_Perfil">
							<span id="campos_Perfil">ACTIVIDADES EN LAS QUE ESTÁ
								APUNTADO</span>
						

						<!-- COPIADO DE MIS ACTIVIDADES, HAY QUE LINKARLO -->

						<div id="fotos">
							<a class="" href="actividad">
								<div class="img_thumb">
									<div class="img_desc">
										<p id="actividad">Senderismo</p>
										<p id="actividad">10/11/2015 8:00</p>
										<p id="actividad">Sierra de Guadarrama</p>
									</div>

									<img class="i_actv" src="${prefix}resources/images/9.jpg" alt="" />
								</div>
							</a> <a class="" href="actividad">
								<div class="img_thumb">

									<div class="img_desc">
										<p id="actividad">Fiesta</p>
										<p id="actividad">7/11/2015 23:00</p>
										<p id="actividad">Kapital</p>
									</div>

									<img class="i_actv" src="${prefix}resources/images/6.jpg" alt="" />

								</div>
							</a>
						</div>
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
