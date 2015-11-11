
package es.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

import java.text.DateFormat;
import java.util.ArrayList;
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
	private ArrayList<Hito>  proximosHitos;
	private int idImagen;
	
	
	private int maxPersonas;
	private ArrayList<String>  personas;//email de perfiles
	private int nPersonas;
	
	private Foro foro;
	
	
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	
	
	
}
