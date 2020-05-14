<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>An�lise de dados</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <script type="text/javascript" src="assets/libs/js/caso.js"></script>
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/inputmask/css/inputmask.css">
    <style>
    	.expandir:hover{
    		cursor: pointer;
    	}
    </style>
</head>
<body>
	
	<div class="dashboard-main-wrapper">
	
	<c:import url="header.jsp"></c:import>
	<script>
	    function ativaMenu(){
	    	document.getElementById("caso-normal").classList.add("active");
	    }
    	window.onload = ativaMenu();
    </script>
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <!-- ============================================================== -->
                        <!-- pageheader  -->
                        <!-- ============================================================== -->
                        <!-- ============================================================== -->
                        <!-- end pageheader  -->
                        <!-- ============================================================== -->
                        <div class="page-section" id="overview">
                            <!-- ============================================================== -->
                            <!-- overview  -->
                            <!-- ============================================================== -->
                            <div class="row">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h2 class="page-header">Introdu��o</h2>
                                    <p class="">
                                    	A presente aplica��o trata-se de uma ferramenta online, a qual tem como principal
                                    	objetivo fornecer aux�lio a ps�cologos e psiquiatras no processo de diagn�stico de 
                                    	transtornos de ansiedade. <!-- Dessa forma, a ferramenta � consitu�da das seguintes etapas: -->
                                    </p>
                                    <!-- 
                                    <ul class="list-unstyled arrow">
                                        <li>
                                        1 - Selecionar sintomas: primeiramente, � preciso selecionar todos os sintomas
                                        correspondes ao paciente.
                                        </li>
                                        <li>
                                        2 - Informar o tempo dos sintomas: ap�s selecionar os sintomas, � necess�rio nessa etapa
                                        que seja informado quanto tempo, em meses, em que o paciente vem percebendo os sintomas em seu cotidiano.
                                        </li>
                                        <li>
                                        3 - Selecionar as situa��es: consiste em selecionar as principais situa��es nas quais 
                                        os indicadores sintom�ticos tornam-se percept�veis para o paciente.
                                        </li>
                                        <li>
                                        4 - Ao clicar em "Analisar Dados", voc� ser� direcionado para outr� p�gina, onde esta
                                        apresenta um conjunto de poss�veis transtornos e comorbidades que podem estar associadas ao paciente em quest�o.
                                        </li>
                                    </ul>
                                     -->
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end overview  -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        <div class="row">

                        </div>
                        <div class="row">
                        <form action="analisar" method="post">
                        	<div class="col-xl-12">
                                <div class="section-block">
                                    <h3 class="section-title">Sele��o de Sintomas</h3>
                                    <p>Abaixo, s�o apresentados o conjunto sintomas dispon�veis para a sele��o. Al�m disso, � necess�rio que seja escolhido ao menos 1 sintoma para que o sistema gere algum resultado relevante.</p>
                                </div>
                                <div class="card">
                                    <h4 class="card-header expandir" id="sintomas-card" onclick="expandirSintomas();"><i id="sintomas-icon" class="fas fa-angle-double-down"></i>&nbsp; Sintomas</h4>
                                    <div class="card-body" hidden="true" id="sintomas"> 
                                        	<c:forEach items="${sintomas}" var="sintoma">
                                        		<label class="custom-control custom-checkbox">
                                                	<input type="checkbox" name="sintomasCaso" value="${sintoma.iriSintoma}" class="custom-control-input"><span class="custom-control-label">${sintoma.nomeSintoma}</span>
                                            	</label>
                                        	</c:forEach>
                                    </div>
                                </div>
                           	</div>
                            <div class="col-xl-12">
                                <div class="section-block">
                                    <h3 class="section-title">Informar Tempo dos Sintomas</h3>
                                    <p></p>
                                </div>
                                <div class="card">
                                    <h4 class="card-header">Tempo do sintomas, em meses</h4>
                                    <div class="card-body"> 
										<input id="tempo" name="tempoSintomasCaso" min="0" placeholder="Ex.: 15" max="1080" type="number" class="form-control">					
                                    </div>
                                </div>
                           	</div>   
                           	<input type="text" value="analisar-caso" name="link" hidden readonly="readonly"/>
                            <div class="col-xl-12">
                                <div class="section-block">
                                    <h3 class="section-title">Sele��o de Situa��es</h3>
                                    <p>Abaixo, s�o apresentados o conjunto de situa��es dispon�veis para a sele��o. Assim como a se��o de sintomas, � necess�rio que seja escolhido ao menos 1 situa��o para que o sistema gere algum resultado relevante.</p>
                                </div>
                                <div class="card">
                                    <h4 class="card-header expandir" onclick="expandirSituacoes();" id="situacoes-card"><i id="situacoes-icon" class="fas fa-angle-double-down"></i>&nbsp; Situa��es</h4>
                                    <div class="card-body" hidden="" id="situacoes"> 
                                        <c:forEach items="${situacoes}" var="situacao">
                                        	<label class="custom-control custom-checkbox">
                                                <input type="checkbox" name="situacoesCaso" value="${situacao.iriSituacao}" class="custom-control-input"><span class="custom-control-label">${situacao.nomeSituacao}</span>
                                            </label>
                                        </c:forEach> 
                                    </div>
                                </div>
                           	</div>    
                           	<div class="col-xl-12">
                            	<div class="card">
                                    <div class="card-body"> 
										<input type="submit" value="Realizar An�lise" class="btn btn-success btn-block"/>
                                    </div>
                                </div>
                           </div>
                           </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>