
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

