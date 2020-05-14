package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Comorbidades")
public class Comorbidade implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_comorbidade", nullable = false)
	private Long codigoComorbidade;

	@Column(name = "iri_comorbidade", nullable = false, unique = true)
	private String iriComorbidade;

	@Column(name = "nome_comorbidade", nullable = false, unique = true)
	private String nomeComorbidade;

	@ManyToMany(targetEntity = Caso.class)
	private List<Caso> casosComorbidade;

	public Long getCodigoComorbidade() {
		return codigoComorbidade;
	}

	public void setCodigoComorbidade(Long codigoComorbidade) {
		this.codigoComorbidade = codigoComorbidade;
	}

	public String getIriComorbidade() {
		return iriComorbidade;
	}

	public void setIriComorbidade(String iriComorbidade) {
		this.iriComorbidade = iriComorbidade;
	}

	public String getNomeComorbidade() {
		return nomeComorbidade;
	}

	public void setNomeComorbidade(String nomeComorbidade) {
		this.nomeComorbidade = nomeComorbidade;
	}

	public List<Caso> getCasosComorbidade() {
		return casosComorbidade;
	}

	public void setCasosComorbidade(List<Caso> casosComorbidade) {
		this.casosComorbidade = casosComorbidade;
	}
}
