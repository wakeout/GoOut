
<!DOCTYPE HTML>

<html>
	<head>
		<link rel="stylesheet" href="${prefix}resources/css/style_efecto.css">
		
		<script src="${prefix}resources/js/modernizr.js"></script>
		
		<%@ include file="../fragments/head.jspf" %>
		<%@ page contentType="text/html; charset=UTF-8"%>
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
							<button class="op_varias" type="submit">Unirse a la actividad</button>
						</form>
						
						</c:if>
					</c:if>	
						<c:if test="${pertenece==true}">
				
						<%@ include file="../fragments/mensaje_a_creador.jspf" %>				  
						
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
							
				</div>

			</div>

			<div id="info_actv">
				<div id="datos_actv">
				
					<div id="nombre_actv"><span id="nombre">${actividad.nombre}</span></div>
					<div class="dato_actv"><span title="creador de la actividad"><c:out value="${actividad.creador.login}"/></span>
					<span title="estado de la actividad"><c:out value="${actividad.estado}"/></span>
					<span title="privacidad de la actividad"><c:out value="${actividad.privacidad}"/></span></div>
					<div class="dato_actv">Fecha: <c:out value="${actividad.fecha_ini}"/> - <c:out value="${actividad.fecha_fin}"/></div>
					<div class="dato_actv">Hora: <c:out value="${actividad.hora_ini}"/> - <c:out value="${actividad.hora_fin}"/></div>
					<div class="dato_actv">Localización: <c:out value="${actividad.localizacion}"/>
						<br>
						
						<c:forEach items="${tags}" var="a">
							<span style="margin-left: 5px;margin-right: 5px;">#<c:out value="${a.nombre}"/></span>
						</c:forEach>
			
					</div>
				
				</div>
			<div id="descripcion">
			<p>Descripción de la actividad</p>
				<div id="desc_actv">
				<p>
					<c:out value="${actividad.descripcion}"/>
				</p>
				</div>
			</div>

		
		
				</div>
		
		<div id="gente_actv">
		<p> Usuarios apuntados  <c:out value="${actividad.npersonas}"/>/<c:out value="${actividad.maxPersonas}"/></p>
			<div id="gente_apuntada">
					<table>		
						<tbody>
							<c:forEach items="${participantes}" var="p">
							<c:if test="${p.borrado == false }">
								<tr>
								<td>
								<a href="../perfil/${p.id}">
									<img class="i_people" src="../usuario/imagen?id=${p.id}" alt="" />
								</a>
								</td>
								</tr>
							</c:if>
							</c:forEach>
						</tbody>
					</table>
			</div>		
					<c:choose> 
						  <c:when test="${(actividad.maxPersonas-actividad.npersonas) > 0}">
						    <span>Aun faltan <c:out value="${actividad.maxPersonas-actividad.npersonas}"/> por apuntarse!</span> 
						   	<c:if test="${pertenece}">
								<%@ include file="../fragments/invitar.jspf"%>				  
						   	</c:if>
							 </c:when>
						  <c:otherwise>
						    <span>Actividad completa!</span>
						  </c:otherwise>
					</c:choose>
					
					<%@ include file="../fragments/participantes.jspf" %>		
					
					<%@ include file="../fragments/galeria.jspf" %>		  
						  
						 
			
		</div>
		
		<div class="movimiento">
			
			<div class="container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="foro"><h2 style="padding-left: 26px;">Foro</h2></li>
					<li class="tab-link" data-tab="hitos"> <h2 style="padding-left: 24px;">Hitos</h2></li>
					<li class="tab-link" data-tab="encuestas"><h2 style="padding-left: 2px;">Encuestas</h2></li>
					<li class="tab-link" data-tab="pagos"> <h2 style="padding-left:22px;">Pagos</h2></li>
				</ul>
				<div id="foro" class="tab-content current">
					<div class="foro_actv">
						<c:forEach items="${comentarios}" var="c"> 
							<div class="m_actv">
								<a href="../perfil/${c.usuario.id}"><img class="i_people" src="../usuario/imagen?id=${c.usuario.id}" alt="" /></a>
								<p  class="mensajes_actv">
									<c:out value="${c.asunto}"/>
								</p>
								<c:out value="${c.usuario.login}"/>	
								<hr></hr>								
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
				<div id="hitos" class="tab-content">
					<div class="foro_actv">
						<br>
						<c:forEach items="${hitos}" var="h">
			  				<span><c:out value="${h.anuncio}"/></span>
							<br>
							<c:out value="${h.fecha}"/>
							<br>
							<hr></hr>	
						</c:forEach>
						<c:if test="${pertenece==true}">
							<%@ include file="../fragments/proponer_hito.jspf" %>	
						</c:if>
					</div>	
				</div>
				<div id="encuestas" class="tab-content">
					<div class="foro_actv">
					<c:forEach items="${encuestas}" var="e"> 
						<form action="${prefix}responderEncuesta" method="post">
							<span> <c:out value="${e.pregunta.asunto}"/></span>
							<br>
							<c:forEach items="${e.respuestas}" var="r">
								<input type="checkbox" name="respuestas" value="${r.id}"/> ${r.mensaje.asunto}	
								<c:forEach items="${r.usuario}" var="u">
									
								</c:forEach>								
								<br>
							</c:forEach>
							<br>
							<input type="hidden" name="actividad" value="${actividad.id}"/>
							<button name="submit" type="submit">Responder</button>
							<hr></hr>
						</form>	
					</c:forEach>
					
					<c:if test="${pertenece==true}">
						<%@ include file="../fragments/nuevaEncuesta.jspf" %>
					</c:if>
					</div>
				</div>
				<div id="pagos" class="tab-content">
					<div class="foro_actv">
					<div class="pagos_actv">
						<c:forEach items="${pagos}" var="p">
							<div>
								<p>
									Forma de Pago: <c:out value="${p.descripcion}" />
									<br>
									Precio:    <c:out value="${p.precioIndividual}"/>
									<br>
									Fecha:	<c:out value="${p.fechaLimite}"/>
								</p>
							</div>
							<hr></hr>
						</c:forEach>	
					</div>
					<c:if test="${pertenece==true}">
						<%@ include file="../fragments/proponer_pago.jspf" %>
					</c:if>
					</div>
				</div>

			</div><!-- container -->
			
			
			
		</div>

	</div>
	</div>
		<script src="${prefix}resources/js/jquery-2.1.1.js"></script>		
		<script src="${prefix}resources/js/efecto.js"></script>
		<script src="${prefix}resources/js/velocity.min.js"></script>
</body>
</html>