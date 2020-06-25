<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Análise de dados</title>
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
                        <!-- ============================================================== -->
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        <div class="row">
                        <form name="formulario" method="post">
                        	<div class="col-xl-12">
                                <div class="section-block">
                                    <h3 class="section-title">Seleção de Sintomas</h3>
                                    <p>Abaixo, são apresentados o conjunto sintomas disponíveis para a seleção. Além disso, é necessário que seja escolhido ao menos 1 sintoma para que o sistema gere algum resultado relevante.</p>
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
                                    <h4 class="card-header">Tempo dos sintomas, em meses</h4>
                                    <div class="card-body"> 
										<input id="tempo-sintomas" name="tempoSintomasCaso" min="0" placeholder="Ex.: 15" max="1080" type="number" class="form-control">	
										<div class="invalid-feedback" id="tempo-validation">
                                                Ops! O tempo informado para os sintomas não é válido. Por favor, insira um valor numérico.
                                        </div>				
                                    </div>
                                </div>
                           	</div>   
                           	<input type="text" value="analisar-caso" name="link" hidden readonly="readonly"/>
                            <div class="col-xl-12">
                                <div class="section-block">
                                    <h3 class="section-title">Seleção de Situações</h3>
                                    <p>Abaixo, são apresentados o conjunto de situações disponíveis para a seleção. Assim como a seção de sintomas, é necessário que seja escolhido ao menos 1 situação para que o sistema gere algum resultado relevante.</p>
                                </div>
                                <div class="card">
                                    <h4 class="card-header expandir" onclick="expandirSituacoes();" id="situacoes-card"><i id="situacoes-icon" class="fas fa-angle-double-down"></i>&nbsp; Situações</h4>
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
                                    <button class="btn btn-success btn-block" type="button" onclick="validaCaso();">
                                    	Realizar Análise
                                    </button>
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