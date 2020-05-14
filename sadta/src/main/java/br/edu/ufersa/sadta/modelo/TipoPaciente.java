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
@Table(name = "Tipos_Paciente")
public class TipoPaciente implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "codigo_tipo_paciente", nullable = false)
	private Long codigoTipoPaciente;

	@Column(name = "iri_tipo_paciente", nullable = false, unique = true)
	private String iriTipoPaciente;

	@Column(name = "nome_tipo_paciente", nullable = false, unique = true)
	private String nomeTipoPaciente;

	@ManyToMany
	private List<Caso> casosTipoPaciente;

	public Long getCodigoTipoPaciente() {
		return codigoTipoPaciente;
	}

	public void setCodigoTipoPaciente(Long codigoTipoPaciente) {
		this.codigoTipoPaciente = codigoTipoPaciente;
	}

	public String getIriTipoPaciente() {
		return iriTipoPaciente;
	}

	public void setIriTipoPaciente(String iriTipoPaciente) {
		this.iriTipoPaciente = iriTipoPaciente;
	}

	public String getNomeTipoPaciente() {
		return nomeTipoPaciente;
	}

	public void setNomeTipoPaciente(String nomeTipoPaciente) {
		this.nomeTipoPaciente = nomeTipoPaciente;
	}

	public List<Caso> getCasosTipoPaciente() {
		return casosTipoPaciente;
	}

	public void setCasosTipoPaciente(List<Caso> casosTipoPaciente) {
		this.casosTipoPaciente = casosTipoPaciente;
	}

}
