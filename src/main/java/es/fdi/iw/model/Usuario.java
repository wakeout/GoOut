package es.fdi.iw.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;



@Entity
@NamedQueries({
    @NamedQuery(name="allUsuarios",
            query="select u from Usuario u")
})
public class Usuario {
	private long id;
	private String email;
	
	private String nombre;
	
	private Date nacimiento;
	private String provincia;
	private String password;
	
	private List<Actividad> historial;
	private List<Actividad> actuales;
	
	private List<Usuario>  amigos;
	
	@Id
    @GeneratedValue
    public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
    public String getMail() {
      return email;
    }
	public void setMail(String email) {
		this.email = email;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Date getNacimiento() {
		return nacimiento;
	}
	public void setNacimiento(Date nacimiento) {
		this.nacimiento = nacimiento;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@ManyToMany(targetEntity=Actividad.class)
	public List<Actividad> getHistorial() {
		return historial;
	}
	public void setHistorial(List<Actividad> historial) {
		this.historial = historial;
	}
	@ManyToMany(targetEntity=Actividad.class)
	public List<Actividad> getActuales() {
		return actuales;
	}
	public void setActuales(List<Actividad> actuales) {
		this.actuales = actuales;
	}
	
	@ManyToOne(targetEntity=Usuario.class)
	public List<Usuario> getAmigos() {
		return amigos;
	}
	public void setAmigos(List<Usuario> amigos) {
		this.amigos = amigos;
	}
	
	
	/*
	private String descripcion;
	private int idDescripcion;
	*/
	
}
