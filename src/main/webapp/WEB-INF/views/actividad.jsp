
<!DOCTYPE HTML>

<html class="no-js">
	<head>
		<link rel="stylesheet" href="${prefix}resources/css/style_efecto.css">
		
		<script src="${prefix}resources/js/modernizr.js"></script>
		
		<%@ include file="../fragments/head.jspf" %>
		<link rel="stylesheet" href="${prefix}resources/css/style_actividad.css"> 
	
	</head>
<body>
	<div id="pagina">
<%@ include file="../fragments/header.jspf" %>

		<div id="contenido">		
			
			<div id="opciones_actv">
				<a class=""><img id="i_actv" src="../actividad/imagen?id=${actividad.id}" alt="" /></a>
				 
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
				
						<%@ include file="../fragments/mensaje_a_creador.jspf" %>				  
						
						<%@ include file="../fragments/proponer_hito.jspf" %>	
						
						<!-- file="../fragments/ajustes_actividad.jspf" -->
						
						<%@ include file="../fragments/ajustes_actividad.jspf" %>			  
						
						<form action="${prefix}salirActividad" method="POST">
						<input type="hidden" name="actividad" value="${actividad.id}" />
						<button class="op_varias" name="submit" type="submit">Salir de la actividad</button>
						</from>
						
						<form action="${prefix}denunciarActividad" method="POST">
						<input type="hidden" name="id_actividad" value="${actividad.id}" />
						<button class="op_varias" name="submit" type="submit" id="boton_reportar">Denunciar actividad</button>
						</form>
						
						</c:if>
						
						<c:forEach items="${tags}" var="a">
							<label>${a.nombre}</label>
						</c:forEach>
					
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
				  
					
				</div>
			<div id="descripcion">
			<p>Descripción de la actividad</p>
				<div id="desc_actv">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non ipsum repudiandae sequi ut optio reiciendis consectetur, cum, a provident, iusto quod esse, perferendis iure iste! Quidem itaque, exercitationem aliquam, mollitia recusandae repellat dolores quibusdam minima quae reprehenderit ut, reiciendis officia.
				</p>
				</div>
			</div>

		
		
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
									<img class="i_people" src="../usuario/imagen?id=${p.id}" alt="" />
								</a>
								</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			</div>		
					<c:choose> 
						  <c:when test="${(actividad.maxPersonas-actividad.npersonas) > 0}">
						    <span>Aun faltan ${actividad.maxPersonas-actividad.npersonas} por apuntarse!</span> 
						   	<c:if test="${pertenece}">
								<%@ include file="../fragments/invitar.jspf" %>				  
						   	</c:if>
							 </c:when>
						  <c:otherwise>
						    <span>Actividad completa!</span>
						  </c:otherwise>
					</c:choose>
					
					<%@ include file="../fragments/participantes.jspf" %>				  
						  
						 
			
		</div>
		
		<div class="movimiento">
			
			<div class="foro_container">
				<div class="foro_actv">
				<h1>Foro</h1>
			
					<c:forEach items="${comentarios}" var="c"> 
						<div class="m_actv">
							<a href="../perfil/${c.usuario.id}"><img class="i_people" src="../usuario/imagen?id=${c.usuario.id}" alt="" /></a>
							<p  class="mensajes_actv">
								${c.asunto}
							</p>
							 <form action="${prefix}denunciarActividad" method="POST">
								<input type="hidden" name="id_actividad" value="${actividad.id}" />
								<button class="btne" name="submit" type="submit" id="boton_reportar">Denunciar</button>
							</form>
						</div>
					</c:forEach>
				</div>	
					
					
				<c:if test="${pertenece==true}">

					<div class="comentar_actv">
							<form action="${prefix}hacerComentario" method="POST" id="bloque_foro">
								<a href="../perfil/${usuario.id}"><img class="i_people" src="../usuario/imagen?id=${usuario.id}" alt="" /></a>
								<input id="escribir" type="hidden" name="actividad" value="${actividad.id}">
								<input id="escribir" type="text" name="asunto">
								<button id="comentar" class="btn" type="submit" name="submit">Comentar</button>
							</form>
					</div>
					
				</c:if>
			</div>
			<div class="encuestas_actv">
			<h1>Hitos</h1>
			<br>
				<c:forEach items="${hitos}" var="h">
			  		<span>${h.anuncio}</span>
					<br>
				</c:forEach>
			<br>
			<h1>Encuestas</h1>
			<br>
				<c:forEach items="${encuestas}" var="e"> 
					<span> ${e.pregunta.asunto}</span>
					<c:forEach items="${e.respuestas}" var="r">
						<span> ${r.mensaje.asunto}</span>	
					</c:forEach>
					<br>
				</c:forEach>

			</div>	
		</div>

	</div>
	</div>
		<script src="${prefix}resources/js/jquery-2.1.1.js"></script>		
		<script src="${prefix}resources/js/efecto.js"></script>
		<script src="${prefix}resources/js/velocity.min.js"></script>
</body>
</html>