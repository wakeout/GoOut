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
	
	//return true;
	
	//alert(select);
}

function valor_img(fic) {
fic = fic.split('\\');
document.getElementById('upload').style.background = "url(resources/images/"+fic[fic.length-1]+")";
}


function crear_actividad(){
	window.location='mis_actividades';
}


/*JQuery FUNCIONES DE MI_PERFIL*/

$("#check").click(function() {
	  if ( $( "#fecha_regreso" ).is( ":hidden" ) ) {
	    $( "#fecha_regreso" ).show( "slow" );
	  } else {
	    $( "#fecha_regreso" ).slideUp();
	  }
});


$("#menu1").click(function() {
	  
	$( ".mod_perfil" ).hide();
	$(".mi_galeria").hide();
	$( ".mi_perfil" ).show();
	
});
$("#menu2").click(function() {
	  
	$( ".mod_perfil" ).show();
	$( ".mi_perfil" ).hide();
	$(".mi_galeria").hide();
	
});

$("#menu3").click(function() {
	  
	$( ".mod_perfil" ).hide();
	$( ".mi_perfil" ).hide();
	$(".mi_galeria").show();
	
});

$("#upfile1").click(function () {
    $("#file1").trigger('click');
});


function mostrarImagen(input) {
	 if (input.files && input.files[0]) {
	  var reader = new FileReader();
	  reader.onload = function (e) {
	   $('#img_destino').attr('src', e.target.result);
	  }
	  reader.readAsDataURL(input.files[0]);
	 }
	}
	 
	$(".cambio_img").change(function(){
	 mostrarImagen(this);
	});
	
//function cambio_imagen() {                      
//   if (i == 1)
//      {
//      document.getElementById("upload").src=mi_imagen2.src
//      }
//   }
/**/

//$('#bcrear').click(function(){
//	if ($("#tags:checked").length == 0){
//		//alert("error");
//		alert(Date.now());
//		return false;
//		//document.getElementById('b_crear').disabled = true;
//		//console.log("error");
//	}
//	return true;
//});

/*$("#tags:checked").each(
	function(){
		$(this).val(0);
	}
)*/


