$(function() {
	$( ".admin_actv" ).show();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
})


$("#b_actividad").click(function() {
    
	$( ".admin_actv" ).show();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
    
});

$("#b_usuarios").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).show();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
});

$("#b_mensajes").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).show();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
});

$("#b_tags").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).show();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
});

$("#b_comentarios").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).show();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
});


$("#b_hitos").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).show();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
    
});

$("#b_novedades").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).show();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
});

$("#b_foros").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).show();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
    
});

$("#b_denuncias").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).show();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).hide();
    
});

$("#b_pagos").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).show();
    $( ".admin_registros" ).hide();
    
});

$("#b_registros").click(function() {
	
	$( ".admin_actv" ).hide();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
    $( ".admin_denuncias" ).hide();
    $( ".admin_pagos" ).hide();
    $( ".admin_registros" ).show();
    
});


//Marcar y desmarcar

function seleccionar(form){
    
var formulario = eval(form)  
for(var i=0, len=formulario.elements.length; i<len ; i++)  
 {  
   if ( formulario.elements[i].type == "checkbox" )  
     formulario.elements[i].checked = 1;
 } 
    
}
function deseleccionar(form){
    
	var formulario = eval(form)  
	for(var i=0, len=formulario.elements.length; i<len ; i++)  
	 {  
	   if ( formulario.elements[i].type == "checkbox" )  
	     formulario.elements[i].checked = 0;
	 } 
	    
}

function confirmar(form){
	
	if (confirm('¿Estas seguro de borrar este elemento?')){ 
	     return true;
	}
	else
		return false;
}