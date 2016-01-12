
<!DOCTYPE HTML>

<html class="no-js">
	<head>
		<link rel="stylesheet" href="${prefix}resources/css/style_efecto.css">
		<%@ include file="../fragments/head.jspf" %>
		<link rel="stylesheet" href="${prefix}resources/css/style_actividad.css"> 
	</head>
<body>
	<div id="pagina">
<%@ include file="../fragments/header.jspf" %>

		<div id="contenido">		
			
			<div id="opciones_actv">
				<a class=""><img id="i_actv" src="${prefix}resources/images/${actividad.idImagen}" alt="" /></a>
				 
				 <div id="btones_actv">
					<c:if test="${actividad.privacidad.equals('publica') && pertenece==false}">
						<c:if test="${!empty usuario  && actividad.npersonas < actividad.maxPersonas}">
				 
						<form action="${prefix}unirseActividad" method="POST">
							<input type="hidden" name="id_actv" value="${actividad.id}"/>
							<input type="hidden" name="id_propio" value="${usuario.id}"/>
							<button type="submit">Unirse a la actividad</button>
						</form>
						
						</c:if>
					</c:if>	
						<c:if test="${pertenece==true}">
				
						<button type="button">Mensaje a creador</button>
						<button type="button">Propon algo nuevo!</button>
						
						<form action="${prefix}salirActividad" method="POST">
						<input type="hidden" name="actividad" value="${actividad.id}" />
						<button name="submit" type="submit">Salir de la actividad</button>
						</from>
						
						<form action="${prefix}denunciarActividad" method="POST">
						<input type="hidden" name="id_actividad" value="${actividad.id}" />
						<button name="submit" type="submit" id="boton_reportar">Denunciar actividad</button>
						</form>
						
						</c:if>
					
				</div>

			</div>

			<div id="info_actv">
				<div id="datos_actv">
				
					<div id="nombre_actv"><span id="nombre">${actividad.nombre}</span></div>
					<div class="dato_actv"><span title="creador de la actividad">${actividad.creador.login}</span>
					<span title="estado de la actividad">${actividad.estado}</span>
					<span title="privacidad de la actividad">${actividad.privacidad}</span></div>
					<div class="dato_actv">Fecha: ${actividad.fecha_ini} - ${actividad.fecha_fin}</div>
					<div class="dato_actv">Localización: ${actividad.localizacion}</div>
					<!--<a><img class="i_people" src="${prefix}resources/images/localizacion.png"></a>-->
					<!--<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6286564.690415084!2d-5.4376118!3d39.7034345!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1445771146399" width="900" height="700" frameborder="0" style="border:0" allowfullscreen></iframe>-->
					<div class="dato_actv">Hitos: 
						<select id="hito" name="hito">
						  <option value="hito1" selected="selected">Reservar actividad</option>
						  <option value="hito2">Pagar actividad</option>
						  <option value="hito3">Ir al punto de reunión</option>
						</select>
					</div>
				</div>
				
			<div id="descripcion">
			<p>Descripción de la actividad</p>
				<div id="desc_actv">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non ipsum repudiandae sequi ut optio reiciendis consectetur, cum, a provident, iusto quod esse, perferendis iure iste! Quidem itaque, exercitationem aliquam, mollitia recusandae repellat dolores quibusdam minima quae reprehenderit ut, reiciendis officia.
				</p>
				</div>
			</div>

				<!--<div class="foro_actv">
					<div class="m_actv">
						<a href="../perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
						<p  class="mensajes_actv">
							hellooo!! estoy muy contento de estar aqui
						</p>
						<button class="boton" name="submit" type="submit" id="boton_reportar">Denunciar</button>
					</div>
					<div class="m_actv">
						<a href="../perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
						<p  class="mensajes_actv">
							hellooo!! estoy muy contento de estar aqui
						</p>
						<button class="boton" name="submit" type="submit" id="boton_reportar">Denunciar</button>
						</div>
					<div class="m_actv" id="comentario"></div>
					<div class="m_actv">
						<a href="../perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
						<input id="escribir" type="textarea">
						<button id="comentar" class="btn">Comentar</button>
					</div>
				</div>-->
		
				</div>
		
		<div id="gente_actv">
		<p> Usuarios apuntados  ${actividad.npersonas}/${actividad.maxPersonas}</p>
			<div id="gente_apuntada">
					<table>		
						<tbody>
							<c:forEach items="${participantes}" var="p">
								<tr>
								<td>
								<a href="../perfil/${p.id}">
									<img class="i_people" src="${prefix}resources/images/${p.idFoto}" alt="" />
								</a>
								</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>		
					<c:choose> 
						  <c:when test="${(actividad.maxPersonas-actividad.npersonas) > 0 }">
						    <span>Aun faltan ${actividad.maxPersonas-actividad.npersonas} por apuntarse!</span> 
						   
						   
	
		<div class="cd-modal-action">
			<a href="#0" class="btne" data-type="modal-trigger"> Invitar a un amigo
						  </a>
			<span class="cd-modal-bg"></span>
		</div> <!-- cd-modal-action -->

		<div class="cd-modal">
			<div class="cd-modal-content">
				</div> <!-- cd-modal-content -->
		</div> <!-- cd-modal -->

		<a href="#0" id="v" class="cd-modal-close">Close</a>

						  
						  
						  </c:when>
						  <c:otherwise>
						    <span>Actividad completa!</span>
						  </c:otherwise>
					</c:choose>
					
					
					
		<!-- 	<%@ include file="../fragments/participantes2.jspf" %>
		 -->
			
		</div>

	</div>
	</div>
	
	<%@ include file="../fragments/scripts.jspf"%>
</body>
</html>