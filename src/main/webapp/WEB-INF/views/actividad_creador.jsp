<!DOCTYPE HTML>

<html>
	<head>
		
		<link rel="stylesheet" href="${prefix}resources/css/style.css"> <!-- Resource style -->
				<link rel="stylesheet" href="${prefix}resources/css/style_actividad.css"> 
		<%@ include file="../fragments/head.jspf" %>
		
		

	</head>
<body>
	<div id="page-wrapper">

			<!-- Header -->
			<%@ include file="../fragments/header.jspf" %>
			<!-- Main -->
	<div id="main-wrapper">			
		<div class="container">
			<div class="s_actv">
				<a class=""><img id="i_actv" src="${prefix}resources/images/33.jpg" alt="" /></a> 
				<br>
				<center><button class="btn">Mensaje a administradores de actividad</button></center>
					
	<section class="cd-section">

		<div class="cd-modal-action">
			<a href="#0"  data-type="modal-trigger"><center><button>Ajustes actividad</button></center></a>
			<span class="cd-modal-bg"></span>
		</div> <!-- cd-modal-action -->

		<div class="cd-modal">	
			<div class="cd-modal-content">
				<%@ include file="../fragments/ajustes_actividad.jspf" %>
			</div> <!-- cd-modal-content -->
		</div> <!-- cd-modal -->

		<a href="#0" class="cd-modal-close">Close</a>
	</section> <!-- .cd-section -->
	
				<!--<center><button>Ajustes actividad</button></center>-->
				<br>
				<center><button class="btn">Propon algo!</button></center>

			</div>

			<div class="info_actv">

				<div id="datos_actv">

					<div class="t_actv">Ir a la luna </div>
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




							<!--<button class="btn"><img class="i_people" src="images/localizacion.jpg"></button> --> 
						
					</div>
					
					<left>PROXIMO HITO </left><img class="i_flecha" src="${prefix}resources/images/flecha.png" />
					<div class="proxHito_actv">
						Comprar entradas online
						<table id="pagos">
							<tr>
								<td>PAGOS</td>
								<br>
							<tr>
								<td>Precio individual: 5 euros</td>
							<tr>	
								<td>Pagos realizados: 6/9 </td>
							</tr>
							<tr>
								<td>Fecha limite: 26-11-15</td>
							<tr>
								<td><button>Ajustes de pagos</button>
						</table>
					</div>
				</div>
			
				<div id="gente_actv">
					<a>Estado actividad  <select>
						<option value="abierta">Abierta</option>
						<option value="cerrada">Cerrada</option>
					</select></a>
					<table>
						<thead><tr><th rowspan="2"><th colspan="2"> Gente que se apunta  9/13</thead>		
						<tbody>
							<tr>
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
							<tr>
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
							<tr>
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
								<td><a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a> 
						</tbody>
					</table>
					
					Aun faltan 4 por apuntarse!   <button class="btn">Invitar a un amigo</button>  
	<section class="cd-section">

		<div class="cd-modal-action">
			<a href="#0"  data-type="modal-trigger">Ver a todos los que se han apuntado  (9)</a>
			<span class="cd-modal-bg"></span>
		</div> <!-- cd-modal-action -->

		<div class="cd-modal">	
			<div class="cd-modal-content">
				<%@ include file="../fragments/participantes.jspf" %>
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
				<a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
				<p  class="mensajes_actv">
					hellooo!! estoy muy contento de estar aqui
				</p>
				<button class="boton" name="submit" type="submit" id="boton_reportar">Denunciar</button>
			</div>
			<div class="m_actv">
			<a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
				<p  class="mensajes_actv">
					hellooo!! estoy muy contento de estar aqui
				</p>
			</div>
			<div class="m_actv" id="comentario">
			
			</div>
			<div class="m_actv">
				<a href="perfil"><img class="i_people" src="${prefix}resources/images/minion.jpg" alt="" /></a>
				<input id="escribir" type="textarea">
				<button id="comentar" class="btn">Comentar</button>
			</div>
		</div>
		
		<br>
		<button class="boton" name="submit" type="submit" id="boton_reportar">Denunciar actividad por contenido inadecuado</button>
			
	</div>	
		
	<%@ include file="../fragments/footer.jspf" %>

	</div>

	
	<%@ include file="../fragments/scripts.jspf" %>
</body>
</html>