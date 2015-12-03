
package es.fdi.iw.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;

import java.sql.Date;


@Entity
@NamedQueries({
    @NamedQuery(name="allActividades",
            query="select a from Actividad a")
})
public class Actividad{

	private long id;//key
	private String nombre;
	private Usuario creador; //Seria mejor id de creador, y nunca puede ser nulo.
	private Date fecha_ini;
	private Date fecha_fin;
	private double latitud;
	private double longitud;
	private List<Hito>  proximosHitos;
	private long idImagen;
	private String estado;
	private int maxPersonas;
	private List<Usuario>  personas;//email de perfiles
	private int nPersonas;
	private Foro foro;
	private List<Tag> tags;
	private List<Novedad> novedades;
	private Pago pago;
	//Hay que añadir un campo de privada.
	
	public static Actividad crearActividad(String nombre_actv, int max_participantes, Usuario creador) {
		Actividad a = new Actividad();
		
		
		a.nombre=nombre_actv;
		a.creador=creador;
		a.maxPersonas=max_participantes;
		//a.fecha_ini=fecha_ini;
		a.nPersonas=1;
		a.estado="Abierta";
		a.latitud=40.4478246;
		a.longitud=-3.728587199999992;
		
		
		return a;
	}
	
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 @NotNull
	 public String getNombre() {
		return nombre;
	 }
	 public void setNombre(String nombre) {
		this.nombre = nombre;
	 }
	
	 public double getLatitud(){
		 return latitud;
	 }
	 public void setLatitud(double latitud){
		 this.latitud=latitud;
	 }
	 public double getLongitud(){
		 return longitud;
	 }
	 public void setLongitud(double longitud){
		 this.longitud=longitud;
	 }
	 public long getIdImagen(){
		 return idImagen;
	 }
	 public void setIdImagen(long idImagen){
		 this.idImagen=idImagen;
	 }
	 public int getMaxPersonas(){
		 return maxPersonas;
	 }
	 public void setMaxPersonas(int max){
		 this.maxPersonas=max;
	 }
	 
	 
	 
	 public int getNpersonas(){
		 return nPersonas;
	 }
	 public void setNpersonas(int n){
		 this.nPersonas=n;
	 }
	 
	 //-----
	 @OneToMany(targetEntity=Hito.class)
	 public List<Hito> getHitos() {
		 return proximosHitos;
	 }
	 public void setHitos(List<Hito> hitos) {
		 this.proximosHitos = hitos;
	 }
	 @ManyToMany(targetEntity=Usuario.class, fetch=FetchType.EAGER)
	 public List<Usuario> getPersonas() {
		 return personas;
	 }
	 public void setPersonas(List<Usuario> perfiles) {
		 this.personas = perfiles;
	 }
	@OneToOne(targetEntity=Foro.class)
	public Foro getForo() {
		return foro;
	}
	public void setForo(Foro foro) {
		this.foro = foro;
	}
	@OneToOne(targetEntity=Usuario.class)
	public Usuario getCreador() {
		return creador;
	}
	public void setCreador(Usuario creador) {
		this.creador = creador;
	}
	public Date getFecha_ini() {
		return fecha_ini;
	}
	public void setFecha_ini(Date fecha_ini) {
		this.fecha_ini = fecha_ini;
	}
	public Date getFecha_fin() {
		return fecha_fin;
	}
	public void setFecha_fin(Date fecha_fin) {
		this.fecha_fin = fecha_fin;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	@OneToMany(targetEntity=Novedad.class)	
	public List<Novedad> getNovedades() {
		return novedades;
	}
	public void setNovedades(List<Novedad> novedades) {
		this.novedades = novedades;
	}
	@ManyToMany(targetEntity=Tag.class)
	public List<Tag> getTags() {
		return tags;
	}
	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	@OneToOne(targetEntity=Pago.class)
	public Pago getPago() {
		return pago;
	}
	public void setPago(Pago pago) {
		this.pago = pago;
	}

}