function buscar_admin(tipo){
	
	buscado=document.getElementById(tipo).value;
	
	if(buscado!== null){
	
		$.post("buscarElemento", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
			console.log(objetos);
			
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

		case "actividades": codigo+=" 	'Actividad_"+ o.id +"''><td><input name='Actividad' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}actividad/"+o.id+"''>"+ o.id +"</a>"+
							"<span class='element_previa' onmouseover='buscarElementos("+o.id+",'Actividad',this)' onmouseout='desaparece(this)'>"+
							"<td><c:out value='"+o.nombre+"'/></span>";break;
	
		case "usuarios": codigo+=" 'Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;

		case "registros": codigo+=" 'Registro_"+o.id+"'><td><input name='Registro' value='"+o.id+"' type='checkbox'>"+ o.id+" "+o.usuario+" "+o.actividad;
							break;
			
		case "encuestas": codigo+=" 	'Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
				
		case "foros": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "hitos": 	"'Hito_"+oid+"'><td><input  name='Hito' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
		+"<span class='element_previa' onmouseover='buscarElementos("+o.id+",'Hito',this)' onmouseout='desaparece(this)'>"
		+"<c:out value='"+o.anuncio+"'/>"
		+"</span>";break;
				
		case "mensajes":codigo+=" 'Mensaje_"+ o.id +"''><td><input name='Mensaje' value='"+o.id+"' type='checkbox'>"+
						"<td><span class='element_previa' onmouseover='buscarElementos("+o.id+",'Mensajes',this)' onmouseout='desaparece(this)'>"+
						"<c:out value='"o.titulo"'/></span>";break;
				
		case "novedades": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id+"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "pagos": codigo+=" 'Pago_"+o.id+"'><td><input  name='Pago' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover='buscarElementos("+o.id+",'Pago',this)' onmouseout='desaparece(this)'>"
			+"Pago <c:out value='"+o.id+"'/>"
			+"</span>";break;
			
		case "comentarios": codigo+="'Comentario_"+o.id+"'><td>"			
		+"<input  name='Comentario' value="+o.id+" type='checkbox'>"+o.id+"<td>"
		+"<span class='element_previa' onmouseover='buscarElementos("+o.id+",'Comentario',this)" onmouseout="desaparece(this)">
		+"<c:out value='"+o.id+"'/>"
		+"</span>";break;
			
		case "respuestas": codigo+="'Respuesta_"+o.id+"'><td><input  name='Respuesta' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover='buscarElementos( "+o.id+",'Respuesta',this)' onmouseout='desaparece(this)'>"
			+"Respuesta <c:out value='"+o.id+"'/>"
			+"</span>";break;
			
		case "tags": codigo+="'Tag_"+o.id+"'><td><input name='Tag' value='"+o.id+"' type='checkbox'>"+o.id+"<td>"
			+"<span class='element_previa' onmouseover=buscarElementos("+o.id+",'Tag',this) onmouseout=desaparece(this)>";break;
	}

	return codigo;
}