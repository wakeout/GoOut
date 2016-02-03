function comprobar(){
	
	var num_checked = $(":checkbox:checked").length;
	
	if (num_checked < 1)
	{
		alert('Debes marcar una respuesta'); 
	     return false;
	}
	else{
		return true;
	}
}