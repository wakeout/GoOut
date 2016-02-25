var objetos;
var editando = false;


$(".papelera").click(function() {
		
	
		if(confirmar()){
			var target = $(this); 
			var tipo = target.attr("id");
			console.log(tipo);
		
			var lista_id = [];

			$("input[name="+tipo+"]:checked").each(function() {
				console.log($(this).val());
				lista_id.push($(this).val());
			  });
		
			console.log(lista_id);
			$.post("borrarElemento", {id:lista_id.toString(), tipo:tipo},function() {
				for (id in lista_id)
				$("#"+tipo+"_"+lista_id[id]).remove();
		   });
		}
})	

function mostrar(elemento){
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_encuestas" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
    $( ".admin_respuestas" ).hide();
    
    $(elemento).show();
}

//Marcar y desmarcar


function checkTodos(pID) {
	 
 $( "#" + pID + " :checkbox").prop('checked',true); 

}

function noCheckTodos(pID) {
	 
	 $( "#" + pID + " :checkbox").prop('checked',false); 

}


function confirmar(){
	
	if (confirm('¿Estas seguro de borrar este elemento?')){ 
	     return true;
	}
	else
		return false;
}


function habilitarEdicion(tipo,elem){

	editando = true;
	
	
	for(var i=1;i<=elem;i++){
		
		var el = $(".edit"+i).text();
		
		if(i==3 || ((tipo == "Actividad") && i==4))
			$('.edit'+i).replaceWith("<input type='date' class='campo"+i+"' value='"+el+"'/>");
		else
			$('.edit'+i).replaceWith("<input type='text' class='campo"+i+"' value='"+el+"'/>");	
	}
		
	 $('#mod_element').replaceWith("<button type='button' id='guardar_element' onclick=guardarElemento('"+tipo+"',"+elem+")>Guardar Modificación</button>"); 
	
}

function guardarElemento(tipo,elem)
{
	editando = false;
	
	if(tipo == "Usuario")
	{
		 var nick;
		 var nombre = $('.campo2').val();
		 var nacimiento = $('.campo3').val();
		 var provincia = $('.campo4').val();
		 var email = $('.campo5').val();
		 var rol = $('.campo6').val();
	}
	
	if(tipo == "Actividad")
	{
		var id_actv;
		var nombre_a = $('.campo1').val();
		var creador = $('.campo2').val();
		var f_ini = $('.campo3').val();
		var f_fin = $('.campo4').val();
		var hora_ini = $('.campo5').val();
		var hora_fin = $('.campo6').val();
		var origen = $('.campo7').val();
		var destino = $('.campo8').val();
		var estado = $('.campo9').val();
	}
	
	for(var i=1;i<=elem;i++)
	{
		var valor = $(".campo"+i).val(); 
	    $('.campo'+i).replaceWith("<span class='edit"+i+"'>"+valor+"</span>"); 
	}
	
	 $('#guardar_element').replaceWith("<button type='button' id='mod_element' onclick=habilitarEdicion('"+tipo+"',"+elem+")>Modificar "+tipo+"</button>"); 

	 if(tipo == "Usuario")
	 {
		 $.each(objetos, function(i, o) {
				
				nick=o.login;
		});
		 
			$.post("modElemento", {tipo:tipo,nick_perfil:nick, prov_perfil:provincia, email_perfil:email, nombre_perfil:nombre, nacimiento:nacimiento, rol:rol},function(data) {
				objetos=$.parseJSON(data);
				actualizar(tipo);
		  });
		
	 }
		
	if(tipo == "Actividad")
	{
		$.each(objetos, function(i, o) {
			
			id_actv=o.id;
		});
			
			$.post("modElemento", {tipo:tipo,id_actv:id_actv,nombre_a:nombre_a, creador:creador, hora_ini:hora_ini, hora_fin:hora_fin, origen:origen, destino:destino, estado:estado, f_ini:f_ini, f_fin:f_fin},function(data) {
				objetos=$.parseJSON(data);
				actualizar(tipo);
			});
	 }
	
}

function buscarElementos(buscado,tipo,target){
	
	if(editando == false){
		
	$(".element_previa").css("color", "black");
	$("#vista_previa").css("display", "block");
	$(target).css("color", "green");

	$.post("vistaPrevia", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
			
			actualizar(tipo);
	  });
	}
	
}

function desaparece(target){
	
	//$("#vista_previa").css("display", "none");
}

function actualizar(tipo){
	var filtro = null;
	filtro = new Object();
	
	$.each(objetos, function(i, o) {
		
		filtro[i] = o;
	});
	
	vista(filtro,tipo);
}


function vista(obj,tipo){
	
	objetos = obj;
	$.each(obj, function(i, o) {
		if(o!=null){
			
			switch(tipo){
			case "Actividad":
			$("#vista_previa").html("<table>" +
					"<tr><td> ID: "+o.id+"</td>" +
					"<tr><td>Nombre: <span class='edit1'>"+o.nombre+"</span></td>" +
					"<tr><td>Creador: <span class='edit2'>"+o.creador+"</span></td>"+
					"<tr><td>Fecha inicio: <span class='edit3'>"+o.fecha+"</span></td>" +
					"<tr><td>Fecha fin: <span class='edit4'>"+o.fecha_fin+"</span></td>"+
					"<tr><td>Hora inicio: <span class='edit5'>"+o.hora_ini+"</span></td>"+
					"<tr><td>Hora fin: <span class='edit6'>"+o.hora_fin+"</span></td>" +
					"<tr><td>Origen: <span class='edit7'>"+o.localizacion+"</span></td>" +
					"<tr><td>Destino: <span class='edit8'>"+o.destino+"</span></td>"+
					"<tr><td>Personas unidas: <span class=''>"+o.npersonas+"</span></td>" +
					"<tr><td>Máximo de personas: <span class=''>"+o.max+"</span></td>"+
					"<tr><td>Estado: <span class='edit9'>"+o.estado+"</span></td>" +
					"</table>"+
					"<button id='mod_element' onclick=habilitarEdicion('"+tipo+"',9)>Modificar "+tipo+"</button>");
			break;
			
			case "Usuario":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Login: <span class=''>"+o.login+"</span></td>" +
						"<tr><td>Nombre: <span class='edit2'>"+o.nombre+"</span></td>"+
						"<tr><td>Nacimiento: <span class='edit3'>"+o.nacimiento+"</span></td>" +
						"<tr><td>Provincia: <span class='edit4'>"+o.provincia+"</span></td>"+
						"<tr><td>E-Mail: <span class='edit5'>"+o.email+"</span></td>"+
						"<tr><td>Rol: <span class='edit6'>"+o.rol+"</span></td>" +
						"<tr><td>Nº Amigos: <span class=''>"+o.namigos+"</span></td>" +
						"</table>"+
						"<button id='mod_element' onclick=habilitarEdicion('"+tipo+"',6)>Modificar "+tipo+"</button>");
			break;
			
			case "Comentario":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>ID Usuario: <a href='#'>"+o.idusuario+"</a></td>" +
						"<tr><td>Nombre Usuario: <a href='#'>"+o.usuario+"</a></td>" +
						"<tr><td>Asunto: "+o.asunto+"</td>"+
						"</table>");
			break;
			
			case "Encuesta":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Pregunta: "+o.pregunta+"</td>" +
						"</table>");
			break;
				
			case "Foro":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
						"<tr><td>Origen: "+o.localizacion+"</td>" +
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
						"</table>");
			break;
			
			case "Hito":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Fecha: "+o.fecha+"</td>" +
						"<tr><td>Anuncio: "+o.anuncio+"</td>"+
						"</table>");
			break;
				
			case "Novedad":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Fecha: "+o.fecha+"</td>" +
						"<tr><td>Mensaje: "+o.mensaje+"</td>"+
						"<tr><td>Tipo: "+o.tipo+"</td>" +
						"</table>");
			break;
				
			case "Mensajes":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Titulo: "+o.titulo+"</td>" +
						"<tr><td>Tipo: "+o.tipo+"</td>"+
						"<tr><td>Contenido: "+o.contenido+"</td>" +
						"<tr><td>ID Origen: "+o.idorigen+"</td>"+
						"<tr><td>ID Destino: "+o.iddestino+"</td>"+
						"<tr><td>Usuario Origen: "+o.nombreorigen+"</td>" +
						"<tr><td>Usuario Destino: "+o.nombredestinos+"</td>" +
						"<tr><td>Leido: "+o.hora_ini+"</td>"+
						"</table>");
			break;
			
			case "Pago":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Descripcion: "+o.descripcion+"</td>" +
						"<tr><td>Precio: "+o.precio+"€</td>"+
						"<tr><td>Pagado: "+o.pagado+"</td>" +
						"<tr><td>Fecha: "+o.fecha+"</td>"+
						"</table>");
			break;
			
			case "Registro":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Usuario: "+o.usuario+"</td>" +
						"<tr><td>Actividad: "+o.actividad+"</td>"+
						"<tr><td>Nº Pagos: "+o.npagos+"</td>" +
						"</table>");
			break;
			
			case "Respuesta":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Mensaje: "+o.mensaje+"</td>" +
						"<tr><td>Nº Usuarios: "+o.nusuarios+"</td>"+
						"</table>");
			break;
			
			case "Tag":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Nº Actividades: "+o.nactividades+"</td>"+
						"</table>");
			break;
			}

		}
	});
	
}
