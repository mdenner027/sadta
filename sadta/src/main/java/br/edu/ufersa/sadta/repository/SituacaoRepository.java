package br.edu.ufersa.sadta.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.ufersa.sadta.modelo.Situacao;

public interface SituacaoRepository extends JpaRepository<Situacao, Long> {
	List<Situacao> findAllByOrderByNomeSituacao();

	Situacao findByIriSituacao(String iri);

	Situacao findByCodigoSituacao(Long long1);
}
