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
