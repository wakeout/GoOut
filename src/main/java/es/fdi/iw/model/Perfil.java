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
    @NamedQuery(name="allPerfiles",
            query="select p from Perfil p"),
    @NamedQuery(name="addPerfil",
    query="insert into Perfil values(:emailParam, :nombreParam)")
})
public class Perfil {
	private String email;//key
	
	private String nombre;
	private Date nacimiento;
	private String provincia;
	private String password;
	
	private List<Actividad> historial;
	private List<Actividad> actuales;
	
	private List<Perfil>  amigos;
	
	Perfil(){
		
	}
	
	public Perfil(String email, String nombre, Date nacimiento,
			String provincia, String password, List<Actividad> historial,
			List<Actividad> actuales, List<Perfil> amigos) {
		super();
		this.email = email;
		this.nombre = nombre;
		this.nacimiento = nacimiento;
		this.provincia = provincia;
		this.password = password;
		this.historial = historial;
		this.actuales = actuales;
		this.amigos = amigos;
	}

	public static Perfil createPerfil(String email, String nombre){
		Perfil p=new Perfil();
		
		p.email=email;
		p.nombre=nombre;
		
		return p;
	}
	
	@Id
    @GeneratedValue
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
	
	@ManyToOne(targetEntity=Perfil.class)
	public List<Perfil> getAmigos() {
		return amigos;
	}
	public void setAmigos(List<Perfil> amigos) {
		this.amigos = amigos;
	}
	
	
	/*
	private String descripcion;
	private int idDescripcion;
	*/
	
}
