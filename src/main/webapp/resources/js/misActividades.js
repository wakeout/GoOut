var target = null;
var temp = null;
var temp2 = null;
var temp3 = null;
var temp4 = null;

$('input[type="radio"][name="tipo_busqueda"]').change(function() {
    if(this.checked) {
   	 buscar();
    }
});

function buscar(){
	var buscado=document.getElementById("buscar_actividades").value;
	var tipo;
	
	tipo=$("input[name= tipo_busqueda ]:checked").attr("id");
	
	$.post("buscarActividades", {buscado:buscado, tipo:tipo},function(data) {
			refrescar(data);
	  });
	
}

function refrescar(data){	
	var div="<div id='fotos'>";
	var obj = $.parseJSON(data);
    
	$.each(obj, function(i, o) {
		
		console.log(o.nombre);
		
		div+="<a  href='actividad/"+o.id+
		"'><div class='img_thumb'><div class='img_desc'><p id='actividad'>"
		+ o.nombre+ 
		"</p></div><img class='i_actv'src='actividad/imagen?id="
		+o.id+"'/></div></a>";

	})	
			
	div+="</div>"
		
	console.log(div);
	
	$("#fotos").replaceWith(div);
}

$('.img_thumb' ).hover(function(e){
    target = $(this);
    $(target[0].firstElementChild).fadeIn(200);
}, function(){
    $(target[0].firstElementChild).fadeOut(200);
});

$('.img_thumb2' ).hover(function(e){
    temp = $(this);
    $(temp[0].firstElementChild).fadeIn(200);
}, function(){
    $(temp[0].firstElementChild).fadeOut(200);
});

$('.img_thumb3' ).hover(function(e){
    temp2 = $(this);
    $(temp2[0].firstElementChild).fadeIn(200);
}, function(){
    $(temp2[0].firstElementChild).fadeOut(200);
});

$('.img_thumb4' ).hover(function(e){
    temp3 = $(this);
    $(temp3[0].firstElementChild).fadeIn(200);
}, function(){
    $(temp3[0].firstElementChild).fadeOut(200);
});

$('.img_thumb5' ).hover(function(e){
    temp4 = $(this);
    $(temp4[0].firstElementChild).fadeIn(200);
}, function(){
    $(temp4[0].firstElementChild).fadeOut(200);
});

$("#mis_creaciones").click(function() {
	  if ( $( "#mis_creaciones" ).prop('checked') ) {
	    $( ".actv_creadas" ).show();
	    $(".actv_mostradas").hide();
	  } else {
		  $(".actv_mostradas").show();
	  }
});

