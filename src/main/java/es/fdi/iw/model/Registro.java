package es.fdi.iw.model;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
    @NamedQuery(name="allRegistros",
            query="select r from Registro r"),
    @NamedQuery(name="unRegistro",
    		query="select r from Registro r where r.id = :registroParam"),
    @NamedQuery(name="eliminarRegistro", 
     		query="delete  from Registro r where r.id= :idRegistro")
})

public class Registro {
	
	long id;
	Usuario usuario;
	Actividad actividad;

	public static Registro crearRegistro(Actividad  actv, Usuario user) {
		
		Registro r = new Registro();
		r.actividad=actv;
		r.usuario=user;
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
	
	@ManyToOne(targetEntity=Usuario.class)
	public Usuario getUsuario() {
		return usuario;
	}
	
	public void setUsuario(Usuario u) {
		this.usuario = u;
	}
	
	@ManyToOne(targetEntity=Actividad.class)
	public Actividad getActividad() {
		return actividad;
	}
	
	public void setActividad(Actividad a) {
		this.actividad = a;
	}
	
	
	
	
}
