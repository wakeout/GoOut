
//function buscar(){
//	var buscado=document.getElementById("buscar_amigos").value;
//	var tipo;
//	
//	
//	tipo=$("input[name= tipo_busqueda ]:checked").attr("id");
//	
//	
//	$.post("buscarAmigos", {buscado:buscado, tipo:tipo},function(data) {
//			refrescar(data);
//	  });
//	
//}


function buscar(){
	
	var buscado=document.getElementById("buscar_amigos").value;
	var tipo;
	tipo=$("input[name= tipo_busqueda ]:checked").attr("id");
	
	
	
	$.ajax({
		contentType: "application/json",
		dataType: "json",
		url: "buscarAmigos",
		type: "POST",
		data: "buscado=" + buscado + "tipo=" + tipo,
		success: function(d) {
			refrescar(d);
		}
	});		
}

function refrescar(data){	

	var tabla=$("<table id='usuarios_buscados'>");
	var b=false;
		
	
    //console.log(data.items);
    
	$.each(data, function(i, o) {
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
	
	var target=document.getElementById("usuarios_buscados");
	
	target.replaceWith(tabla);

}


function elemento(elem){
	
	return $(" <td><a href='perfil/"+elem.id+
			"'><img class='i_people' src='${prefix}resources/images/"
			+elem.id_foto+" '></a></td><td>"+elem.login+"</td>");
	
}
