package br.edu.ufersa.sadta.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.edu.ufersa.sadta.modelo.Comorbidade;

public interface ComorbidadeRepository extends JpaRepository<Comorbidade, Long> {

	Comorbidade findByIriComorbidade(String iri);

	@Query("select c from Comorbidade c where c.iriComorbidade = ?1 AND c.iriComorbidade != ?2")
	Comorbidade findSemComorbidade(String iri, String comorbidade);

}
