function buscar_admin(tipo){
	
	buscado=document.getElementById(tipo).value;
	
	alert(buscado);
	
	
	$.post("buscarElemento", {buscado:buscado, tipo:tipo},function(data) {
		objetos=$.parseJSON(data);
		
	   	actualizar();
	});
	
}