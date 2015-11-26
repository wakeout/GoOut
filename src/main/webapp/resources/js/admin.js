$(function() {
	$( ".admin_actv" ).show();
    $( ".admin_usuario" ).hide();
    $( ".admin_mensaje" ).hide();
    $( ".admin_tags" ).hide();
    $( ".admin_comentarios" ).hide();
    $( ".admin_hitos" ).hide();
    $( ".admin_foros" ).hide();
    $( ".admin_novedades" ).hide();
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
    
});