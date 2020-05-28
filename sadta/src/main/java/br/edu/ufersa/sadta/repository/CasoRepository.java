package br.edu.ufersa.sadta.repository;

import java.util.Calendar;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.edu.ufersa.sadta.modelo.Caso;

public interface CasoRepository extends JpaRepository<Caso, Long> {
	List<Caso> findAllByOrderByDataRegistroCaso();

	Caso findByCodigoCaso(Long codigoCaso);

	Caso findByDataRegistroCaso(Calendar dataRegistroCaso);

}
