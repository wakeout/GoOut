package es.fdi.iw.model;


import javax.persistence.ManyToOne;

public class Registro {
	Usuario u;
	Actividad a;
	
	@ManyToOne(targetEntity=Usuario.class)
	public Usuario getU() {
		return u;
	}
	
	
	public void setU(Usuario u) {
		this.u = u;
	}
	
	@ManyToOne(targetEntity=Actividad.class)	
	public Actividad getA() {
		return a;
	}
	public void setA(Actividad a) {
		this.a = a;
	}
	
	
	
	
}
