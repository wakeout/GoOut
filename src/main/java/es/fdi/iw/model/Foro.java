package es.fdi.iw.model;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;




@Entity
@NamedQueries({
    @NamedQuery(name="allForos",
            query="select f from Foro f")
})
public class Foro {
	private long id;
	private List<Comentario>  comentarios;

	public Foro(long id, List<Comentario> comentarios) {
		super();
		this.id = id;
		this.comentarios = comentarios;
	}

	Foro(){
		
	}
	
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 
	 @ManyToOne(targetEntity=Comentario.class)
	 public List<Comentario> getComentarios() {
		return comentarios;
	 }
	 public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	 }
	 
}
/*
 * boton comentar;
 * boton sugerir;
 * 
 * text sugerirHora;
 * text sugerirLugar;
 * text sugerirFecha;
 * 
 * text comentario;
 * 
 * desplegable importancia;
 * */
