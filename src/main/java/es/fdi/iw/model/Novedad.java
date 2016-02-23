package es.fdi.iw.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity
@NamedQueries({
    @NamedQuery(name="allNovedades",
            query="select n from Novedad n"),
            @NamedQuery(name="unaNovedad", 
    		query="select n from Novedad n where n.id = :idNovedad"),
    @NamedQuery(name="delNovedad", 
    		query="delete from Novedad n where n.id = :idNovedad")
})
public class Novedad {
	private long id;
	private String mensaje;
	private String tipo;
	private Date fecha;
	

	public static StringBuilder getJSONString(List<Novedad> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Novedad n : l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(n));
		}
		
		return sb;
	}
	
	public static String getSingleString(Novedad n){
		return "{ "
				+ "\"id\": \"" + n.getId() + "\", "
				+ "\"fecha\": \"" + n.getFecha() + "\", "
				+ "\"mensaje\": \"" + n.getMensaje() + "\", "
				+ "\"tipo\": \""+n.getTipo+"\"}";
	}
	public static Novedad crearNovedad(String mensaje, String tipo){
		Novedad n = new Novedad();

		n.mensaje = mensaje;
		n.tipo = tipo;
		
		return n;
	}
	public static StringBuilder getString(List<Novedad> l){
		StringBuilder sb = new StringBuilder("");
		
		for (Novedad n : l) {
			if (sb.length()>1) sb.append("<br>");
			sb.append("<div class='nov'>");
			sb.append(getSingleString(n));
			sb.append("</div>");
			
		}
		
		
		
		return sb;
	}
	
	public static String getSingleString(Novedad n){
		return  conversionVista(n.getMensaje());
	}
	
	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	//si orden 1 entonces la foto irá antes que el nombre si orden 0 el nombre irá antes que la foto
	private static String formatoUsuario(String id, String nombre, boolean orden){
		String f="<a href='perfil/"+id+"'><img class='i_people_nov' src='usuario/imagen?id="
					+id+"'></a>";
		String n="<a href='perfil/"+id+"'>"+nombre+"</a>";
		
		if(orden)	
			return f+n;
		else
			return n+f;
	}

	private static String formatoActividad(String id, String nombre){
		String m="<a href='actividad/"+id+"'><img class='i_actv2' src='actividad/imagen?id="+id+"'>"+nombre+"</a>";
		
		return m;
	}
	private static String formatoMensaje(){
		String m="<a href='mensajes?metodo=entrada'><img class='i_men' src='resources/images/mensaje.png'>!Tienes un mensaje nuevo!</a>";
		
		return m;
	}
	
	private static String conversionVista(String m){
		String s="";
		String id="";
		String nombre="";
		
		
		for(int i=0; i<m.length(); i++){
		
			if(m.charAt(i)=='{'){
				
				i++;
				if(m.charAt(i)=='U'){
					i+=8;
					while(m.charAt(i)!=':'){
						id+=m.charAt(i);
						i++;
					}
				
					
					i++;
					while(m.charAt(i)!='}' &&  m.charAt(i)!=':'){
						nombre+=m.charAt(i);
						i++;
					}
					
					while(m.charAt(i)!='}')i++;
					i++;
					
					s+=formatoUsuario(id, nombre, true);
					
					id="";nombre="";
				}else{
					if(m.charAt(i)=='A'){
						i+=10;
						while(m.charAt(i)!=':'){
							id+=m.charAt(i);
							i++;
						}
						i++;
						while(m.charAt(i)!='}' && m.charAt(i)!=':'){
							nombre+=m.charAt(i);
							i++;
						}
						
						while(m.charAt(i)!='}')i++;
						i++;
						
						s+=formatoActividad(id, nombre);
						
						id="";nombre="";
					}else{
						if(m.charAt(i)=='M'){
							while(m.charAt(i)!='}')i++;
													
							s+=formatoMensaje();
							
						}
						
						
					}
				
				}
				
			}
			
			if(m.charAt(i)=='}')i++;
			else			
				s+=m.charAt(i);
			
		}
		
		return s;
	}
	
}
