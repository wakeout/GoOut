<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf" %>
<link rel="stylesheet" href="${prefix}resources/css/style_crear.css"> 
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
							
		
							<div id="crear" align="center">
							<p id = "text">CREACION DE ACTIVIDADES</p>
								<div id="creacion">
									<div id="crear_1">
										<p id = "text">¿QUÉ QUIERES HACER?</p>
										<table id="nombre_actv">
											<div id="upload">
										        <input type="file" onchange="valor_img(this.value)"/>
										    </div>
											<span class="titulos">Nombre de la actividad</span>
											<tr>
												<td><input type="text" class="caja"/></td>
											</tr>
											
											<table id="tipo_actividad">
											<tr>
												<span class="titulos">Tipo de actividad</span>
											</tr>
												
											<tr>
												<td><input name="cbipeliculas" type="checkbox" />Cine</td>
												<td><input name="cbilibros" type="checkbox" />Gastronomia </td>
												<td><input name="cbiinternet" type="checkbox" />Viajes</td>
											</tr>
											
											<tr>
												<td><input name="cbipeliculas" type="checkbox" />Baile</td>
												<td><input name="cbilibros" type="checkbox"  />Fiesta</td>
												<td><input name="cbiinternet" type="checkbox" />Karaoke</td>
											</tr>
											
											<tr>
												<td><input name="cbipeliculas" type="checkbox" />Deportes</td>
												<td><input name="cbilibros" type="checkbox"  />Aventura</td>
												<td><input name="cbiinternet" type="checkbox" />Social</td>
											</tr>
											
											<tr>
												<form name="otros">
													<td><input name="cbotro" type="checkbox" value="cambio" onchange= "habilitar()"/>Otros</td>
													<td><input type="text" name="other" disabled style="width:110px; height:30px" class="caja"></td>
													
												</form>
											</tr>
											</table>
											

											<span class="titulos">Numero de participantes</span>
											<br>
											<tr><input type="number" min="3" value="3" id="num_participantes" class="caja"></tr>
											<br>
											<tr>
											<span class="titulos">¿Actividad privada? <input type="checkbox"/></span>
											</tr>
											
										</table>
									</div>
									<div id="crear_2">
										<p id = "text">¿CUÁNDO QUIERES HACERLO?</p>
										<form action="">
											<label> Inicio:</label>
											<input type="text" size="12" id="inputField" />
										</form>
										<br>
										<input type="checkbox" name="check" id="check"/>
										<label  for="check">¿Más de un día?</label>
										<div id="fecha_regreso">
										<form action="">
											<label> Fin:</label>
											<input type="text" size="12" id="inputField2" />
										</form>
										</div>
										<br>
										<span class="titulos">Hora de salida</span>
										<tr>
											<td><input type="number" min=01 value=00 max="24" id="num_participantes" class="caja"></td>
											<td>:</td>
											<td><input type="number" min="1" value="0" max="59" id="num_participantes" class="caja"></td>
										</tr>
										<br>
										
									</div>
									<div id="crear_3"><p id= "text">¿DÓNDE ES?</p>
										<div id="mapa">
										<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6286564.690415084!2d-5.4376118!3d39.7034345!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1445771146399" width="390" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
										</div>
										<label>Lugar de Origen</label>
										<input type="text" size="10" class="caja" />
										<br>
										<form name="destino">
											<input name="cbOrigen" type="checkbox" value="cambio" onchange= "habilitarRuta()"/>¿Habilitar ruta?
											<br>
											<label>Destino</label>
											<input type="text" name="ruta" disabled style="width:110px; height:30px" class="caja">
										</form>
									</div>
									<div id="boton_crear">
										<input type="button" id="b_crear" value="CREAR ACTIVIDAD" onclick="crear_actividad()" />
									</div>
								</div>			
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
	<%@ include file="../fragments/scripts.jspf" %>



</body>
</html>
