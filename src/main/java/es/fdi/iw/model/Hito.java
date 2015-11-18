package es.fdi.iw.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;



@Entity
@NamedQueries({
    @NamedQuery(name="allHitos",
            query="select h from Hito h")
})
public class Hito {
	private long id;
	private String anuncio;
	private Date fecha;
	
	Hito(){
		
	}
	
	public Hito(long id, String anuncio, Date fecha) {
		super();
		this.id = id;
		this.anuncio = anuncio;
		this.fecha = fecha;
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

}