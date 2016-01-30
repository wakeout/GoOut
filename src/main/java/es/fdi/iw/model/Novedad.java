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
    @NamedQuery(name="delNovedad", 
    		query="delete from Novedad n where n.id = :idNovedad")
})
public class Novedad {
	private long id;
	private String mensaje;
	private String tipo;
	private Date fecha;
	private List<Usuario> usuarios;
	
	public static Novedad crearNovedad(String mensaje, String tipo){
		Novedad n = new Novedad();

		n.mensaje = mensaje;
		n.tipo = tipo;
		n.usuarios=new ArrayList<Usuario>();
		
		return n;
	}
	public static StringBuilder getString(List<Novedad> l){
		StringBuilder sb = new StringBuilder("");
		
		for (Novedad n : l) {
			if (sb.length()>1) sb.append("<br>");
			sb.append(getSingleString(n));
			
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
	@ManyToMany(targetEntity=Usuario.class, fetch=FetchType.EAGER)
	public List<Usuario> getUsuarios() {
		return usuarios;
	}
	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	//si orden 1 entonces la foto irá antes que el nombre si orden 0 el nombre irá antes que la foto
	private static String formatoUsuario(String id, String nombre, boolean orden){
		String f="<a href='perfil/"+id+"'><img class='i_people' src='usuario/imagen?id="
					+id+" '></a>";
		String n="<a href='perfil/"+id+"'>"+nombre+"</a>";
		
		if(orden)	
			return f+n;
		else
			return n+f;
	}

	private static String formatoActividad(String id, String nombre){
		String m="<a href='actividad/"+id+
	"'><div class='img_thumb'><div class='img_desc'></div><img class='i_actv' src='actividad/imagen?id="
	+id+"'><p id='actividad'>"+nombre+"</p></div></a>";
		
		return m;
	}
	private static String formatoMensaje(){
		String m="<a href='mensajes?metodo=entrada'>!Tienes un mensaje nuevo! ve a tu bandeja de entrada</a>";
		
		return m;
	}
	
	/*
	("{Usuario:"+u.getId()+":"+u.getLogin() +"} "+
			" ha comentado en el foro de {Actividad:"+a.getId()+":"+
					a.getNombre()+ ":Foro} "  , "Comentario")*/
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
	
	
/*	
Formato usuario			
<a href="perfil/4"><img class="i_people" src="usuario/imagen?id=4 "></a>	
<a href="perfil/4">david</a>
	*/
	
/*	
Formato actividad			
<div class="img_thumb">
<div class="img_desc">
</div>
<img class="i_actv" src="actividad/imagen?id=1">
<p id="actividad">cerves</p>
</div>
*/
	
	
}
