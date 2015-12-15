package es.fdi.iw.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
    @NamedQuery(name="allRegistros",
            query="select n from Registro n")
})

public class Registro {
	
	long id;
	Usuario u;
	Actividad actividad;

	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}	
	
	@ManyToOne(targetEntity=Usuario.class)
	public Usuario getUsuario() {
		return u;
	}
	
	public void setUsuario(Usuario u) {
		this.u = u;
	}
	
	@ManyToOne(targetEntity=Actividad.class)	
	public Actividad getActividad() {
		return actividad;
	}
	
	public void setActividad(Actividad a) {
		this.actividad = a;
	}
	
	
	
	
}
