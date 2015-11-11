function habilitar() {
	if(otros.cbotro.checked){
		otros.other.disabled = false;
	}
	else{
		otros.other.disabled = true;
	}
}

function habilitarRuta() {
	if(destino.cbOrigen.checked){
		destino.ruta.disabled = false;
	}
	else{
		destino.ruta.disabled = true;
	}
}

function valor_img(fic) {
fic = fic.split('\\');
document.getElementById('upload').style.background = "url(resources/images/"+fic[fic.length-1]+")";
}

$("#check").click(function() {
  if ( $( "#fecha_regreso" ).is( ":hidden" ) ) {
    $( "#fecha_regreso" ).show( "slow" );
  } else {
    $( "#fecha_regreso" ).slideUp();
  }
});

function crear_actividad(){
	window.location='mis_actividades';
}