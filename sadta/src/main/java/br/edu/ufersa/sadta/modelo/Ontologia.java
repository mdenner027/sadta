package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Ontologia implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_ontologia")
	private Long codigoOntologia;

	@Column(name = "versao_ontologia")
	private byte[] versaoOntologia;

	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dataOntologia;

	public Long getCodigoOntologia() {
		return codigoOntologia;
	}

	public void setCodigoOntologia(Long codigoOntologia) {
		this.codigoOntologia = codigoOntologia;
	}

	public byte[] getVersaoOntologia() {
		return versaoOntologia;
	}

	public void setVersaoOntologia(byte[] versaoOntologia) {
		this.versaoOntologia = versaoOntologia;
	}

	public Calendar getDataOntologia() {
		return dataOntologia;
	}

	public void setDataOntologia(Calendar dataOntologia) {
		this.dataOntologia = dataOntologia;
	}
}
