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
@Table(name = "Transtornos")
public class Transtorno implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_transtorno", nullable = false)
	private Long codigoTranstorno;

	@Column(name = "iri_transtorno", nullable = false, unique = true)
	private String iriTranstorno;

	@Column(name = "nome_transtorno", nullable = false, unique = true)
	private String nomeTranstorno;

	@ManyToMany(targetEntity = Caso.class)
	private List<Caso> casosTranstorno;

	public Long getCodigoTranstorno() {
		return codigoTranstorno;
	}

	public void setCodigoTranstorno(Long codigoTranstorno) {
		this.codigoTranstorno = codigoTranstorno;
	}

	public String getIriTranstorno() {
		return iriTranstorno;
	}

	public void setIriTranstorno(String iriTranstorno) {
		this.iriTranstorno = iriTranstorno;
	}

	public String getNomeTranstorno() {
		return nomeTranstorno;
	}

	public void setNomeTranstorno(String nomeTranstorno) {
		this.nomeTranstorno = nomeTranstorno;
	}

	public List<Caso> getCasosTranstorno() {
		return casosTranstorno;
	}

	public void setCasosTranstorno(List<Caso> casosTranstorno) {
		this.casosTranstorno = casosTranstorno;
	}
}