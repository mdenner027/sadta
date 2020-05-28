package br.edu.ufersa.sadta.modelo;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Reviews")
public class CasoReview implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_review")
	private Long codigoReview;

	@ManyToOne(targetEntity = Caso.class)
	@JoinColumn(name = "codigo_caso_review")
	private Caso casoReview;

	@OneToMany(mappedBy = "casoReview", targetEntity = ComorbidadeReview.class)
	private Set<ComorbidadeReview> comorbidadesReview;

	@OneToMany(mappedBy = "casoReview", targetEntity = TranstornoReview.class)
	private Set<TranstornoReview> transtornosReview;

	@Column(name = "comentario_review")
	private String comentarioReview;

	public Long getCodigoReview() {
		return codigoReview;
	}

	public void setCodigoReview(Long codigoReview) {
		this.codigoReview = codigoReview;
	}

	public Caso getCasoReview() {
		return casoReview;
	}

	public void setCasoReview(Caso casoReview) {
		this.casoReview = casoReview;
	}

	public Set<ComorbidadeReview> getComorbidadesReview() {
		return comorbidadesReview;
	}

	public void setComorbidadesReview(Set<ComorbidadeReview> comorbidadesReview) {
		this.comorbidadesReview = comorbidadesReview;
	}

	public Set<TranstornoReview> getTranstornosReview() {
		return transtornosReview;
	}

	public void setTranstornosReview(Set<TranstornoReview> transtornosReview) {
		this.transtornosReview = transtornosReview;
	}

	public String getComentarioReview() {
		return comentarioReview;
	}

	public void setComentarioReview(String comentarioReview) {
		this.comentarioReview = comentarioReview;
	}

}
