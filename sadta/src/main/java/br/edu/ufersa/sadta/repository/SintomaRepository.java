package br.edu.ufersa.sadta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.ufersa.sadta.modelo.Sintoma;

public interface SintomaRepository extends JpaRepository<Sintoma, Long> {
	List<Sintoma> findAllByOrderByNomeSintoma();

	Sintoma findByIriSintoma(String iri);

	Sintoma findByCodigoSintoma(Long long1);
}
