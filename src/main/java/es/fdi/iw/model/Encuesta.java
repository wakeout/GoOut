package es.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;


@Entity
@NamedQueries({
    @NamedQuery(name="allEncuestas",
            query="select e from Encuesta e"),
            @NamedQuery(name="unaEncuesta", 
    		query="select e from Encuesta e where e.id = :idEncuesta"),
            @NamedQuery(name="delEncuesta", 
    		query="delete from Encuesta e where e.id = :idEncuesta"),
    		@NamedQuery(name="buscaEncuesta", 
     		query="select e from Encuesta e where e.pregunta.asunto like :nombreParam AND borrado='TRUE'")

})
public class Encuesta {
	private long id;
	private Comentario pregunta;
	List<Respuesta> respuestas;
	private boolean borrado;
	


	public static StringBuilder getJSONString(List<Encuesta> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Encuesta e : l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(e));
		}
		
		return sb;
	}
	
	public static String getSingleString(Encuesta e){
		if(e.isBorrado()==false){
			return "{ "
				+ "\"id\": \"" + e.getId() + "\", "
				+ "\"pregunta\": \"" + e.getPregunta().getAsunto() + "\"}";
		}
		return "";
	}
	public static Encuesta crearEncuesta(Comentario pregunta){
		Encuesta e = new Encuesta();
		
		e.pregunta = pregunta;
		e.respuestas = new ArrayList<Respuesta>();
		e.borrado = false;
		
		return e;
	}
	
	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@OneToOne(targetEntity=Comentario.class)
	public Comentario getPregunta() {
		return pregunta;
	}
	public void setPregunta(Comentario pregunta) {
		this.pregunta = pregunta;
	}
	
	@OneToMany(targetEntity=Respuesta.class,  fetch=FetchType.EAGER)
	@JoinColumn(name="id_encuesta")
	public List<Respuesta> getRespuestas() {
		return respuestas;
	}
	public void setRespuestas(List<Respuesta> respuestas) {
		this.respuestas = respuestas;
	}

	public boolean isBorrado() {
		return borrado;
	}

	public void setBorrado(boolean borrado) {
		this.borrado = borrado;
	}
	
	
	
}
