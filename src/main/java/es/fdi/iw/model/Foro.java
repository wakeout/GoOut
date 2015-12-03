package es.fdi.iw.model;


import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;




@Entity
@NamedQueries({
    @NamedQuery(name="allForos",
            query="select f from Foro f")
})
public class Foro {
	private long id;
	private List<Comentario>  comentarios;

	
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 @OneToMany(targetEntity=Comentario.class)
	 @JoinColumn(name="id_foro")
	 public List<Comentario> getComentarios() {
		return comentarios;
	 }
	 public void setComentarios(List<Comentario> comentarios) {
		this.comentarios = comentarios;
	 }
	 
}
