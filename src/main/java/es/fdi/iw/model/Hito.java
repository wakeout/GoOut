package es.fdi.iw.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;



@Entity
@NamedQueries({
    @NamedQuery(name="allHitos",
            query="select h from Hito h"),
    @NamedQuery(name="delHito", 
    		query="delete from Hito h where h.id = :idParam")
})
public class Hito {
	private long id;
	private String anuncio;
	private Date fecha;
	private boolean completado;
	
	public static Hito crearHito(String anuncio, Date fecha){
		Hito h = new Hito();
	
		h.anuncio=anuncio;
		h.fecha=fecha;
		
		return h;
		
	}

	@Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 public String getAnuncio() {
       return anuncio;
     }
	 public void setAnuncio(String anuncio) {
			this.anuncio = anuncio;
	 }
	 public Date getFecha() {
       return fecha;
     }
	 public void setFecha(Date fecha) {
			this.fecha = fecha;
	 }

	public boolean isCompletado() {
		return completado;
	}

	public void setCompletado(boolean completado) {
		this.completado = completado;
	}

}