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

				<div class="s_perfil">
					<a class=""><img id="i_perfil" src="${prefix}resources/images/minion.jpg" alt="" /></a>
					<br>
					<center>
						<button class="btn">Enviar Mensaje a Julio</button>
					</center>
				</div>

				<div class="info_perfil">

					<div id="datos_perfil">

						<div class="n_perfil">

							<span id="campos_Perfil">Nombre: </span> <span
								id="relleno_Campos"> Julio Garcí­a Sánchez </span> </br>
							</br> <span id="campos_Perfil">Fecha Nacimiento:</span> <span
								id="relleno_Campos"> 15/11/1985 </span></br>
							</br> <span id="campos_Perfil">Provincia:</span> <span
								id="relleno_Campos"> Madrid </span></br>
							</br> <span id="campos_Perfil">email: </span> <span
								id="relleno_Campos">julito@gmail.com
								
								</br>
							</br>
						</div>

						<div id="amigos">
							<table>
								<thead>
									<tr>
										<th rowspan="2">
										<th colspan="2"><span id="campos_Perfil">Amigos</span>
								</thead>
								<tbody>
									<tr>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
									<tr>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
									<tr>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a>
								</tbody>
							</table>
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

									<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
								</div>
							</a> <a class="" href="actividad">
								<div class="img_thumb">

									<div class="img_desc">
										<p id="actividad">Fiesta</p>
										<p id="actividad">7/11/2015 23:00</p>
										<p id="actividad">Kapital</p>
									</div>

									<img class="i_actv" src="${prefix}resources/images/fiesta.jpg" alt="" />

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
