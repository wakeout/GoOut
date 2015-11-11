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
    @NamedQuery(name="allMensajes",
            query="select m from Mensaje m")
})
public class Mensaje {
	private String mailOrigen;
	private ArrayList<String> mailDestinos;
	private int nDestinos;
	private String titulo;
	
	/*
	private String texto;
	private int idTexto;
	*/
	

}
