package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;
import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "Casos")
public class Caso implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_caso", nullable = false)
	private Long codigoCaso;

	@Column(name = "tempo_sintomas_caso")
	private int tempoSintomasCaso;

	@Temporal(TemporalType.TIMESTAMP)
	private Calendar dataRegistroCaso;

	@ManyToMany(mappedBy = "casosSituacao", targetEntity = Situacao.class)
	private List<Situacao> situacoesCaso;

	@ManyToMany(mappedBy = "casosSintoma", targetEntity = Sintoma.class)
	private List<Sintoma> sintomasCaso;

	@ManyToMany(mappedBy = "casosTranstorno", targetEntity = Transtorno.class)
	private List<Transtorno> transtornosCaso;

	@ManyToMany(mappedBy = "casosComorbidade", targetEntity = Comorbidade.class)
	private List<Comorbidade> comorbidadesCaso;

	@ManyToMany(mappedBy = "casosTipoPaciente", targetEntity = TipoPaciente.class)
	private List<TipoPaciente> tiposPacienteCaso;

	public Long getCodigoCaso() {
		return codigoCaso;
	}

	public void setCodigoCaso(Long codigoCaso) {
		this.codigoCaso = codigoCaso;
	}

	public Calendar getDataRegistroCaso() {
		return dataRegistroCaso;
	}

	public void setDataRegistroCaso(Calendar dataRegistroCaso) {
		this.dataRegistroCaso = dataRegistroCaso;
	}

	public List<Situacao> getSituacoesCaso() {
		return situacoesCaso;
	}

	public void setSituacoesCaso(List<Situacao> situacoesCaso) {
		this.situacoesCaso = situacoesCaso;
	}

	public List<Sintoma> getSintomasCaso() {
		return sintomasCaso;
	}

	public int getTempoSintomasCaso() {
		return tempoSintomasCaso;
	}

	public void setTempoSintomasCaso(int tempoSintomasCaso) {
		this.tempoSintomasCaso = tempoSintomasCaso;
	}

	public void setSintomasCaso(List<Sintoma> sintomasCaso) {
		this.sintomasCaso = sintomasCaso;
	}

	public List<Transtorno> getTranstornosCaso() {
		return transtornosCaso;
	}

	public void setTranstornosCaso(List<Transtorno> transtornosCaso) {
		this.transtornosCaso = transtornosCaso;
	}

	public List<Comorbidade> getComorbidadesCaso() {
		return comorbidadesCaso;
	}

	public void setComorbidadesCaso(List<Comorbidade> comorbidadesCaso) {
		this.comorbidadesCaso = comorbidadesCaso;
	}

	public List<TipoPaciente> getTiposPacienteCaso() {
		return tiposPacienteCaso;
	}

	public void setTiposPacienteCaso(List<TipoPaciente> tiposPacienteCaso) {
		this.tiposPacienteCaso = tiposPacienteCaso;
	}

}
