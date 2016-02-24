package es.fdi.iw.model;


import java.util.ArrayList;
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
            query="select f from Foro f"),
            @NamedQuery(name="unForo", 
    		query="select f from Foro f where f.id = :idForo"),
    @NamedQuery(name="delForo", 
    		query="delete from Foro f where f.id = :idForo"),
    @NamedQuery(name="buscaForo", 
     		query="select f from Foro f where f.id like :nombreParam")

})
public class Foro {
	private long id;
	private List<Comentario>  comentarios;

	
	public static StringBuilder getJSONString(List<Foro> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Foro f : l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(f));
		}
		
		return sb;
	}
	
	public static String getSingleString(Foro f){
		return "{ "
				+ "\"id\": \"" + f.getId() + "\"}";
	}
	public static Foro crearForo(){
		Foro f=new Foro();
		List<Comentario> lc=new ArrayList<Comentario>();
		
		f.comentarios=lc;
		
		return f;
	}
	
	
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
