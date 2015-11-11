package es.fdi.iw.model;


import java.text.DateFormat;
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



@Entity
@NamedQueries({
    @NamedQuery(name="allHitos",
            query="select h from Hito h")
})
public class Hito {
	private String anuncio;
	private Date fecha;
	private Importancia importancia;
	

}
