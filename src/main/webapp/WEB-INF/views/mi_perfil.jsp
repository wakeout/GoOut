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
					<a><img id="i_perfil" src="${prefix}resources/images/minion.jpg" alt="" /></a>
					<br>
					<center>
						<button class="btn">Cambiar imagen de perfil</button>
					</center>
				</div>

				<div class="info_perfil">

						<div>
						<ul id="menu">
						  <li><a id="menu1" href="#">Mi Perfil</a></li>
						  <li><a id="menu2" href="#">Modificar Perfil</a></li>
						  <li><a id="menu3" href="#">Privacidad</a></li>
						</ul>
						</div>

					<div id="datos_perfil">
					
						<div class="mi_perfil">
						<fieldset>
  							<legend>Datos usuario</legend>
  							<div class="campos_Perfil">
								<label for="nombre_perfil">Nombre:</label> 
								<label id="nombre_perfil">Julio Garcí­a Sánchez</label>
							</div>
							
							<div class="campos_Perfil">
								<label for="fecha_perfil">Fecha Nac:</label> 
								<label id="fecha_perfil">15 de marzo 1990</label>
							</div>
							<div class="campos_Perfil">
								<label for="prov_perfil">Provincia:</label> 
								<label id="prov_perfil">Madrid</label>
							</div>
							<div class="campos_Perfil">
								<label for="email_perfil">Email: </label> 
								<label id="email_perfil">julio1958@gmail.com</label>
							</div>
							<div class="campos_Perfil">
								<label for="union">Unido: </label> 
								<label id="union">10 de Noviembre del 2015</label>
							</div>
							</fieldset>
														<div class="activ_Perfil">
							<label id="campos_Perfil">ACTIVIDADES EN LAS QUE ESTÁ APUNTADO</labe>
							<!-- COPIADO DE MIS ACTIVIDADES, HAY QUE LINKARLO -->
								<div id="actv_perfil">
									<a class="" href="actividad">
										<div class="img_thumb">
											<div class="img_desc">
												<p id="actividad">Senderismo</p>
												<p id="actividad">10/11/2015 8:00</p>
												<p id="actividad">Sierra de Guadarrama</p>
											</div>
		
											<img class="i_actv" src="${prefix}resources/images/senderismo.jpg" alt="" />
										</div>
										</a> 
										<a href="actividad">
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

						<div class="mod_perfil">
							<form action="#" method="get">
								<fieldset>
	  							<legend>Datos usuario</legend>
	  							<div class="campos_Perfil">
									<label for="nombre_perfil">Nombre:</label> 
									<input id="nombre_perfil" type="text" value="Julio Garcí­a Sánchez"/>
								</div>
								
								<div class="campos_Perfil">
									<label for="fecha_perfil">Fecha Nac:</label> 
									<input id="fecha_perfil" type="date" value=""/>
								</div>
								<div class="campos_Perfil">
									<label for="prov_perfil">Provincia:</label> 
									<input id="prov_perfil" type="text" value="Madrid"/>
								</div>
								<div class="campos_Perfil">
									<label for="email_perfil">Email: </label> 
									<input id="email_perfil" type="email" value="julio1958@gmail.com"/>
								</div>
								<div class="actualizar">
									<input id="actualizar_perfil" type="submit" value="Actualizar Informacion"/>
								</div>
								</fieldset>
							</form>
							<form action="#" method="get">
								<fieldset>
	  							<legend>Cambio password</legend>
	  							<div class="campos_Perfil">
									<label for="psw_actual_perfil">Password Actual:</label> 
									<input id="psw_actual_perfil" type="password" />
								</div>
								
								<div class="campos_Perfil">Nuevo Password:</label> 
									<input id="psw_nuevo_perfil" type="password"/>
								</div>
								<div class="campos_Perfil">
									<label for="psw_nuevo2_perfil">Repite Password:</label> 
									<input id="psw_nuevo2_perfil" type="password"/>
								</div>
								<div class="actualizar">
									<input id="actualizar_password" type="submit" value="Cambiar Password"/>
								</div>
								</fieldset>
							</form>
						</div>
						</div>
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
					
					
				</div>
			</div>

			<!-- Footer -->
			<%@ include file="../fragments/footer.jspf" %>
		</div>

		<!-- Scripts -->
		<%@ include file="../fragments/scripts.jspf" %>
</body>
</html>
