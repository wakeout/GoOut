package es.fdi.iw.model;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;


@Entity
@NamedQueries({
    @NamedQuery(name="allComentarios",
            query="select c from Comentario c"),
            @NamedQuery(name="unComentario", 
    		query="select c from Comentario c where c.id = :idComentario"),
    @NamedQuery(name="delComentario", 
    		query="delete from Comentario c where c.id = :idComentario")
})
public class Comentario {
	private long id;
	private Usuario usuario;// key Usuario
	private String asunto;
	private boolean sugiero;
	private boolean borrado;
	
		
	public static StringBuilder getJSONString(List<Comentario> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Comentario c : l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(c));
		}
		
		return sb;
	}
	
	public static String getSingleString(Comentario c){
		return "{ "
				+ "\"id\": \"" + c.getId() + "\", "
				+ "\"idusuario\": \"" + c.getUsuario().getId() + "\", "
				+ "\"usuario\": \"" + c.getUsuario().getLogin() + "\", "
				+ "\"asunto\": \""+c.getAsunto()+"\"}";
	}
	public static Comentario crearComentario(String asunto, Usuario u){
		Comentario c=new Comentario();
		
		c.usuario=u;
		c.asunto=asunto;
		c.sugiero = false;
		c.borrado = false;
		
		return c;
	}
	
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 public String getAsunto() {
	     return asunto;
	 }
	 public void setAsunto(String asunto) {
		this.asunto = asunto;
	 }
	 public boolean getSugiero() {
	    return sugiero;
	 }
	 public void setSugiero(boolean sugiero) {
		this.sugiero = sugiero;
	 }
	 
	 public boolean getBorrado(){
		 return borrado;
	 }
	 
	 public void setBorrado(boolean b){
		 this.borrado = b;
	 }
	
	 @OneToOne(targetEntity=Usuario.class)
	 public Usuario getUsuario() {
		return usuario;
	 }
	 public void setUsuario(Usuario usuario){
		this.usuario = usuario;
	 }
	 
	 
	 
}