
package es.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import java.util.Date;



@Entity
@NamedQueries({
    @NamedQuery(name="allActividades",
            query="select a from Actividad a")
})
public class Actividad{

	private long id;//key
	private String nombre;
	private Date fecha;
	
	/*ubicacion*/
	private double latitud;
	private double longitud;
	private List<Hito>  proximosHitos;
	private long idImagen;
	
	
	private int maxPersonas;
	private List<Perfil>  personas;//email de perfiles
	private int nPersonas;
	
	private Foro foro;
	
	Actividad(){
		
	}
	public Actividad(long id, String nombre, Date fecha, double latitud,
			double longitud, List<Hito> proximosHitos, long idImagen,
			int maxPersonas, List<Perfil> personas, int nPersonas, Foro foro) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.fecha = fecha;
		this.latitud = latitud;
		this.longitud = longitud;
		this.proximosHitos = proximosHitos;
		this.idImagen = idImagen;
		this.maxPersonas = maxPersonas;
		this.personas = personas;
		this.nPersonas = nPersonas;
		this.foro = foro;
	}
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 public String getNombre() {
		return nombre;
	 }
	 public void setNombre(String nombre) {
		this.nombre = nombre;
	 }
	 public Date getFecha() {
		return fecha;
	 }
	 public void setFecha(Date fecha) {
		this.fecha = fecha;
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
	 public int getNPersonas(){
		 return nPersonas;
	 }
	 public void setNPersonas(int nPersonas){
		 this.nPersonas=nPersonas;
	 }
	 
	 //-----
	 @ManyToOne(targetEntity=Hito.class)
	 public List<Hito> getWritings() {
		 return proximosHitos;
	 }
	 public void setWritings(List<Hito> hitos) {
		 this.proximosHitos = hitos;
	 }
	 @ManyToMany(targetEntity=Perfil.class, fetch=FetchType.EAGER)
	 public List<Perfil> getPersonas() {
		 return personas;
	 }
	 public void setPersonas(List<Perfil> perfiles) {
		 this.personas = perfiles;
	 }
	@OneToOne(targetEntity=Foro.class)
	public Foro getForo() {
		return foro;
	}
	public void setForo(Foro foro) {
		this.foro = foro;
	}

}
