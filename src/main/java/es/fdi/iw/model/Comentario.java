package es.fdi.iw.model;

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
    @NamedQuery(name="delComentario", 
    		query="delete from Comentario c where c.id = :idParam")
})
public class Comentario {
	private long id;
	private Usuario usuario;// key Usuario
	private String asunto;
	private boolean sugiero;
	
	

	
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
	
	 @OneToOne(targetEntity=Usuario.class)
	 public Usuario getUsuario() {
		return usuario;
	 }
	 public void setUsuario(Usuario usuario){
		this.usuario = usuario;
	 }
	 
	 
	 
}