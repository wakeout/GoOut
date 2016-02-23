function buscar_admin(tipo){
	
	buscado=document.getElementById(tipo).value;
	
	if(buscado!== null){
	
		alert(buscado);
	
		$.post("buscarElemento", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
		
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

		case "actividades": codigo+=" 	'Actividad_"+ o.id +"''><td><input name='Actividad' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}actividad/"+o.id+"''>"+ o.id +"</a>"+
							"<span class='element_previa' onmouseover='buscarElementos("+o.id+",'Actividad',this)' onmouseout='desaparece(this)'>"+
							"<td><c:out value='"+o.nombre+"'/></span>";break;
	
		case "usuarios": codigo+=" 'Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;

		case "registros": codigo+=" 'Registro_"+o.id+"'><td><input name='Registro' value='"+o.id+"' type='checkbox'>"+ o.id+" "+o.usuario+" "+o.actividad;
							break;
			
		case "encuestas": codigo+=" 	'Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
				
		case "foros": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "hitos": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
				
		case "mensajes": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
				
		case "novedades": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "pagos": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "comentarios": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "respuestas": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
			
		case "tags": codigo+=" 	<tr id='Usuario_"+ o.id +"''><td><input name='Usuario' value='"+o.id"' type='checkbox'>"+
							"<a href='${prefix}perfil/"+o.id+"''>"+ o.id +"</a><td><c:out value='"+o.login+"'/>";break;
	}

	return codigo;
}