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

@Entity
@NamedQueries({
    @NamedQuery(name="allMensajes",
            query="select m from Mensaje m")
})
public class Mensaje {
	private long id;
	private Perfil origen;
	private List<Perfil> destinos;
	private int nDestinos;
	private String titulo;
	
	Mensaje(){
		
	}
	public Mensaje(long id, Perfil origen, List<Perfil> destinos,
			int nDestinos, String titulo) {
		super();
		this.id = id;
		this.origen = origen;
		this.destinos = destinos;
		this.nDestinos = nDestinos;
		this.titulo = titulo;
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
	
	@OneToOne(targetEntity=Perfil.class)//----------?
	public Perfil getOrigen() {
		return origen;
	}
	public void setOrigen(Perfil origen) {
		this.origen = origen;
	}
	
	@ManyToMany(targetEntity=Perfil.class)
	public List<Perfil> getDestinos() {
		return destinos;
	}
	public void setDestinos(List<Perfil> destinos) {
		this.destinos = destinos;
	}
	/*
	private String texto;
	private int idTexto;
	*/
}
