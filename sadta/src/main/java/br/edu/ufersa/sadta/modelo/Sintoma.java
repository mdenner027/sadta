package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Sintomas")
public class Sintoma implements Serializable, Comparable<Sintoma> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_sintoma", nullable = false)
	private Long codigoSintoma;

	@Column(name = "iri_sintoma", nullable = false, unique = true)
	private String iriSintoma;

	@Column(name = "nome_sintoma", nullable = false, unique = true)
	private String nomeSintoma;

	@Column(name = "tipo_sintoma", nullable = false)
	private String tipoSintoma;

	@Override
	public int compareTo(Sintoma o) {
		return this.getNomeSintoma().compareTo(o.getNomeSintoma());
	}

	public Long getCodigoSintoma() {
		return codigoSintoma;
	}

	public void setCodigoSintoma(Long codigoSintoma) {
		this.codigoSintoma = codigoSintoma;
	}

	public String getTipoSintoma() {
		return tipoSintoma;
	}

	public void setTipoSintoma(String tipoSintoma) {
		this.tipoSintoma = tipoSintoma;
	}

	public String getIriSintoma() {
		return iriSintoma;
	}

	public void setIriSintoma(String iriSintoma) {
		this.iriSintoma = iriSintoma;
	}

	public String getNomeSintoma() {
		return nomeSintoma;
	}

	public void setNomeSintoma(String nomeSintoma) {
		this.nomeSintoma = nomeSintoma;
	}
}
