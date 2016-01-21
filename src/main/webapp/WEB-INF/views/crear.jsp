<!DOCTYPE HTML>

<html>
<head>

<%@ include file="../fragments/head.jspf"%>
<link rel="stylesheet" href="${prefix}resources/css/style_crear.css">
<link rel="stylesheet" href="${prefix}resources/css/style_efecto_admin.css">

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
												<!-- <p id="text">¿QUÉ QUIERES HACER?</p>-->
												<br>
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
														<c:forEach items="${tags}" var="t" >
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
												<!-- <p id="text">¿CUÁNDO QUIERES HACERLO?</p>-->
												<br>
												<label> Inicio:</label> <input type="date" size="12"
													name="fecha_ini" id="fecha_ini" required/> <!--<br> <input
													type="checkbox" name="check" id="check" /> <label
													for="check">¿Más de un día?</label>-->
												<!--  inputField-->
												<!--<div id="fecha_regreso">-->
												<br>
												<br>
												<label> Fin:</label> <input type="date" size="12"
													id="inputField2" name="fecha_fin" required/>
												
												<tr>
													
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
												<!-- <p id="text">¿DÓNDE ES?</p>-->
												<!-- <div id="mapa">-->
												<!--<div>-->
												<br>
													
													<br>
													<br>
												<!-- </div>-->
												<label>Lugar de Origen</label> <input type="text" size="10"
													class="caja" name="origen" required/> 
													<br> 
													<br>
													<input name="ruta" id="ruta"
													type="checkbox" value="cambio" onchange="habilitarRuta()" />¿Habilitar
												ruta? 
												<br> 
												<br>
												<label>Destino</label> <input type="text"
													name="destino" id="destino" disabled
													style="width: 110px; height: 30px" class="caja"/>
												<br>
												<br>
													
												<%@ include file="../fragments/invitacionesAmigos.jspf"%>
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
