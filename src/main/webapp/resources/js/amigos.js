$('input[type="radio"][name="tipo_busqueda"]').change(function() {
     if(this.checked) {
    	 buscar();
     }
 });

function buscar(){
	var buscado=document.getElementById("buscar_amigos").value;
	var tipo;
	
	
	tipo=$("input[name= tipo_busqueda ]:checked").attr("id");
	
	
	$.post("buscarAmigos", {buscado:buscado, tipo:tipo},function(data) {
			refrescar(data);
	  });
	
}


function refrescar(data){	

	var tabla=$("<table id='usuarios_buscados'>");
	var b=false;
		
	
    console.log(data);
    
    var obj = $.parseJSON(data);
    
    console.log(obj);
    
    
	$.each(obj, function(i, o) {
		console.log(o);
		
		if(i%3==0){
			tabla.append("<tr>");
			b=true;
		}
		
		tabla.append(elemento(o)); 
		
		if(i%2==0){
			b=false;
			tabla.append("</tr>");
		}
	})	
	
	if(b)tabla.append("</tr>");
		
	tabla.append("</table>")
	
	
	$("#usuarios_buscados").replaceWith(tabla);

}


function elemento(elem){
	
	return $(" <td><a href='perfil/"+elem.id+
			"'><img class='i_people' src='usuario/imagen?id="
			+elem.id+" '></a></td><td>"+elem.login+"</td>");
	
}
