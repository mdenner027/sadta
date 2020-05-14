/**
 * 
 */

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