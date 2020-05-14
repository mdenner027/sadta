package br.edu.ufersa.sadta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.ufersa.sadta.repository.SituacaoRepository;

@Controller
public class SituacaoController {
	@Autowired
	private SituacaoRepository situacaoRepository;

	@RequestMapping(value = "situacoes-registradas")
	public String getSituacoes(Model model) {
		model.addAttribute("situacoes", situacaoRepository.findAllByOrderByNomeSituacao());
		return "lista-situacoes";
	}
}