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
    @NamedQuery(name="allComentarios",
            query="select c from Comentario c")
})
public class Comentario {
	private long id;
	private String mailPerfil;// key perfil
	private String asunto;
	private Importancia imp;
	private boolean sugiero;
	private Sugerencia sugerencia;
	
	 @Id
     @GeneratedValue
     public long getId() {
       return id;
     }
		
}
