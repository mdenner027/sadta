/**
 * 
 */


function avaliarCaso() {
	var elementos = document.querySelectorAll(".elemento");
	for(let el of elementos){
		el.hidden = false;
	}
	var bt = document.getElementById("bt-analise");
	// var text = document.createTextNode("Confirmar Avaliação");
	document.getElementById("comment").hidden = false;
	// bt.removeChild(bt.firstChild);
	// bt.appendChild(text);
	// /bt.classList.remove("btn-primary");
	// bt.classList.add("btn-success");
	bt.removeAttribute("onclick");
	bt.hidden = true;
	bt.disabled = true;
	document.getElementById("tab1").classList.remove("active");
	document.getElementById("tab1").classList.remove("show");
	document.getElementById("tab1").setAttribute("aria-selected","false")
	document.getElementById("tab3").setAttribute("aria-selected","true")
	document.getElementById("tab3").classList.add("active");
	document.getElementById("tab3").classList.add("show");
	document.getElementById("sintomas").classList.remove("active");
	document.getElementById("sintomas").classList.remove("show");
	document.getElementById("transtornos").classList.add("active");
	document.getElementById("transtornos").classList.add("show");
	document.getElementById("tab3").focus();	
	document.getElementById("confirmar").hidden=false;
}

function expandirSintomas() {
	document.getElementById("sintomas").hidden = false;
	document.getElementById("sintomas-icon").className = "fas fa-angle-double-up";
	document.getElementById("sintomas-card").onclick = colapsarSintomas;

}

function expandirSituacoes() {
	document.getElementById("situacoes").hidden = false;
	document.getElementById("situacoes-icon").className = "fas fa-angle-double-up";
	document.getElementById("situacoes-card").onclick = colapsarSituacoes;

}

function colapsarSintomas() {
	document.getElementById("sintomas").hidden = true;
	document.getElementById("sintomas-icon").className = "fas fa-angle-double-down";
	document.getElementById("sintomas-card").onclick = expandirSintomas;
}

function colapsarSituacoes() {
	document.getElementById("situacoes").hidden = true;
	document.getElementById("situacoes-icon").className = "fas fa-angle-double-down";
	document.getElementById("situacoes-card").onclick = expandirSituacoes;
}

function validaCaso() {
	var tempo = document.getElementById("tempo-sintomas").value;

	console.log(typeof (tempo));
	if (isNaN(tempo)) {
		document.getElementById("tempo-sintomas").value = 0;
		document.getElementById("tempo-sintomas").classList.add("is-invalid");
		document.getElementById("tempo-sintomas").type = "number";
		document.getElementById("tempo-validation").hidden = false;
	} else {
		document.formulario.action = "analisar";
		document.formulario.submit();
	}
}