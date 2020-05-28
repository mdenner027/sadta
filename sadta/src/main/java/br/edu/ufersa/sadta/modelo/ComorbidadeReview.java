package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Reviews_Comorbidade")
public class ComorbidadeReview implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_review_comorbidade", nullable = false)
	private Long codigoReviewComorbidade;

	@ManyToOne(targetEntity = Comorbidade.class)
	@JoinColumn(name = "codigo_comorbidade_review")
	private Comorbidade comorbidadeReview;

	@ManyToOne(targetEntity = CasoReview.class)
	@JoinColumn(name = "codigo_caso_review")
	private CasoReview casoReview;

	@Column(name = "opcao_validada_review")
	private Boolean opcaoValidadaReview;

	public Long getCodigoReviewComorbidade() {
		return codigoReviewComorbidade;
	}

	public void setCodigoReviewComorbidade(Long codigoReviewComorbidade) {
		this.codigoReviewComorbidade = codigoReviewComorbidade;
	}

	public Comorbidade getComorbidadeReview() {
		return comorbidadeReview;
	}

	public void setComorbidadeReview(Comorbidade comorbidadeReview) {
		this.comorbidadeReview = comorbidadeReview;
	}

	public CasoReview getCasoReview() {
		return casoReview;
	}

	public void setCasoReview(CasoReview casoReview) {
		this.casoReview = casoReview;
	}

	public Boolean getOpcaoValidadaReview() {
		return opcaoValidadaReview;
	}

	public void setOpcaoValidadaReview(Boolean opcaoValidadaReview) {
		this.opcaoValidadaReview = opcaoValidadaReview;
	}

}
