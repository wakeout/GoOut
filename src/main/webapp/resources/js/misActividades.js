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
		$("#modo_lista" ).show("slow");
		$("#modo_burbuja" ).slideUp();
	}else{
		$( "#modo_burbuja" ).show( "slow" );
		$( "#modo_lista" ).slideUp();
	}
	actualizar();
});

function actualizar(){
	var filtro=new Object();
	
	
	$.each(objetos, function(i, o) {
		filtro[i]=new Object();
		filtro[i]=null;
		
		
		
		if($("#activas" ).prop('checked') ){
			if(o.estado=="abierta") filtro[i]=o;
		}else{
			if($("#finalizadas" ).prop('checked') )
				if(o.estado=="cerrada")filtro[i]=o;
			
		}
		
		/*if($("#hoy" ).prop('checked') ){
			if(o.fecha==hoy) filtro[i]=o;
		}else{
			if($("#mes" ).prop('checked') ){
				if(o.fecha==mes) filtro[i]=o;
				
			}else{
				if($("#activas" ).prop('checked') ){
					if(o.estado=="Abirta") filtro[i]=o;
				}else{
					if($("#finalizadas" ).prop('checked') ){
						if(o.estado=="Cerrada")filtro[i]=o;
					}else{
						filtro[i]=o;
					}
				}
			}
		}*/
		console.log(filtro);
	})
	
	
	if($('#switch1').prop('checked')){
		lista(filtro);
	}
	else{
		burbuja(filtro);
	}
	
}	

$('input[type="radio"][name="tipo_busqueda"]').change(function() {
    if(this.checked){
   	 buscar();
    }
});

function buscar(){
	
	var buscado=document.getElementById("buscar_actividades").value;
	var tipo;
	
	tipo=$("input[name= tipo_busqueda ]:checked").attr("id");
	
	$.post("buscarActividades", {buscado:buscado, tipo:tipo},function(data) {
			objetos=$.parseJSON(data);
			
		   	actualizar();
	  });
	
}


function burbuja(obj){

	var div="<div id='modo_burbuja'>";

	$.each(obj, function(i, o) {
		if(o!=null){
			div+="<div><a class='' href='actividad/"+o.id+
			"'><div class='img_thumb'><div class='img_desc'></div><img class='i_actv' src='actividad/imagen?id="
			+o.id+"' /><p>"+ o.nombre+"</p></div>"+ 
			"</a>";
		}
	})
			
	div+="</div>"
	
	$("#modo_burbuja").replaceWith(div);
}

function lista(obj){
	var div="<div id='modo_lista'><table id='lista_actv'><tr>" +
			"<td>Nombre Actividad</td><td>Personas unidas</td>" +
			"<td>Máximo</td><td>Dia</td><td>Lugar</td><td>Estado</td></tr>";

	$.each(obj, function(i, o) {
		if(o!=null){
			console.log(o.nombre);
		
			div+="<tr><td><a href='actividad/"+o.id+"'>"+ o.nombre
			+ "</a></td><td>1</td><td>"+o.maxPersonas+"</td><td>"
			+o.fecha_ini+"</td><td>"+o.localizacion+"</td><td>"
			+o.estado+"</td></tr>";
		}
	})	
			
	div+="</table></div>";
		
	
	$("#modo_lista").replaceWith(div);
	$("#modo_lista" ).show();
	
	
}


$("#mis_creaciones").click(function() {
	  if ( $( "#mis_creaciones" ).prop('checked') ) {
	    $( ".actv_creadas" ).show();
	    $(".actv_mostradas").hide();
	  } else {
		  $(".actv_mostradas").show();
	  }
});

