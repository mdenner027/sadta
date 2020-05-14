package br.edu.ufersa.sadta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.ufersa.sadta.modelo.Ontologia;

public interface OntologiaRepository extends JpaRepository<Ontologia, Long> {

	List<Ontologia> findAllByOrderByDataOntologiaDesc();

	Ontologia findByCodigoOntologia(Long i);
}
