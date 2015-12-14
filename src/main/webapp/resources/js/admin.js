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
    
});

$("#b_redactar").click(function(){
	$( ".mensaje_entrada" ).hide();
	$( ".mensaje_salida" ).hide();
	$( ".mensaje_redactar" ).show();
});

$("#b_entrada").click(function(){
	$( ".mensaje_redactar" ).hide();
	$( ".mensaje_salida" ).hide();
	$( ".mensaje_entrada" ).show();
});

$("#b_salida").click(function(){
	$( ".mensaje_redactar" ).hide();
	$( ".mensaje_entrada" ).hide();
	$( ".mensaje_salida" ).show();
});




