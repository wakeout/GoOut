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
	    $('.edit'+i).replaceWith("<input type='text' class='campo"+i+"' value='"+el+"'/>"); 
	}
	 $('#mod_element').replaceWith("<button type='button' id='guardar_element' onclick=guardarElemento('"+tipo+"',"+elem+")>Guardar Modificación</button>"); 
	
	$.each(objetos, function(i, o) {
		
	});
	
}

function guardarElemento(tipo,elem){
	
	editando = false;
	
	for(var i=1;i<=elem;i++){
		
		var el = $(".campo"+i).val(); 
	    $('.campo'+i).replaceWith("<span class='edit"+i+"'>"+el+"</span>"); 
	}
	
	 $('#guardar_element').replaceWith("<button type='button' id='mod_element' onclick=habilitarEdicion('"+tipo+"',"+elem+")>Modificar "+tipo+"</button>"); 
	
//	$.each(objetos, function(i, o) {
//		
//	});
	
}

$('.editaImagen').hover(
		   function() {
		      var el = $(this).children('.edit');                                                
		      el.replaceWith("<input type='text' value='" + el.text() + "' />");                                                
		   },
		   function() {
		      var el = $(this).children('input');
		      el.replaceWith("<div class='wrapper'>" + el.val() + "</div>");                                                
		   }
);


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
					"<tr><td>Nombre: <span class='edit2'>"+o.nombre+"</span></td>" +
					"<tr><td>Creador: <span class='edit3'>"+o.creador+"</span></td>"+
					"<tr><td>Fecha inicio: <span class='edit4'>"+o.fecha+"</span></td>" +
					"<tr><td>Fecha fin: <span class='edit5'>"+o.fecha_fin+"</span></td>"+
					"<tr><td>Hora inicio: <span class='edit6'>"+o.hora_ini+"</span></td>"+
					"<tr><td>Hora fin: <span class='edit7'>"+o.hora_fin+"</span></td>" +
					"<tr><td>Origen: <span class='edit8'>"+o.localizacion+"</span></td>" +
					"<tr><td>Destino: <span class='edit9'>"+o.destino+"</span></td>"+
					"<tr><td>Personas unidas: <span class='edit10'>"+o.npersonas+"</span></td>" +
					"<tr><td>Máximo de personas: <span class='edit11'>"+o.max+"</span></td>"+
					"<tr><td>Estado: <span class='edit12'>"+o.estado+"</span></td>" +
					"</table>"+
					"<button id='mod_element' onclick=habilitarEdicion('"+tipo+"',12)>Modificar "+tipo+"</button>");
			break;
			
			case "Usuario":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Login: "+o.login+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>"+
						"<tr><td>Nacimiento: "+o.nacimiento+"</td>" +
						"<tr><td>Provincia: "+o.provincia+"</td>"+
						"<tr><td>E-Mail: "+o.email+"</td>"+
						"<tr><td>Rol: "+o.rol+"</td>" +
						"<tr><td>Nº Amigos: "+o.namigos+"</td>" +
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Comentario":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>ID Usuario: <a href='#'>"+o.idusuario+"</a></td>" +
						"<tr><td>Nombre Usuario: <a href='#'>"+o.usuario+"</a></td>" +
						"<tr><td>Asunto: "+o.asunto+"</td>"+
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Encuesta":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Pregunta: "+o.pregunta+"</td>" +
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
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
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Hito":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Fecha: "+o.fecha+"</td>" +
						"<tr><td>Anuncio: "+o.anuncio+"</td>"+
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
				
			case "Novedad":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Fecha: "+o.fecha+"</td>" +
						"<tr><td>Mensaje: "+o.mensaje+"</td>"+
						"<tr><td>Tipo: "+o.tipo+"</td>" +
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
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
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Pago":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Descripcion: "+o.descripcion+"</td>" +
						"<tr><td>Precio: "+o.precio+"€</td>"+
						"<tr><td>Pagado: "+o.pagado+"</td>" +
						"<tr><td>Fecha: "+o.fecha+"</td>"+
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Registro":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Usuario: "+o.usuario+"</td>" +
						"<tr><td>Actividad: "+o.actividad+"</td>"+
						"<tr><td>Nº Pagos: "+o.npagos+"</td>" +
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Respuesta":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Mensaje: "+o.mensaje+"</td>" +
						"<tr><td>Nº Usuarios: "+o.nusuarios+"</td>"+
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			
			case "Tag":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Nº Actividades: "+o.nactividades+"</td>"+
						"</table>"+
						"<button id='mod_element' onclick='habilitarEdicion("+tipo+")'>Modificar "+tipo+"</button>");
			break;
			}

		}
	});
	
}
