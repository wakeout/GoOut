<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<%@ include file="../fragments/scripts.jspf"%>
<link rel="stylesheet" href="${prefix}resources/css/style_crear.css">
<link rel="stylesheet" href="${prefix}resources/css/style_efecto_admin.css">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="https://maps.google.com/maps/api/js?sensor=false"></script>
<script src="${prefix}resources/js/crear.js"></script>
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
											method="POST" id="formularioGordo">
											<div id="crear_1">
												<!-- <p id="text">¿QUÉ QUIERES HACER?</p>-->
												<br>
												<table id="nombre_actv">
													<div id="subir">
													
														<img id="img_destino" class="i_profile2" src="${prefix}resources/images/subir.png" alt="Tu imagen">
														<br>
														<span id="upfile1" style="cursor:pointer;border: 2px solid black;">Cambiar imagen</span>
														<input type="file" id="file1" class="cambio_img" name="imagen" style="display:none" />

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
														<tbody id="todos_tags">
														
														<c:forEach items="${tags}" var="t" >
															<tr>

																<td><input name="tags" id="tags" type="checkbox"
																	value="${t.id}"/><c:out value="${t.nombre}"/></td>
																
															</tr>
														</c:forEach>
														</tbody>
														</table>
													<table>
														<tr>
															<td><input name="otro_tag" id="otro_tag"
																type="checkbox" value="cambio" onchange="habilitar()" />Otros</td>
															<td><input type="text" name="otro" id="otro"
																 disabled style="width: 110px; height: 30px"
																class="caja"></td>
														</tr>
													</table>

													<span class="titulos">Número de participantes</span>
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
												<!-- <p id="text">¿CUÁNDO QUIERES HACERLO?</p>-->
												<br>
												<label class="nombre_caja"> Inicio:</label> <input type="date" size="12"
													name="fecha_ini" id="caja_inicio"/> 
												<br>
												<br>
												<label class="nombre_caja"> Fin:</label> <input type="date" size="12"
													id="caja_fin" name="fecha_fin"/>
												<br>
												<br>
												<label class="nombre_caja">Hora Inicio: </label> <input type="time" name="hora_ini" id="caja_hora">
												<br>
												<br>
												<label class="nombre_caja">Hora Fin: </label> <input type="time" name="hora_fin" id="caja_hora">
												<br>
												<br>
												Descripción de la actividad
												<textarea rows="5" cols="30" name="descripcion"> </textarea>
												<div id="boton_crear">
													
													<button name="submit" id="b_crear"
														value="CREAR ACTIVIDAD" onclick="comprobarDatosActividad()">
														CREAR ACTIVIDAD
													</button>
													
												</div>

											</div>
											<div id="crear_3">
												<!-- <p id="text">¿DÓNDE ES?</p>-->

												<div id="map_canvas"> </div>
												<input id="address" placeholder="Escribe la ubicacion" type ="" />
												<input id="search" type="button" value ="Buscar" /> 
												<br>
												<br>
												<label>Origen</label> <input type="text"
													class="caja" id="caja_origen" name="origen" readonly/> 
												<br> 
												<!-- <label>Destino</label> <input type="text"
													name="destino" id="destino" disabled
													style="width: 110px; height: 30px" class="caja"/>-->
												<br>
												<br>
												<div class="invitar_amigos">
												<%@ include file="../fragments/invitacionesAmigos.jspf"%>
												</div>
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
