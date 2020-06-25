package br.edu.ufersa.sadta.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.ufersa.sadta.modelo.Caso;
import br.edu.ufersa.sadta.modelo.Ontologia;
import br.edu.ufersa.sadta.modelo.Sintoma;
import br.edu.ufersa.sadta.modelo.Situacao;
import br.edu.ufersa.sadta.ontologia.OntologiaOwlApi;
import br.edu.ufersa.sadta.repository.OntologiaRepository;
import br.edu.ufersa.sadta.repository.SintomaRepository;
import br.edu.ufersa.sadta.repository.SituacaoRepository;

@Controller
public class OntologiaController {

	@Autowired
	private OntologiaOwlApi api;

	@Autowired
	private SintomaRepository sintomaRepository;

	@Autowired
	private SituacaoRepository situacaoRepository;

	@Autowired
	private OntologiaRepository ontologiaRepository;

	@RequestMapping(value = "insert-ontology", method = RequestMethod.POST)
	public String insertOntology(@RequestParam("versaoOntologia") InputStream versaoOntologia) throws IOException {
		Ontologia ontologia = new Ontologia();
		ontologia.setDataOntologia(Calendar.getInstance());
		// InputStream in = (FileInputStream) versaoOntologia.getInputStream();
		// ontologia.setVersaoOntologia(versaoOntologia);
		ontologiaRepository.save(ontologia);
		return "ontologia";
	}

	@RequestMapping(value = "analisar", method = RequestMethod.POST)
	public String analisar(String[] sintomasCaso, String[] situacoesCaso, Integer tempoSintomasCaso, String link,
			Model model) {
		Caso caso = new Caso();
		try {
			caso = api.inferirDados(sintomasCaso, situacoesCaso, tempoSintomasCaso,
					ontologiaRepository.findByCodigoOntologia(1L));
		} catch (OWLOntologyCreationException | FileNotFoundException e) {
			e.printStackTrace();
		}

		if (!(sintomasCaso == null || situacoesCaso == null)) {
			caso.setSintomasCaso(getSintomas(sintomasCaso));
			caso.setSituacoesCaso(getSituacoes(situacoesCaso));
		}
		caso.setTempoSintomasCaso(tempoSintomasCaso);
		model.addAttribute("caso", caso);
		model.addAttribute("link", link);
		return "results";
	}

	@RequestMapping(value = "analisar-hipotese", method = RequestMethod.POST)
	public String analisarHipotese(String[] sintomasCaso, String[] situacoesCaso, int tempoSintomasCaso, String link,
			Model model) {
		Caso caso = new Caso();
		try {
			caso = api.inferirDados(sintomasCaso, situacoesCaso, tempoSintomasCaso,
					ontologiaRepository.findByCodigoOntologia(1L));
		} catch (OWLOntologyCreationException | FileNotFoundException e) {
			e.printStackTrace();
		}

		if (!(sintomasCaso == null || situacoesCaso == null)) {
			model.addAttribute("situacoes", getSituacoes(situacoesCaso));
			model.addAttribute("sintomas", getSintomas(sintomasCaso));
		}
		model.addAttribute("transtornos", caso.getTiposPacienteCaso());
		model.addAttribute("comorbidades", caso.getComorbidadesCaso());
		model.addAttribute("tempo", tempoSintomasCaso);
		model.addAttribute("link", link);
		return "resultados";
	}

	private List<Sintoma> getSintomas(String[] sintomasArray) {
		List<Sintoma> sintomas = new ArrayList<>();
		for (int i = 0; i < sintomasArray.length; i++) {
			sintomas.add(sintomaRepository.findByIriSintoma(sintomasArray[i]));
		}

		return sintomas;
	}

	private List<Situacao> getSituacoes(String[] situacoesArray) {
		List<Situacao> situacoes = new ArrayList<>();
		for (int i = 0; i < situacoesArray.length; i++) {
			situacoes.add(situacaoRepository.findByIriSituacao(situacoesArray[i]));
		}

		return situacoes;
	}
}
