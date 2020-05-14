package br.edu.ufersa.sadta.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.edu.ufersa.sadta.repository.SintomaRepository;

@Controller
public class SintomaController {
	@Autowired
	private SintomaRepository sintomaRepository;

	@RequestMapping(value = "sintomas-registrados")
	public String getSintomas(Model model) {
		model.addAttribute("sintomas", sintomaRepository.findAllByOrderByNomeSintoma());
		return "lista-sintomas";
	}
}
