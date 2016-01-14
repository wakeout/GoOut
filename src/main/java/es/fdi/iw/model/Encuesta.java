package es.fdi.iw.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
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
            query="select e from Encuesta e")
})
public class Encuesta {
	private long id;
	private Comentario pregunta;
	List<Respuesta> respuestas;
	
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
	
	@OneToMany(targetEntity=Respuesta.class)
	@JoinColumn(name="id_encuesta")
	public List<Respuesta> getRespuestas() {
		return respuestas;
	}
	public void setRespuestas(List<Respuesta> respuestas) {
		this.respuestas = respuestas;
	}
	
	
	
}