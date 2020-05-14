package br.edu.ufersa.sadta.controller;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.ufersa.sadta.modelo.Sintoma;
import br.edu.ufersa.sadta.modelo.Situacao;
import br.edu.ufersa.sadta.repository.SintomaRepository;
import br.edu.ufersa.sadta.repository.SituacaoRepository;

@Controller
public class CasoController {

	@Autowired
	private SintomaRepository sintomaRepository;

	@Autowired
	private SituacaoRepository situacaoRepository;

	@RequestMapping(value = "/")
	public String redirecionaRegistrarCaso() {
		return "redirect:analisar-caso";
	}

	@RequestMapping(value = "analisar-caso")
	public String registrarCaso(Model model) {
		model.addAttribute("sintomas", sintomaRepository.findAllByOrderByNomeSintoma());
		model.addAttribute("situacoes", situacaoRepository.findAllByOrderByNomeSituacao());
		return "analisa-caso";
	}

	@RequestMapping(value = "analisar-caso-teste")
	public String registrarCasoTeste(Model model) {
		Random r = new Random();
		List<Sintoma> sintomas = sintomaRepository.findAllByOrderByNomeSintoma();
		List<Sintoma> sintomas2 = new ArrayList<>();
		List<Situacao> situacoes = situacaoRepository.findAllByOrderByNomeSituacao();
		List<Situacao> situacoes2 = new ArrayList<>();
		for (int i = 0; i < 7; i++) {
			sintomas2.add(sintomas.get(r.nextInt(sintomas.size() - 1)));
		}

		for (int i = 0; i < 3; i++) {
			situacoes2.add(situacoes.get(r.nextInt(situacoes.size() - 1)));
		}
		LinkedHashSet<Sintoma> sintomasAleatorios = new LinkedHashSet<>(sintomas2);
		LinkedHashSet<Situacao> situacoesAleatorias = new LinkedHashSet<>(situacoes2);
		model.addAttribute("sintomas", sintomasAleatorios);
		model.addAttribute("situacoes", situacoesAleatorias);
		model.addAttribute("tempo", r.nextInt(7));
		return "analisa-caso-teste";
	}
}