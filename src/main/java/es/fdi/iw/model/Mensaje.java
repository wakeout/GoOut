package es.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
//import javax.persistence.OneToMany;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;

@Entity
@NamedQueries({
    @NamedQuery(name="allMensajes",
            query="select m from Mensaje m"),
    @NamedQuery(name="mensajesEntrada",
			query="select m from Mensaje m where m.destinos = :destinoParam"),
    @NamedQuery(name="mensajesSalida",
    		query="select m from Mensaje m where m.origen = :origenParam"),
    @NamedQuery(name="allOrdinario",
    		query="select m from Mensaje m where m.tipo= :ordinarioParam"),
    @NamedQuery(name="allDenuncias", 
    		query="select m from Mensaje m where m.tipo = :denunciaParam"),
    @NamedQuery(name="delUsuarios", 
    		query="delete from Mensaje m where m.origen = :userParam OR m.destinos = :userParam"),
    @NamedQuery(name="delMensaje", 
    		query="delete from Mensaje m where m.id = :idMensaje"),
    @NamedQuery(name="delDenuncia", 
    		query="delete from Mensaje m where m.id = :idParam")		
})
public class Mensaje {
	private long id;
	private Usuario origen;
	private Usuario destinos;
	private int nDestinos;
	private String titulo;
	private String contenido;
	private String tipo;
	
	public static Mensaje crearMensaje(String titulo, String contenido, String tipo, 
			Usuario u, Usuario destino){
		Mensaje m = new Mensaje();
		
		m.titulo = titulo;
		m.contenido = contenido;
		m.tipo = tipo;
		m.origen= u;
		m.destinos = destino;
		
		return m;
	}

	@Id
    @GeneratedValue
    public long getId() {
      return id;
    }
	public void setId(long id) {
	  this.id = id;
	}
	public int getNDestinos() {
	  return nDestinos;
	}
	public void setNDestinos(int n) {
	  this.nDestinos = n;
	} 
	public String getTitulo() {
      return titulo;
	}
	public void setTitulo(String titulo) {
	  this.titulo = titulo;
	}
	
	@OneToOne(targetEntity=Usuario.class, orphanRemoval=true)//----------?
	public Usuario getOrigen() {
		return origen;
	}
	public void setOrigen(Usuario origen) {
		this.origen = origen;
	}
	
	@OneToOne(targetEntity=Usuario.class , orphanRemoval=true)
	public Usuario getDestinos() {
		return destinos;
	}
	public void setDestinos(Usuario destinos) {
		this.destinos = destinos;
	}
	public String getContenido() {
		return contenido;
	}
	public void setContenido(String contenido) {
		this.contenido = contenido;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
}