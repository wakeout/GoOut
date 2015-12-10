function habilitar() {
	if(otro_tag.checked){
		otro.disabled = false;
	}
	else{
		otro.disabled = true;
	}
}

function habilitarRuta() {
	if(ruta.checked){
		destino.disabled = false;
	}
	else{
		destino.disabled = true;
	}
}

function valor_img(fic) {
fic = fic.split('\\');
document.getElementById('upload').style.background = "url(resources/images/"+fic[fic.length-1]+")";
}


function crear_actividad(){
	window.location='mis_actividades';
}


/*JQuery*/

$("#check").click(function() {
	  if ( $( "#fecha_regreso" ).is( ":hidden" ) ) {
	    $( "#fecha_regreso" ).show( "slow" );
	  } else {
	    $( "#fecha_regreso" ).slideUp();
	  }
});


$("#menu1").click(function() {
	  
	$( ".mod_perfil" ).hide();
	$( ".mi_perfil" ).show();
	
});
$("#menu2").click(function() {
	  
	$( ".mod_perfil" ).show();
	$( ".mi_perfil" ).hide();
	
});

$("#menu3").click(function() {
	  
	$( ".mod_perfil" ).hide();
	$( ".mi_perfil" ).hide();
	
});


