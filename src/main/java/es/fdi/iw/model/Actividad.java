
package es.fdi.iw.model;

import java.util.ArrayList;
import java.util.List;

//import javax.persistence.CascadeType;
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
import javax.persistence.SecondaryTable;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import java.sql.Date;
import java.sql.Time;


@Entity
@NamedQueries({
    @NamedQuery(name="allActividades",
            query="select a from Actividad a"),
    @NamedQuery(name="unaActividad",
    		query="select a from Actividad a where a.id = :actividadParam"),
    @NamedQuery(name="eliminarActividad", 
    		query="delete  from Actividad a where a.id= :idActividad"),
    @NamedQuery(name="actividadesCreadas", 
    		query="select a from Actividad a where a.creador = :creadorParam"),
    @NamedQuery(name="buscaActividad", 
    		query="select a from Actividad a where a.nombre like :nombreParam")

}) 
public class Actividad{

	private long id;//key
	private String nombre;
	private Usuario creador;
	private Date fecha_ini;
	private Date fecha_fin;
	private String hora_ini;
	private String hora_fin;
	private String localizacion;
	private String destino;
	private List<Hito> proximosHitos;
	private String estado;
	private int maxPersonas;
	private int n_personas;
	private Foro foro;
	private List<Tag> tags;
	private String privacidad;
	private String descripcion;
	private List<Registro> registros;
	private List<Encuesta> encuestas;
	private List<Imagenes> img_galeria;
	private boolean eliminado;
	
	public static StringBuilder getJSONString(List<Actividad> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Actividad a : l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(a));
		}
		
		return sb;
	}
	
	public static String getSingleString(Actividad a){
		return "{ "
				+ "\"id\": \"" + a.getId() + "\", "
				+ "\"estado\": \"" + a.getEstado() + "\", "
				+ "\"npersonas\": \"" + a.getNpersonas() + "\", "
				+ "\"max\": \"" + a.getMaxPersonas() + "\", "
				+ "\"numero\": \"" + a.getNpersonas() + "\", "
				+ "\"fecha\": \"" + a.getFecha_ini() + "\", "
				+ "\"fecha_fin\": \"" + a.getFecha_fin() + "\", "
				+ "\"localizacion\": \"" + a.getLocalizacion() + "\", "
				+ "\"creador\": \"" + a.getCreador().getNombre() + "\", "
				+ "\"hora_ini\": \"" + a.getHora_ini() + "\", "
				+ "\"hora_fin\": \"" + a.getHora_fin() + "\", "
				+ "\"destino\": \"" + a.getDestino() + "\", "
				+ "\"nombre\": \""+a.getNombre()+"\"}";
	}
	
	
	public static Actividad crearActividad(String nombre_actv, int max_participantes, 
			Usuario creador, Date fecha_ini, Date fecha_fin, String localizacion, 
			String destino, String privacidad, String descripcion, String estado) {
		
		Actividad a = new Actividad();
		
		a.nombre=nombre_actv;
		a.creador=creador;
		a.descripcion = descripcion;
		a.fecha_ini=fecha_ini;
		a.fecha_fin=fecha_fin;
		a.localizacion=localizacion;
		a.destino = destino;
		a.estado=estado;
		a.maxPersonas=max_participantes;
		a.n_personas=1;
		a.privacidad=privacidad;
		a.registros = new ArrayList<Registro>();
		a.proximosHitos = new ArrayList<Hito>();
		a.tags = new ArrayList<Tag>();
		a.encuestas =new ArrayList<Encuesta>();
		a.img_galeria =new ArrayList<Imagenes>();
		a.foro=new Foro();
		a.eliminado = false;
		
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
	 
	 public boolean getEliminado(){
		 return eliminado;
	 }
	 
	 public void setEliminado(boolean b){
		 this.eliminado = b;
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
	
	@ManyToMany(targetEntity=Tag.class, mappedBy="etiquetados")
	public List<Tag> getTags() {
		return tags;
	}
	public void setTags(List<Tag> tags) {
		this.tags = tags;
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


	@OneToMany(targetEntity=Encuesta.class, orphanRemoval=true)
	@JoinColumn(name="id_actividad")
	public List<Encuesta> getEncuestas() {
		return encuestas;
	}
	public void setEncuestas(List<Encuesta> encuestas) {
		this.encuestas = encuestas;
	}

	public void setEncuesta(Encuesta e){
		encuestas.add(e);
	}

	public String getHora_ini() {
		return hora_ini;
	}

	public void setHora_ini(String hora_ini) {
		this.hora_ini = hora_ini;
	}

	public String getHora_fin() {
		return hora_fin;
	}

	public void setHora_fin(String hora_fin) {
		this.hora_fin = hora_fin;
	}

	@OneToMany(targetEntity=Imagenes.class)
	@JoinColumn(name="id_actividad")
	public List<Imagenes> getImg_galeria() {
		return img_galeria;
	}

	public void setImg_galeria(List<Imagenes> img_galeria) {
		this.img_galeria = img_galeria;
	}
	
	public void setImagen(Imagenes i){
		img_galeria.add(i);
	}
	


}