package br.edu.ufersa.sadta.ontologia;

import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.semanticweb.HermiT.ReasonerFactory;
import org.semanticweb.owlapi.apibinding.OWLManager;
import org.semanticweb.owlapi.model.AddAxiom;
import org.semanticweb.owlapi.model.IRI;
import org.semanticweb.owlapi.model.OWLClass;
import org.semanticweb.owlapi.model.OWLClassAssertionAxiom;
import org.semanticweb.owlapi.model.OWLDataFactory;
import org.semanticweb.owlapi.model.OWLDataProperty;
import org.semanticweb.owlapi.model.OWLDataPropertyAssertionAxiom;
import org.semanticweb.owlapi.model.OWLNamedIndividual;
import org.semanticweb.owlapi.model.OWLObjectProperty;
import org.semanticweb.owlapi.model.OWLObjectPropertyAssertionAxiom;
import org.semanticweb.owlapi.model.OWLOntology;
import org.semanticweb.owlapi.model.OWLOntologyCreationException;
import org.semanticweb.owlapi.model.OWLOntologyManager;
import org.semanticweb.owlapi.reasoner.InferenceType;
import org.semanticweb.owlapi.reasoner.OWLReasoner;
import org.semanticweb.owlapi.reasoner.OWLReasonerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import br.edu.ufersa.sadta.modelo.Caso;
import br.edu.ufersa.sadta.modelo.Comorbidade;
import br.edu.ufersa.sadta.modelo.Ontologia;
import br.edu.ufersa.sadta.modelo.TipoPaciente;
import br.edu.ufersa.sadta.repository.ComorbidadeRepository;
import br.edu.ufersa.sadta.repository.TipoPacienteRepository;

@Component
public class OntologiaOwlApi {
	@Autowired
	private TipoPacienteRepository tipoRepository;

	@Autowired
	private ComorbidadeRepository comorbidadeRepository;

	private static final String prefix = "http://www.semanticweb.org/max/ontologies/2019/10/untitled-ontology-49#";

	public Caso inferirDados(String[] sintoma, String[] situacao, int tempo, Ontologia ont)
			throws OWLOntologyCreationException, FileNotFoundException {
		Caso caso = new Caso();
		if (situacao == null || sintoma == null) {
			List<Comorbidade> comorbidades = new ArrayList<>();
			List<TipoPaciente> tipos = new ArrayList<>();
			tipos.add(tipoRepository.findByIriTipoPaciente("paciente_sem_transtorno_de_ansiedade_especifico"));
			comorbidades.add(comorbidadeRepository.findByIriComorbidade("no_comorbidities_related"));
			caso.setComorbidadesCaso(comorbidades);
			caso.setTiposPacienteCaso(tipos);
			return caso;
		}
		OWLOntologyManager manager = OWLManager.createOWLOntologyManager();
		InputStream input = new ByteArrayInputStream(ont.getVersaoOntologia());
		OWLOntology ontology = manager.loadOntologyFromOntologyDocument(input);
		OWLDataFactory df = ontology.getOWLOntologyManager().getOWLDataFactory();
		OWLObjectProperty hasSymptom = df.getOWLObjectProperty(prefix + "has_symptom");
		OWLObjectProperty hasSituation = df.getOWLObjectProperty(prefix + "has_situation");
		OWLNamedIndividual transtorno = df.getOWLNamedIndividual(prefix + "transtorno");

		for (int i = 0; i < sintoma.length; i++) {
			OWLNamedIndividual symptom = df.getOWLNamedIndividual(IRI.create(prefix + "sintoma" + i));
			OWLClass cls = df.getOWLClass(prefix + sintoma[i]);
			OWLClassAssertionAxiom ax = df.getOWLClassAssertionAxiom(cls, symptom);
			OWLObjectPropertyAssertionAxiom ax2 = df.getOWLObjectPropertyAssertionAxiom(hasSymptom, transtorno,
					symptom);
			manager.applyChanges(new AddAxiom(ontology, ax));
			manager.applyChanges(new AddAxiom(ontology, ax2));
		}

		for (int i = 0; i < situacao.length; i++) {
			OWLNamedIndividual situation = df.getOWLNamedIndividual(IRI.create(prefix + "situacao" + i));
			OWLClass cls = df.getOWLClass(prefix + situacao[i]);
			OWLClassAssertionAxiom ax = df.getOWLClassAssertionAxiom(cls, situation);
			OWLObjectPropertyAssertionAxiom dax = df.getOWLObjectPropertyAssertionAxiom(hasSituation, transtorno,
					situation);
			manager.applyChanges(new AddAxiom(ontology, ax));
			manager.applyChanges(new AddAxiom(ontology, dax));
		}

		OWLNamedIndividual paciente = df.getOWLNamedIndividual(prefix + "paciente");
		OWLDataProperty dp = df.getOWLDataProperty(prefix + "time_with_symptoms");
		OWLDataPropertyAssertionAxiom daz = df.getOWLDataPropertyAssertionAxiom(dp, paciente, tempo);
		manager.applyChanges(new AddAxiom(ontology, daz));

		OWLReasonerFactory rf = new ReasonerFactory();
		OWLReasoner r = rf.createReasoner(ontology);
		r.precomputeInferences(InferenceType.DATA_PROPERTY_ASSERTIONS, InferenceType.OBJECT_PROPERTY_ASSERTIONS);

		@SuppressWarnings("deprecation")
		Set<OWLClass> pacienteTranstornos = r.getTypes(df.getOWLNamedIndividual(prefix + "paciente"), true)
				.getFlattened();
		@SuppressWarnings("deprecation")
		Set<OWLClass> pacienteComorbidades = r.getTypes(df.getOWLNamedIndividual(prefix + "comorbidade"), false)
				.getFlattened();

		List<TipoPaciente> tiposPacienteCaso = new ArrayList<>();
		for (Iterator<OWLClass> it = pacienteTranstornos.iterator(); it.hasNext();) {
			OWLClass classe = it.next();
			if (!classe.getIRI().toString().equals(prefix + "patient")) {
				tiposPacienteCaso
						.add(tipoRepository.findByIriTipoPaciente(classe.getIRI().toString().replace(prefix, "")));
			}
		}

		List<Comorbidade> comorbidadesCaso = new ArrayList<>();
		for (Iterator<OWLClass> it = pacienteComorbidades.iterator(); it.hasNext();) {
			OWLClass classe = it.next();
			if (!classe.getIRI().toString().equals(prefix + "comorbidities")) {
				comorbidadesCaso.add(
						comorbidadeRepository.findByIriComorbidade(classe.getIRI().toString().replace(prefix, "")));
			}

		}
		Comorbidade semComorbidade = comorbidadeRepository.findByIriComorbidade("no_comorbidities_related");

		Comorbidade comorbidadeNula = null;
		comorbidadesCaso.remove(comorbidadeNula);
		if (comorbidadesCaso.size() > 1) {
			comorbidadesCaso.remove(semComorbidade);
		}
		caso.setComorbidadesCaso(comorbidadesCaso);
		caso.setTiposPacienteCaso(tiposPacienteCaso);
		return caso;
	}
}
