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
    @NamedQuery(name="delPago", 
    		query="delete from Pago p where p.id = :idParam")            
})
public class Pago {
	private long id;
	private double precioIndividual;
	private Date fechaLimitePago;
	private String descripcionFormaPago;
	private List<Pago> pagados; //No seria una lista de ids de usuarios que han pagado?
	
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
	public Date getFechaLimitePago() {
		return fechaLimitePago;
	}
	public void setFechaLimitePago(Date fechaLimitePago) {
		this.fechaLimitePago = fechaLimitePago;
	}
	public String getDescripcionFormaPago() {
		return descripcionFormaPago;
	}
	public void setDescripcionFormaPago(String descripcionFormaPago) {
		this.descripcionFormaPago = descripcionFormaPago;
	}
	
	@OneToMany(targetEntity=Usuario.class)
	public List<Pago> getPagados() {
		return pagados;
	}
	public void setPagados(List<Pago> pagados) {
		this.pagados = pagados;
	}
}
