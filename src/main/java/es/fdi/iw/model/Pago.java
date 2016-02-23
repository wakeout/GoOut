package es.fdi.iw.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;


@Entity
@NamedQueries({
    @NamedQuery(name="allPagos",
            query="select p from Pago p"),
            @NamedQuery(name="unPago", 
    		query="select p from Pago p where p.id = :idPago"),
    @NamedQuery(name="delPago", 
    		query="delete from Pago p where p.id = :idPago")            
})
public class Pago {
	private long id;
	private double precioIndividual;
	private Date fechaLimite;
	private String descripcion;
	private boolean pagado;
	
	public static StringBuilder getJSONString(List<Pago> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Pago p: l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(p));
		}
		
		return sb;
	}
	
	public static String getSingleString(Pago p){
		return "{ "
				+ "\"id\": \"" + p.getId() + "\", "
				+ "\"descripcion\": \"" + p.getDescripcion() + "\", "
				+ "\"pagado\": \"" + p.getPagado() + "\", "
				+ "\"precio\": \"" + p.getPrecioIndividual() + "\", "
				+ "\"fecha\": \""+p.getFechaLimite()+"\"}";
	}
	
	
	public static Pago crearPago(double precio, Date fecha, String descripcion, long registro){
		Pago p = new Pago();
		
		p.precioIndividual = precio;
		p.fechaLimite = fecha;
		p.descripcion = descripcion;
		
		return p;
		
	}
	
	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public double getPrecioIndividual() {
		return precioIndividual;
	}
	public void setPrecioIndividual(double precioIndividual) {
		this.precioIndividual = precioIndividual;
	}
	public Date getFechaLimite() {
		return fechaLimite;
	}
	public void setFechaLimite(Date fechaLimitePago) {
		this.fechaLimite = fechaLimitePago;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public boolean isPagado() {
		return pagado;
	}
	public void setPagado(boolean pagado) {
		this.pagado = pagado;
	}
}
