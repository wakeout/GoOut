var target = null;
var temp = null;
var temp2 = null;
var temp3 = null;
var temp4 = null;
var modo=0;
var filtro=" ";

var objetos;


function filtro(valor){
	
	filtro+=" AND "+valor;
	
}

$('input[type="checkbox"][name="switch1"]').change(function(){
	if(this.checked){
	   	modo=1;
	   	alert(1);
	}else{
		alert(0);
		modo=0;
	}
	buscar();
});

$('input[type="radio"][name="tipo_busqueda"]').change(function() {
    if(this.checked){
   	 buscar();
    }
});



function buscar(){
	console.log(modo);
	var buscado=document.getElementById("buscar_actividades").value;
	var tipo;
	
	tipo=$("input[name= tipo_busqueda ]:checked").attr("id");
	
	$.post("buscarActividades", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
	  });
	
}


function burbuja(obj){
	var div="<div id='modo_burbuja'>";
	

	$.each(obj, function(i, o) {
		
		
		div+="<a  href='actividad/"+o.id+
		"'><div class='img_thumb'><div class='img_desc'><p id='actividad'>"
		+ o.nombre+ 
		"</p></div><img class='i_actv'src='actividad/imagen?id="
		+o.id+"'/></div></a>";

	})	
			
	div+="</div>"
		
	
	$("#modo_burbuja").replaceWith(div);
	div="";
}

function lista(obj){
	var div="<div id='modo_lista'><table id='lista_actv'><tr>" +
			"<td>Nombre Actividad</td><td>Personas unidas</td>" +
			"<td>Máximo</td><td>Dia</td><td>Lugar</td><td>Estado</td></tr>";

	$.each(obj, function(i, o) {
		
		console.log(o.nombre);
		
		div+="<tr><td><a href='actividad/"+o.id+"'>"+ o.nombre
		+ "</a></td><td>1</td><td>"+o.maxPersonas+"</td><td>"
		+o.fecha_ini+"</td><td>"+o.localizacion+"</td><td>"
		+o.estado+"</td></tr>";

	})	
			
	div+="</table></div><div id='modo_burbuja'>";
		
	
	$("#modo_lista").replaceWith(div);
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

