
package es.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
//import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import java.sql.Date;


@Entity
@NamedQueries({
    @NamedQuery(name="allActividades",
            query="select a from Actividad a"),
    @NamedQuery(name="unaActividad",
    		query="select a from Actividad a where a.id = :actividadParam"),
    @NamedQuery(name="eliminarActividad", 
    		query="delete  from Actividad a where a.id= :idActividad"),
    @NamedQuery(name="actividadesCreadas", 
    		query="select a from Actividad a where a.creador = :creadorParam")
})
public class Actividad{

	private long id;//key
	private String nombre;
	private Usuario creador; //Seria mejor id de creador, y nunca puede ser nulo.
	private Date fecha_ini;
	private Date fecha_fin;
	private String localizacion;
	private String destino;
	private List<Hito> proximosHitos;
	private String idImagen;
	private String estado;
	private int maxPersonas;
	private int n_personas;
	private Foro foro;
	private List<Tag> tags;
	private List<Novedad> novedades;
	private Pago pago;
	private String privacidad;
	private String descripcion;
	private List<Registro> registros;
	
	public static Actividad crearActividad(String nombre_actv, int max_participantes, 
			Usuario creador, Date fecha_ini, Date fecha_fin, String localizacion, 
			String destino, String privacidad) {
		
		Actividad a = new Actividad();
		
		a.nombre=nombre_actv;
		a.creador=creador;
		a.fecha_ini=fecha_ini;
		a.fecha_fin=fecha_fin;
		a.localizacion=localizacion;
		a.destino = destino;
		a.estado="Abierta";
		a.maxPersonas=max_participantes;
		a.n_personas=1;
		a.privacidad=privacidad;
		a.registros = new ArrayList<Registro>();
		a.proximosHitos = new ArrayList<Hito>();
		
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

	 public String getIdImagen(){
		 return idImagen;
	 }
	 public void setIdImagen(String idImagen){
		 this.idImagen=idImagen;
	 }
	 public int getMaxPersonas(){
		 return maxPersonas;
	 }
	 public void setMaxPersonas(int max){
		 this.maxPersonas=max;
	 }

	 public int getNpersonas(){
		 return n_personas;
	 }
	 public void setNpersonas(int n){
		 this.n_personas=n;
	 }

	 @OneToMany(targetEntity=Hito.class)
	 @JoinColumn(name="id_actividad")
	 public List<Hito> getHitos() {
		 return proximosHitos;
	 }
	 public void setHitos(List<Hito> hitos) {
		 this.proximosHitos = hitos;
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
	@JoinColumn(name="id_actividad")
	public List<Novedad> getNovedades() {
		return novedades;
	}
	public void setNovedades(List<Novedad> novedades) {
		this.novedades = novedades;
	}
	@ManyToMany(targetEntity=Tag.class, mappedBy="etiquetados")
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

	public String getPrivacidad() {
		return privacidad;
	}

	public void setPrivacidad(String privacidad) {
		this.privacidad = privacidad;
	}

	public String getLocalizacion() {
		return localizacion;
	}

	public void setLocalizacion(String localizacion) {
		this.localizacion = localizacion;
	}
	
	public String getDestino() {
		return destino;
	}
	
	public void setDestino(String destino) {
		this.destino = destino;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	@OneToMany(targetEntity=Registro.class, orphanRemoval=true)
	@JoinColumn(name="id_actividad")
	public List<Registro> getRegistros() {
		return registros;
	}

	public void setRegistros(List<Registro> registros) {
		this.registros = registros;
	}



}