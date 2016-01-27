package es.fdi.iw.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
    @NamedQuery(name="allGaleria",
            query="select g from Imagenes g")
            
})

public class Imagenes {
	
		private long id;
		private String descripcion;
		private String nombre;
		
		public static Imagenes crearImagen(String descripcion, String nombre){
			Imagenes i = new Imagenes();
			i.descripcion=descripcion;
			i.setNombre(nombre);
			return i;
		}
		
		public String getDescripcion() {
			return descripcion;
		}
		public void setDescripcion(String descripcion) {
			this.descripcion = descripcion;
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
		
}
