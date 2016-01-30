
function formato(obj){
	
	if(obj!=null){
		var div="<div id='actv_nov'>"+
		"<p id='text'>NOVEDADES</p>";
	
		$.each(obj, function(i, o) {
			div+=o.mensaje;
			div+="br";
		})
		
		div+="</div>"
		
		$("#actv_nov").replaceWith(div);
	}
}