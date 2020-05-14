package br.edu.ufersa.sadta.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.ufersa.sadta.modelo.TipoPaciente;

public interface TipoPacienteRepository extends JpaRepository<TipoPaciente, Long> {
	TipoPaciente findByIriTipoPaciente(String iri);

}
