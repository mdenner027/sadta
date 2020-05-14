package br.edu.ufersa.sadta.controller;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;

import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.ufersa.sadta.modelo.Caso;
import br.edu.ufersa.sadta.modelo.Ontologia;
import br.edu.ufersa.sadta.ontologia.OntologiaOwlApi;
import br.edu.ufersa.sadta.repository.OntologiaRepository;

@Controller
public class OntologiaController {

	@Autowired
	private OntologiaOwlApi api;

	@Autowired
	private OntologiaRepository ontologiaRepository;

	// @RequestMapping(value = "/")
	// public String onto() {
	// return "cadastrar-ontologia";
	// }

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
	public String analisar(String[] sintomasCaso, String[] situacoesCaso, int tempoSintomasCaso, String link,
			Model model) {
		Caso caso = new Caso();
		try {
			caso = api.inferirDados(sintomasCaso, situacoesCaso, tempoSintomasCaso,
					ontologiaRepository.findByCodigoOntologia(1L));
		} catch (OWLOntologyCreationException | FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// System.out.println(caso.getTranstornos().get(0).getLabel());
		model.addAttribute("transtornos", caso.getTiposPacienteCaso());
		model.addAttribute("comorbidades", caso.getComorbidadesCaso());
		model.addAttribute("link", link);
		return "results";
	}
}
