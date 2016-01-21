var target = null;
var temp = null;
var temp2 = null;
var temp3 = null;
var temp4 = null;

var objetos;


$('.img_thumb' ).hover(function(e){
    target = $(this);
    $(target[0].firstElementChild).fadeIn(200);
}, function(){
    $(target[0].firstElementChild).fadeOut(200);
});

$('input[type="checkbox"][name="switch1"]').change(function(){
	if(this.checked){
		$( "#modo_lista" ).show( "slow" );
		$( "#modo_burbuja" ).slideUp();
	}else{
		$( "#modo_burbuja" ).show( "slow" );
		$( "#modo_lista" ).slideUp();
	}
	
	actualizar();
});

function actualizar(){
	if($('#switch1').prop('checked'))
		lista(objetos);
	else
		burbuja(objetos);
	
}

$('input[type="radio"][name="tipo_busqueda"]').change(function() {
    if(this.checked){
   	 buscar();
   	 actualizar();
    }
});

function buscar(){
	
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
		
		
		div+="<a class='' href='actividad/"+o.id+
		"'><div class='img_thumb'><div class='img_desc'><p id='actividad'>"
		+ o.nombre+ 
		"</p></div><img class='i_actv' src='actividad/imagen?id="
		+o.id+"' alt=''/></div></a>";

	})	
			
	div+="</div>"
	
	$("#modo_burbuja").replaceWith(div);

//	var str = document.getElementById("modo_burbuja").innerHTML; 
//    var res = str.replace(div, div);
//    document.getElementById("modo_burbuja").innerHTML = res;
//	
	//var parrafo = document.getElementById("modo_burbuja");
	//parrafo.parentNode.removeChild(parrafo);
	

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
		
	
//	
//	var str = document.getElementById("modo_lista").innerHTML; 
//    var res = str.replace(div);
//    document.getElementById("modo_lista").innerHTML = res;
	
	$("#modo_lista").replaceWith(div);
	//var parrafo = document.getElementById("modo_lista");
	//parrafo.parentNode.removeChild(parrafo);
	
}


$("#mis_creaciones").click(function() {
	  if ( $( "#mis_creaciones" ).prop('checked') ) {
	    $( ".actv_creadas" ).show();
	    $(".actv_mostradas").hide();
	  } else {
		  $(".actv_mostradas").show();
	  }
});

