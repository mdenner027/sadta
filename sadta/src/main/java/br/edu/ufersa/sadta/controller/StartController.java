package br.edu.ufersa.sadta.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StartController {

	@RequestMapping("/")
	public String inicioRedirect() {
		return "redirect:inicio";
	}
	
	@RequestMapping("inicio")
	public String inicio() {
		return "inicio";
	}
}
