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
            query="select m from Mensaje m")
})
public class Mensaje {
	private long id;
	private Usuario origen;
	private List<Usuario> destinos;
	private int nDestinos;
	private String titulo;
	private String contenido;
	private String tipo;

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
	
	@OneToOne(targetEntity=Usuario.class)//----------?
	public Usuario getOrigen() {
		return origen;
	}
	public void setOrigen(Usuario origen) {
		this.origen = origen;
	}
	
	@ManyToMany(targetEntity=Usuario.class)
	public List<Usuario> getDestinos() {
		return destinos;
	}
	public void setDestinos(List<Usuario> destinos) {
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