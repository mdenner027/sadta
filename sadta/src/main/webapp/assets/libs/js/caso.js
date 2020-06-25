/**
 * 
 */


function mostraS(){
	document.getElementById("principal").hidden = true;;
	document.getElementById("conjunto-sintomas").hidden = false;
	location.href = "#conjunto-sintomas";
	
}

function avaliarCaso() {
	
	let tabsContent = document.querySelectorAll("#myTabContent5 div");
	let tabs = document.querySelectorAll("#myTab5 a");
	
	for(let content of tabsContent){
		content.classList.remove("show");
		content.classList.remove("active");
		
	}
	
	for(let tab of tabs){
		tab.setAttribute("aria-selected","false");
		tab.classList.remove("show");
		tab.classList.remove("active");	
	}
	
	let elementos = document.querySelectorAll(".elemento");
	for(let el of elementos){
		el.hidden = false;
	}
	
	var bt = document.getElementById("bt-analise");
	document.getElementById("comment").hidden = false;

	bt.removeAttribute("onclick");
	bt.hidden = true;
	bt.disabled = true;
	
	document.getElementById("tab3").setAttribute("aria-selected","true");
	document.getElementById("tab3").classList.add("active");
	document.getElementById("tab3").classList.add("show");
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
	let tempo = document.getElementById("tempo-sintomas").value;

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