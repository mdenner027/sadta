<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Casos Hipot�ticos Registrados</title>
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
    <script>
	    function ativaMenu(){
	    	document.getElementById("casos-hipoteticos").classList.add("active");
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
                                    <h2>Resultados Obtidos</h2>
                                    <p class="">
                                    	
                                    </p>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="checkboxradio">
                                <div class="section-block">
                                    <h3 class="section-title"></h3>
                                    <p>A seguir, � apresentado um conjuto de casos <b>hipot�ticos</b> que foram registrados. 
                                    Cada um dos itens apresentados cont�m um c�digo, a data de registro e um bot�o 
                                    que permite acessar mais detalhes sobre o caso.</p>
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
                                <div class="card">
                                    <h4 class="card-header">Casos Hipot�ticos Registrados</h4>
                                    <div class="card-body"> 
                                        <table class="table table-striped text-center">
                                        	<thead >
                                        		<tr>
                                        			<th>C�digo</th>
                                        			<th>Data do Registro</th>
                                        			<th>Detalhes</th>
                                        		</tr>
                                        	</thead>
                                        	<tbody>
                                        		<c:forEach items="${casos}" var="caso">
	                                        		<tr>
	                                        			<td>${caso.codigoCaso}</td>
	                                        			<td>
	                                        				<fmt:formatDate value="${caso.dataRegistroCaso.time}" pattern="dd/MM/yyyy"/>
	                                        			</td>
	                                        			<td>
	                                        				<form action="exibir-caso" method="post">
	                                        					<input type="text" name="codigoCaso" value="${caso.codigoCaso}" hidden="" readonly="readonly"/>
	                                        					<button type="submit" class="btn btn-primary btn-block">
	                                        						<i class="fas fa-arrow-right"></i>
	                                        					</button>
	                                        				</form>
	                                        			</td>
	                                        		</tr>
                                        		</c:forEach>
                                        	</tbody>
                                        </table>
                                    </div>
                                </div>
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