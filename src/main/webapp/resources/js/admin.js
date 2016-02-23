var objetos;


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


function habilitarEdicion(){
	
	
	
}


function buscarElementos(buscado,tipo,target){
	
	$(".element_previa").css("color", "black");
	$("#vista_previa").css("display", "block");
	$(target).css("color", "green");

	$.post("vistaPrevia", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
			
			actualizar(tipo);
	  });
	
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


<<<<<<< HEAD
function vista(obj){
=======
function vista(obj,tipo){
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7

	$.each(obj, function(i, o) {
		if(o!=null){
			
			switch(tipo){
			case "Actividad":
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
						"</table>");
			break;
			
			case "Comentario":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>ID Usuario: <a href='#'>"+o.idusuario+"</a></td>" +
						"<tr><td>Nombre Usuario: <a href='#'>"+o.nusuario+"</a></td>" +
						"<tr><td>Asunto: "+o.asunto+"</td>"+
						"</table>");
			break;
			
			case "Encuesta":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Pregunta: "+o.pregunta+"</td>" +
						"<tr><td>: "+o.creador+"</td>"+
<<<<<<< HEAD
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
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
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
						"<tr><td>Origen: "+o.localizacion+"</td>" +
<<<<<<< HEAD
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
						"</table>");
			break;
				
			case "Mensaje":
=======
						"</table>");
			break;
				
			case "Mensajes":
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
						"<tr><td>Origen: "+o.localizacion+"</td>" +
<<<<<<< HEAD
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
						"</table>");
			break;
				
			case "Novedad":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
<<<<<<< HEAD
						"<tr><td>Origen: "+o.localizacion+"</td>" +
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
						"</table>");
			break;
			
			case "Pago":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
<<<<<<< HEAD
						"<tr><td>Origen: "+o.localizacion+"</td>" +
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
						"</table>");
			break;
			
			case "Registro":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
<<<<<<< HEAD
						"<tr><td>Origen: "+o.localizacion+"</td>" +
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
						"</table>");
			break;
			
			case "Respuesta":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
<<<<<<< HEAD
						"<tr><td>Origen: "+o.localizacion+"</td>" +
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
						"</table>");
			break;
			
			case "Tag":
				$("#vista_previa").html("<table>" +
						"<tr><td> ID: "+o.id+"</td>" +
						"<tr><td>Nombre: "+o.nombre+"</td>" +
						"<tr><td>Creador: "+o.creador+"</td>"+
						"<tr><td>Fecha inicio: "+o.fecha+"</td>" +
						"<tr><td>Fecha fin: "+o.fecha_fin+"</td>"+
						"<tr><td>Hora inicio: "+o.hora_ini+"</td>"+
						"<tr><td>Hora fin: "+o.hora_fin+"</td>" +
<<<<<<< HEAD
						"<tr><td>Origen: "+o.localizacion+"</td>" +
						"<tr><td>Destino: "+o.destino+"</td>"+
						"<tr><td>Personas unidas: "+o.npersonas+"</td>" +
						"<tr><td>Máximo de personas: "+o.max+"</td>"+
						"<tr><td>Estado: "+o.estado+"</td>" +
=======
>>>>>>> c0345534e4a5f65e7666ed81199586d80eccc2d7
						"</table>");
			break;
			}

		}
	});
	
}
