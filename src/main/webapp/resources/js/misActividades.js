var target = null;
var temp = null;
var temp2 = null;
var temp3 = null;
var temp4 = null;

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

