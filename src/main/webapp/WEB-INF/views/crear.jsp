<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<link rel="stylesheet" href="${prefix}resources/css/style_crear.css">

</head>
<body class="homepage">
	<div id="page-wrapper">

		<%@ include file="../fragments/header.jspf"%>
		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">
	
						<!-- Portfolio -->
						<section>
							<div id="global" align="center">
								<div id="crear" align="center">
									<p id="text">CREACION DE ACTIVIDADES</p>
									<div id="creacion">
										<form action="${prefix}crearActividad" enctype="multipart/form-data"
											method="POST" name="cre" id="formularioGordo">
											<div id="crear_1">
												<p id="text">¿QUÉ QUIERES HACER?</p>
												<table id="nombre_actv">
													<div id="upload">
														<input type="file" name="imagen" />

													</div>
													<span class="titulos">Nombre de la actividad</span>
													<tr>
														<td><input type="text" name="nombre_actv"
															class="caja" placeholder="Nombre de la actividad" required/></td>
													</tr>

													<table id="tipo_actividad">
														<tr>
															<span class="titulos">Tipo de actividad</span>
														</tr>
														<c:forEach items="${tags}" var="t">
															<tr>

																<td><input name="tags" id="tags" type="checkbox"
																	value="${t.id}"/>${t.nombre}</td>

															</tr>
														</c:forEach>

														<tr>
															<td><input name="otro_tag" id="otro_tag"
																type="checkbox" value="cambio" onchange="habilitar()" />Otros</td>
															<td><input type="text" name="otro" id="otro"
																value="" disabled style="width: 110px; height: 30px"
																class="caja"></td>
														</tr>
													</table>

													<span class="titulos">Numero de participantes</span>
													<br>
													<tr>
														<input type="number" min="3" value="3" id="max_parti"
															name="max_participantes" class="caja">
														
													</tr>
													<br>
													<tr>
														<span class="titulos">¿Actividad privada? <input
															type="checkbox" value="" name="actv_privada" id="actv_privada" /></span>
													</tr>
												</table>
											</div>
											<div id="crear_2">
												<p id="text">¿CUÁNDO QUIERES HACERLO?</p>
												<label> Inicio:</label> <input type="datetime-local" size="12"
													name="fecha_ini" id="fecha_ini" required/> <br> <input
													type="checkbox" name="check" id="check" /> <label
													for="check">¿Más de un día?</label>
												<!--  inputField-->
												<div id="fecha_regreso">
													<label> Fin:</label> <input type="date" size="12"
														id="inputField2" name="fecha_fin" />
												</div>
												<!-- <br> <span class="titulos">Hora de salida</span>-->
												<tr>
													<!-- <td><input type="time" name="hora_salida" id="inputField2"/>-->
													
													<!-- 
													<td><input type="number" min=01 value=00 max="24"
														id="num_participantes" class="caja"></td>
													<td>:</td>
													<td><input type="number" min="1" value="0" max="59"
														id="num_participantes" class="caja"></td>-->
												</tr>
												<br>
												<div id="boton_crear">
													
													<button name="submit" id="bcrear"
														value="CREAR ACTIVIDAD" onclick="comprobarDatosActividad()">
														Enviar
													</button>
													
												</div>

											</div>
											<div id="crear_3">
												<p id="text">¿DÓNDE ES?</p>
												<div id="mapa">
													<iframe
														src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6286564.690415084!2d-5.4376118!3d39.7034345!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1445771146399"
														width="390" height="300" frameborder="0" style="border: 0"
														allowfullscreen></iframe>
												</div>
												<label>Lugar de Origen</label> <input type="text" size="10"
													class="caja" name="origen" required/> <br> <input name="ruta" id="ruta"
													type="checkbox" value="cambio" onchange="habilitarRuta()" />¿Habilitar
												ruta? <br> <label>Destino</label> <input type="text"
													name="destino" id="destino" disabled
													style="width: 110px; height: 30px" class="caja">
											</div>
										</form>
									</div>
								</div>
							</div>
						</section>

			</div>
		</div>
		<!-- Footer -->
		<%@ include file="../fragments/footer.jspf"%>
	</div>
	<%@ include file="../fragments/scripts.jspf"%>
</body>
</html>
