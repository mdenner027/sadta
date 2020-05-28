package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Situacoes")
public class Situacao implements Serializable, Comparable<Situacao> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_situacao", nullable = false)
	private Long codigoSituacao;

	@Column(name = "iri_situacao", nullable = false, unique = true)
	private String iriSituacao;

	@Column(name = "nome_situacao", nullable = false, unique = true)
	private String nomeSituacao;

	@Override
	public int compareTo(Situacao o) {
		return this.getNomeSituacao().compareTo(o.getNomeSituacao());
	}

	public Long getCodigoSituacao() {
		return codigoSituacao;
	}

	public void setCodigoSituacao(Long codigosituacao) {
		this.codigoSituacao = codigosituacao;
	}

	public String getIriSituacao() {
		return iriSituacao;
	}

	public void setIriSituacao(String irisituacao) {
		this.iriSituacao = irisituacao;
	}

	public String getNomeSituacao() {
		return nomeSituacao;
	}

	public void setNomeSituacao(String nomesituacao) {
		this.nomeSituacao = nomesituacao;
	}
}
