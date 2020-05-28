<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Concept - Bootstrap 4 Admin Dashboard Template</title>
    <!-- Bootstrap CSS -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <script type="text/javascript" src="assets/libs/js/caso.js"></script>
    <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" href="assets/vendor/inputmask/css/inputmask.css">
</head>

<body>
    <!-- ============================================================== -->
    <!-- main wrapper -->
    <!-- ============================================================== -->
    <div class="dashboard-main-wrapper">
    <c:import url="header.jsp"></c:import>
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
                                    <h2>Resultados Obtidos</h2>
                                    <p class="">
                                    	
                                    </p>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="checkboxradio">
                                <div class="section-block">
                                    <h3 class="section-title"></h3>
                                    <p>A seguir, � apresentado um conjuto de transtornos e outro de comorbidades que possam 
                                    	estar associadas ao paciente. � importante salientar que esses resultados apenas apresentam 
                                    	um conjunto de op��es dispon�veis, as quais podem ou n�o serem consideradas pelo especialista.</p>
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
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="checkboxradio">
                            <form action="salvar-caso-teste" method="post">
                                <div class="card">
                                    <h4 class="card-header">Transtornos Inferidos</h4>
                                    <div class="card-body"> 
                                        <table class="table table-striped">
                                        	<thead></thead>
                                        	<tbody>
                                        		<c:forEach items="${transtornos}" var="transtorno">
	                                        		<tr>
	                                        			<td>${transtorno.nomeTipoPaciente}</td>
	                                        			<td hidden=""><input type="text" name="codigoTipoPaciente" value="${transtorno.codigoTipoPaciente}" readonly="readonly" hidden=""/></td>
	                                        		</tr>
                                        		</c:forEach>
                                        	</tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="card">
                                    <h4 class="card-header">Comorbidades Inferidas</h4>
                                    <div class="card-body"> 
                                        <table class="table table-striped">
                                        	<thead></thead>
                                        	<tbody>
                                        		<c:forEach items="${comorbidades}" var="comorbidade">
	                                        		<tr>
	                                        			<td>${comorbidade.nomeComorbidade}</td>
	                                        			<td hidden=""><input name="codigoComorbidade" type="text" value="${comorbidade.codigoComorbidade}" readonly="readonly" hidden=""/></td>
	                                        		</tr>
                                        		</c:forEach>
                                        	</tbody>
                                        </table>
                                    </div>
                                </div>
                                <div hidden="">
                                	<c:forEach items="${sintomas}" var="sintoma">
                                        <input type="number" name="sintomas" readonly="readonly" value="${sintoma.codigoSintoma}" hidden="" class="custom-control-input"/>
                                    </c:forEach>
                                    <c:forEach items="${situacoes}" var="situacao">
                                        <input type="number" name="codigoSituacao" readonly="readonly" value="${situacao.codigoSituacao}" hidden="" class="custom-control-input"/>
                                    </c:forEach>
                                    <input type="number" value="${tempo}" name="tempoSintomasCaso" readonly="readonly" hidden=""/>
                                </div>
                                
                                <div class="card">
                                    <div class="card-body"> 
                                    	<button class="btn btn-success btn-block">Salvar Caso Hipot�tico</button>
										<a href="${link}" class="btn btn-primary btn-block">Voltar</a>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>