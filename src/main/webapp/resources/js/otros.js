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

function comprobarDatosActividad(){
	//var ta = document.getElementByName('tags').checkbox;
	//var casa = 0;
	
	/*for(var i = 0; i < tags.lenght; i++){
		
		if(tags[i].checked){
			alert("seleccionado");
		}
		else{
			alert("no seleccionado");
		}
	}*/
	
	if(actv_privada.checked){
		document.cre.actv_privada.checked=1
		document.getElementById('actv_privada').value = 1;
	}
	else{
		document.cre.actv_privada.checked = 1;
		document.getElementById('actv_privada').value = 0;
	}
	
	if(ruta.checked){
		//comprobar que ha escrito algo en el destino
	}
	else{
		destino.disabled = false;
		document.getElementById('destino').value = "";
	}
	
	
	
	//alert(select);
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

$("#tags:checked").each(
	function(){
		alert("El checkbox con valor " + $(this).val + " esta seleccionado");
	}
)


