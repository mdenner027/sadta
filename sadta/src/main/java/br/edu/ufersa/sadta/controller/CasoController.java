package br.edu.ufersa.sadta.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.ufersa.sadta.modelo.Caso;
import br.edu.ufersa.sadta.modelo.CasoReview;
import br.edu.ufersa.sadta.modelo.Comorbidade;
import br.edu.ufersa.sadta.modelo.ComorbidadeReview;
import br.edu.ufersa.sadta.modelo.Sintoma;
import br.edu.ufersa.sadta.modelo.Situacao;
import br.edu.ufersa.sadta.modelo.TipoPaciente;
import br.edu.ufersa.sadta.modelo.TranstornoReview;
import br.edu.ufersa.sadta.repository.CasoRepository;
import br.edu.ufersa.sadta.repository.CasoReviewRepository;
import br.edu.ufersa.sadta.repository.ComorbidadeRepository;
import br.edu.ufersa.sadta.repository.ComorbidadeReviewRepository;
import br.edu.ufersa.sadta.repository.SintomaRepository;
import br.edu.ufersa.sadta.repository.SituacaoRepository;
import br.edu.ufersa.sadta.repository.TipoPacienteRepository;
import br.edu.ufersa.sadta.repository.TranstornoReviewRepository;

@Controller
public class CasoController {

	@Autowired
	private CasoRepository casoRepository;

	@Autowired
	private CasoReviewRepository casoReviewRepository;

	@Autowired
	private TranstornoReviewRepository transtornoReviewRepository;

	@Autowired
	private ComorbidadeReviewRepository comorbidadeReviewRepository;

	@Autowired
	private ComorbidadeRepository comorbidadeRepository;

	@Autowired
	private TipoPacienteRepository tiposRepository;

	@Autowired
	private SintomaRepository sintomaRepository;

	@Autowired
	private SituacaoRepository situacaoRepository;

	@RequestMapping(value = "/")
	public String redirecionaAnalisar() {
		return "redirect:analisar-caso";
	}

	@RequestMapping(value = "salvar-caso-teste", method = RequestMethod.POST)
	public String salvarCasoTeste(int tempoSintomasCaso, Long[] codigoComorbidade, Long[] codigoTipoPaciente,
			Long[] sintomas, Long[] codigoSituacao) {
		Caso caso = montarCaso(codigoComorbidade, codigoTipoPaciente, sintomas, codigoSituacao);
		caso.setTempoSintomasCaso(tempoSintomasCaso);
		caso.setDataRegistroCaso(Calendar.getInstance());
		casoRepository.save(caso);
		return "redirect:casos-hipoteticos-registrados";
	}

	@RequestMapping(value = "analisar-caso")
	public String analisarCaso(Model model) {
		model.addAttribute("sintomas", sintomaRepository.findAllByOrderByNomeSintoma());
		model.addAttribute("situacoes", situacaoRepository.findAllByOrderByNomeSituacao());
		return "analisa-caso";
	}

	@RequestMapping(value = "casos-hipoteticos-registrados")
	public String listaCasosHipoteticos(Model model) {
		model.addAttribute("casos", casoRepository.findAllByOrderByDataRegistroCaso());
		return "lista-casos-hipoteticos";
	}

	@RequestMapping(value = "exibir-caso", method = RequestMethod.POST)
	public String exibirCasoHipotetico(Model model, Long codigoCaso) {

		Caso caso = casoRepository.findByCodigoCaso(codigoCaso);

		Collections.sort(caso.getSintomasCaso());
		Collections.sort(caso.getTiposPacienteCaso());
		Collections.sort(caso.getSituacoesCaso());
		Collections.sort(caso.getComorbidadesCaso());

		model.addAttribute("caso", caso);
		return "detalhes-caso";
	}

	@RequestMapping(value = "analisar-caso-hipotetico")
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
		model.addAttribute("tempo", r.nextInt(12));
		return "analisa-caso-teste";
	}

	@RequestMapping(value = "avaliar", method = RequestMethod.POST)
	public String avaliarCasoHipotetico(Boolean[] validaComorbidade, Boolean[] validaTranstorno, Long[] comorbidades,
			Long[] transtornos, String comentarios, CasoReview casoReview) {

		Set<TranstornoReview> transtornosReview = new HashSet<>();
		Set<ComorbidadeReview> comorbidadesReview = new HashSet<>();
		casoReviewRepository.save(casoReview);
		for (int i = 0; i < transtornos.length; i++) {
			TipoPaciente tipo = new TipoPaciente();
			tipo.setCodigoTipoPaciente(transtornos[i]);
			TranstornoReview review = new TranstornoReview();
			review.setTrasntornoReview(tipo);
			review.setCasoReview(casoReview);
			review.setOpcaoValidadaReview(validaTranstorno[i]);
			transtornosReview.add(review);
		}

		for (int i = 0; i < comorbidades.length; i++) {
			Comorbidade comorbidade = new Comorbidade();
			comorbidade.setCodigoComorbidade(comorbidades[i]);
			ComorbidadeReview review = new ComorbidadeReview();
			review.setCasoReview(casoReview);
			review.setComorbidadeReview(comorbidade);
			review.setOpcaoValidadaReview(validaComorbidade[i]);
			comorbidadesReview.add(review);
		}

		transtornoReviewRepository.saveAll(transtornosReview);
		comorbidadeReviewRepository.saveAll(comorbidadesReview);

		casoReview.setComorbidadesReview(comorbidadesReview);
		casoReview.setTranstornosReview(transtornosReview);
		
		return "redirect:lista-casos-hipoteticos";

	}

	private Caso montarCaso(Long[] comorbidades, Long[] tiposPaciente, Long[] sintomas, Long[] situacoes) {
		Caso caso = new Caso();
		List<Comorbidade> comorbidadesList = new ArrayList<>();
		List<Sintoma> sintomasList = new ArrayList<>();
		List<Situacao> situacoesList = new ArrayList<>();
		List<TipoPaciente> tiposList = new ArrayList<>();

		for (int i = 0; i < comorbidades.length; i++) {
			comorbidadesList.add(comorbidadeRepository.findByCodigoComorbidade(comorbidades[i]));
		}

		for (int i = 0; i < tiposPaciente.length; i++) {
			tiposList.add(tiposRepository.findByCodigoTipoPaciente(tiposPaciente[i]));
		}

		for (int i = 0; i < sintomas.length; i++) {
			sintomasList.add(sintomaRepository.findByCodigoSintoma(sintomas[i]));
			System.out.println(sintomaRepository.findByCodigoSintoma(sintomas[i]).getNomeSintoma());
		}

		for (int i = 0; i < situacoes.length; i++) {
			situacoesList.add(situacaoRepository.findByCodigoSituacao(situacoes[i]));
			System.out.println(situacaoRepository.findByCodigoSituacao(situacoes[i]).getNomeSituacao());
		}

		caso.setSintomasCaso(sintomasList);
		caso.setSituacoesCaso(situacoesList);
		caso.setComorbidadesCaso(comorbidadesList);
		caso.setTiposPacienteCaso(tiposList);

		return caso;
	}
}