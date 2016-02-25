function buscar_admin(tipo){
	
	buscado=document.getElementById(tipo).value;
	
	if(buscado!== null){
	
		$.post("buscarElemento", {buscado:buscado, tipo:tipo},function(data) {
			var objetos=$.parseJSON(data);

	   		elementos(objetos, tipo);
		});
	}
}

function elementos(objetos, tipo){
	var codigo="<table id='lista_"+tipo+"'>";

	$.each(objetos, function(i, o) {
		codigo+=avista(o, tipo);
	});
	
	codigo+="</table>";

	$("#lista_"+tipo).replaceWith(codigo);
}


function avista(o, tipo){
	var codigo="<tr id='";

	switch(tipo){

		case "actividades": codigo+=" 	'Actividad_"+ o.id +"'><td><input name='Actividad' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}actividad/"+o.id+"''>"+ o.id +"</a><td>"+
							"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Actividad',this) onmouseout=desaparece(this)>"+
							o.nombre+"</span>";break;
	
		case "usuarios": codigo+=" 'Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"  </a><span class='element_previa' onmouseover=buscarElementos("+o.id+",'Usuario',this) onmouseout=desaparece(this)>"+
							o.login+"</span>";break;

		case "registros": codigo+=" 'Registro_"+o.id+"'><td><input name='Registro' value='"+o.id+"' type='checkbox'>"+ o.id+" "+o.usuario+" "+o.actividad;
							break;
			
		case "encuestas": codigo+=" 'Encuesta_"+o.id+"'><td><input  name='Encuesta' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Encuesta',this) onmouseout=desaparece(this)>"
			+o.asunto
			+"</span>";break;
				
		case "foros": codigo+="'Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "hitos": 	codigo+="'Hito_"+o.id+"'><td><input  name='Hito' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
		+"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Hito',this) onmouseout=desaparece(this)>"
		+o.anuncio
		+"</span>";break;
				
		case "mensajes":codigo+=" 'Mensaje_"+ o.id +"''><td><input name='Mensaje' value='"+o.id+"' type='checkbox'>"+o.id+
						"<td><span class='element_previa' onmouseover=buscarElementos("+o.id+",'Mensajes',this) onmouseout=desaparece(this)>"+
						o.titulo+"</span>";break;
				
		case "novedades": codigo+=" 'Novedad_"+ o.id +"''><td><input name='Novedad' value='"+o.id+"' type='checkbox'>"+o.id+
						"<td><span class='element_previa' onmouseover=buscarElementos("+o.id+",'Novedad',this) onmouseout=desaparece(this)>"+	
						o.mensaje+"</span>";break;
			
		case "pagos": codigo+=" 'Pago_"+o.id+"'><td><input  name='Pago' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Pago',this) onmouseout=desaparece(this)>"
			+"Pago"+o.id
			+"</span>";break;
			
		case "comentarios": codigo+="'Comentario_"+o.id+"'><td>"			
		+"<input  name='Comentario' value="+o.id+" type='checkbox'>"+o.id+"<td>"
		+"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Comentario',this) onmouseout=desaparece(this)>"
		+o.asunto
		+"</span>";break;
			
		case "respuestas": codigo+="'Respuesta_"+o.id+"'><td><input  name='Respuesta' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover=buscarElementos( "+o.id+",'Respuesta',this) onmouseout=desaparece(this)>"
			+"Respuesta "+o.id
			+"</span>";break;

		case "tags": codigo+="'Tag_"+o.id+"'><td><input name='Tag' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Tag',this) onmouseout=desaparece(this)>"+o.nombre+"</span>";break;
	}

	
	console.log(o);
	
	return codigo;
}