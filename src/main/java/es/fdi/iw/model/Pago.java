package es.fdi.iw.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;


@Entity
@NamedQueries({
    @NamedQuery(name="allPagos",
            query="select p from Pago p")
})
public class Pago {
	private long id;
	private double precioIndividual;
	private Date fechaLimitePago;
	private String descripcionFormaPago;
	

	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@NotNull
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
	@NotNull
	public String getDescripcionFormaPago() {
		return descripcionFormaPago;
	}
	public void setDescripcionFormaPago(String descripcionFormaPago) {
		this.descripcionFormaPago = descripcionFormaPago;
	}
}
