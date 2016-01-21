
$("#boton_buscar").click(function() {
  if ( $( "#resultados1" ).is( ":hidden" ) ) {
    $( "#resultados1" ).show( "slow" );
	 $( "#resultados2" ).slideUp();
	 $( "#cambio_modo" ).slideUp();
	 $("#buscar_que").removeAttr("disabled");
	 $("#buscar_cuando").removeAttr("disabled");
	 $("#buscar_donde").removeAttr("disabled");
  } else {
    $( "#resultados1" ).slideUp();
	$( "#resultados2" ).show( "slow" );
	$( "#cambio_modo" ).show( "slow");
	$("#buscar_que").attr('disabled', 'disabled');
	$("#buscar_cuando").attr('disabled', 'disabled');
	$("#buscar_donde").attr('disabled', 'disabled');
  }
});

$("#check_amigos").click(function() {
  if ( $( "#actv_amigos" ).is( ":hidden" ) ) {
    $( "#actv_amigos" ).show( "slow" );
  } else {
    $( "#actv_amigos" ).slideUp();
  }
});
/*
$("#switch1").click(function() {
	  if ( $( "#modo_burbuja" ).is( ":hidden" ) ) {
	    $( "#modo_burbuja" ).show( "slow" );
		 $( "#modo_lista" ).slideUp();
	  } else {
	    $( "#modo_burbuja" ).slideUp();
		$( "#modo_lista" ).show( "slow" );
	  }
});
*/

var i=1;
function cambia_imagen() {                      
   if (i == 1)
      {
      document.images['prueba'].src=mi_imagen2.src
      i=2;
      }
   else
      {
      document.images['prueba'].src=mi_imagen1.src;
      i=1;
      }
   }