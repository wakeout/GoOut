package es.fdi.iw.model;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;

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

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@Entity
@NamedQueries({
    @NamedQuery(name="allPerfiles",
            query="select p from Perfil p")
})
public class Perfil {
	private String email;//key
	
	private String nombre;
	private Date nacimiento;
	private String provincia;
	private String password;
	
	
	private ArrayList<Integer> Activshistorial;//id actividad
	private ArrayList<Integer> actvsActuales;//id actividad
	
	private ArrayList<Perfil>  Amigos;
	
	/*
	private String descripcion;
	private int idDescripcion;
	*/
	
	
}
