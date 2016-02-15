var target = null;
var objetos;
var fecha=null;
var mes=null;

function f_fecha(){

	var f = new Date();
	fecha=f.getFullYear() + "-" + ("0" + (f.getMonth() + 1)).slice(-2) + "-" + ("0" + (f.getDate())).slice(-2);
	
	mes=f.getFullYear() + "-" + ("0" + (f.getMonth() + 1)).slice(-2);
	
}

$('.img_thumb' ).hover(function(e){
    target = $(this);
    $(target[0].firstElementChild).fadeIn(200);
}, function(){
    $(target[0].firstElementChild).fadeOut(200);
});

$('input[type="checkbox"][name="switch1"]').change(function(){
	if(this.checked){
		$("#modo_lista" ).show("slow");
		$("#modo_burbuja" ).hide();
	}else{
		$( "#modo_burbuja" ).show( "slow" );
		$( "#modo_lista" ).hide();
	}
	actualizar();
});

function actualizar(){
	var filtro=new Object();
	
	
	$.each(objetos, function(i, o) {
		filtro[i]=new Object();
		filtro[i]=null;
		if($("#todas" ).prop('checked')){
			filtro[i]=o;
		}else{
			if($("#activas" ).prop('checked') ){
				if(o.estado=="abierta") filtro[i]=o;
			}else{
				if($("#finalizadas" ).prop('checked') )
					if(o.estado=="cerrada")filtro[i]=o;
			
			}
		}

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
			//var mes_o=("0" + (o.fecha.getMonth() + 1)).slice(-2);
			
			var mes_o=o.fecha.substring(0, 7);
			
			if(o.fecha==fecha && $("#hoy" ).prop('checked')||mes_o==mes && $("#mes" ).prop('checked')  || !$("#hoy" ).prop('checked') && !$("#mes" ).prop('checked')){
			
			div+="<div><a class='' href='actividad/"+o.id+
			"'><div class='img_thumb'><div class='img_desc'></div><img class='i_actv' src='actividad/imagen?id="
			+o.id+"' /><p>"+ o.nombre+"</p></div>"+ 
			"</a>";
		
			}
			
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
			var mes_o=o.fecha.substring(0, 7);
			
			if(o.fecha==fecha && $("#hoy" ).prop('checked')||mes_o==mes && $("#mes" ).prop('checked')  || !$("#hoy" ).prop('checked') && !$("#mes" ).prop('checked')){
			
				
			div+="<tr><td><a href='actividad/"+o.id+"'>"+ o.nombre
			+ "</a></td><td>"+o.npersonas+"</td><td>"+o.max+"</td><td>"
			+o.fecha+"</td><td>"+o.localizacion+"</td><td>"
			+o.estado+"</td></tr>";
		
			}	
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

