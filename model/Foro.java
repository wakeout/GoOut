package es.fdi.iw.model;

import java.util.ArrayList;

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
    @NamedQuery(name="allForos",
            query="select f from Foro f")
})
public class Foro {
	private ArrayList<Comentario>  comentarios;
	/*
	 * boton comentar;
	 * boton sugerir;
	 * 
	 * text sugerirHora;
	 * text sugerirLugar;
	 * text sugerirFecha;
	 * 
	 * text comentario;
	 * 
	 * desplegable importancia;
	 * */
	
}
