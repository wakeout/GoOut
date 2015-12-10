<!DOCTYPE HTML>

<html>
	<head>
		
		<link rel="stylesheet" href="${prefix}resources/css/style.css"> <!-- Resource style -->
		<%@ include file="../fragments/head.jspf" %>
		<link rel="stylesheet" href="${prefix}resources/css/style_actividad.css"> 
	</head>
<body>
	<div id="page-wrapper">

			<!-- Header -->
			<%@ include file="../fragments/header.jspf" %>
			<!-- Main -->
	<div id="main-wrapper">			
		<div class="container">
		
			<div class="s_actv">
				<a class=""><img id="i_actv" src="${prefix}resources/images/${actividad.idImagen}" alt="" /></a> 
				<br>
				<center><button type="button">Unirse a la actividad</button></center>
				<center><button type="button">Mensaje a creador</button></center>
				<center><button type="button">Propon algo nuevo!</button></center>
				<center><button name="submit" type="submit" id="boton_reportar">Denunciar actividad</button></center>

			</div>

			<div class="info_actv">

				<div id="datos_actv">

					<div class="t_actv">${actividad.nombre}</div>
					<div class="privacidad_actividad">Publica</div>
					<div class="fecha_actv">Miercoles 12/07/2016 entre las 13:00-19:50</div>
					<div class="zona_actv">  
							Despegue de Moncloa

	<section class="cd-section">

		<div class="cd-modal-action">
			<a href="#0"  data-type="modal-trigger"><img class="i_people" src="${prefix}resources/images/localizacion.png"></a>
			<span class="cd-modal-bg"></span>
		</div> <!-- cd-modal-action -->

		<div class="cd-modal">
			<div class="cd-modal-content">
			<center><iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6286564.690415084!2d-5.4376118!3d39.7034345!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1445771146399" width="900" height="700" frameborder="0" style="border:0" allowfullscreen></iframe></center>
			</div> <!-- cd-modal-content -->
		</div> <!-- cd-modal -->

		<a href="#0" class="cd-modal-close">Close</a>
	</section> <!-- .cd-section -->

					</div>
					
					<left>PROXIMO HITO </left><img class="i_flecha" src="${prefix}resources/images/flecha.png" />
					<div class="proxHito_actv">
						Comprar entradas online
					</div>
				</div>

				<div id="gente_actv">
					<div>Estado actividad: <a class="privacidad_actividad">${actividad.estado}</a></div>
					<table>
						<thead><tr><th rowspan="2"><th colspan="2"> Gente que se apunta  ${actividad.npersonas}/${actividad.maxPersonas}</thead>		
						<tbody>
							<c:forEach items="${actividad.personas}" var="p">
							<tr>	
								<td><a href="../perfil/${p.id}"><img class="i_people" src="${prefix}resources/images/${p.idFoto}.jpg" alt="" /></a> 
							</c:forEach>	
						</tbody>
					</table>
					
					Aun faltan ${actividad.maxPersonas-actividad.npersonas} por apuntarse!   <button class="btn">Invitar a un amigo</button> 
								
								
	<section class="cd-section">

		<div class="cd-modal-action">
			<a href="#0"  data-type="modal-trigger">Ver a todos los que se han apuntado  (${actividad.npersonas})</a>
			<span class="cd-modal-bg"></span>
		</div> <!-- cd-modal-action -->

		<div class="cd-modal">	
			<div class="cd-modal-content">
				<%@ include file="../fragments/participantes2.jspf" %>
			</div> <!-- cd-modal-content -->
		</div> <!-- cd-modal -->

		<a href="#0" class="cd-modal-close">Close</a>
	</section> <!-- .cd-section -->	
		
				</div>
			</div>
		</div>

				

		<div>
			<p class="descripcion_actv">
				Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non ipsum repudiandae sequi ut optio reiciendis consectetur, cum, a provident, iusto quod esse, perferendis iure iste! Quidem itaque, exercitationem aliquam, mollitia recusandae repellat dolores quibusdam minima quae reprehenderit ut, reiciendis officia.

			</p>
		</div>

		<div class="foro_actv">
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
			<div class="m_actv" id="comentario">
			
			</div>
			<div class="m_actv">
				<a href="../perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
				<input id="escribir" type="textarea">
				<button id="comentar" class="btn">Comentar</button>
			</div>
		</div>
			
	</div>	
		
	<%@ include file="../fragments/footer.jspf" %>

	</div>

	
	<%@ include file="../fragments/scripts.jspf" %>
</body>
</html>