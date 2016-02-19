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


function buscarElementos(buscado,tipo,target){
	
	$(".element_previa").css("color", "black");
	$("#vista_previa").css("display", "block");
	$(target).css("color", "green");

	$.post("vistaPrevia", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
			
			actualizar();
	  });
	
}

function desaparece(target){
	
	//$("#vista_previa").css("display", "none");
}

function actualizar(){
	var filtro = null;
	filtro = new Object();
	
	$.each(objetos, function(i, o) {
		
		filtro[i] = o;
	});
	
	vista(filtro);
}

function vista(obj){

	$.each(obj, function(i, o) {
		if(o!=null){
			
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
		}
	});
	
}
