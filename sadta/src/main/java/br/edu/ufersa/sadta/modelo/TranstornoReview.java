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
@Table(name = "Reviews_Transtornos")
public class TranstornoReview implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_review_transtorno", nullable = false)
	private Long codigoReviewTranstorno;

	@ManyToOne(targetEntity = TipoPaciente.class)
	@JoinColumn(name = "codigo_trasntorno_review")
	private TipoPaciente trasntornoReview;

	@ManyToOne(targetEntity = CasoReview.class)
	@JoinColumn(name = "codigo_caso_review")
	private CasoReview casoReview;

	@Column(name = "opcao_validada_review")
	private Boolean opcaoValidadaReview;

	public Long getCodigoReviewTranstorno() {
		return codigoReviewTranstorno;
	}

	public void setCodigoReviewTranstorno(Long codigoReviewTranstorno) {
		this.codigoReviewTranstorno = codigoReviewTranstorno;
	}

	public TipoPaciente getTrasntornoReview() {
		return trasntornoReview;
	}

	public void setTrasntornoReview(TipoPaciente trasntornoReview) {
		this.trasntornoReview = trasntornoReview;
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