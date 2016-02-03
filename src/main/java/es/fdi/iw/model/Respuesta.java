package es.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;


@Entity
@NamedQueries({
    @NamedQuery(name="allRespuestas",
            query="select e from Encuesta e"),
            @NamedQuery(name="delRespuesta", 
    		query="delete from Respuesta r where r.id = :idRespuesta")
})
public class Respuesta{
	private long id;
	private Comentario mensaje;
	private List<Usuario> usuario;//USUARIOS QUE HAN RESPONDIDO
	private boolean borrado;

	public static Respuesta crearRespuesta(Comentario mensaje){
		Respuesta r = new Respuesta();
		
		r.mensaje = mensaje;
		r.usuario = new ArrayList<Usuario>();
		r.borrado = false;
		
		return r;
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
	public Comentario getMensaje() {
		return mensaje;
	}
	public void setMensaje(Comentario mensaje) {
		this.mensaje = mensaje;
	}
	
	@ManyToMany(targetEntity=Respuesta.class, fetch=FetchType.EAGER)
	public List<Usuario> getUsuario() {
		return usuario;
	}
	public void setUsuario(List<Usuario> usuario) {
		this.usuario = usuario;
	}
	
	public boolean getBorrado(){
		return borrado;
	}
	
	public void setBorrado(boolean b){
		this.borrado = b;
	}
	
}