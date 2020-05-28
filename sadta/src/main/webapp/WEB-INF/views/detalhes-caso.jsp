<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Casos Hipotéticos Registrados</title>
    <!-- Bootstrap CSS -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
    <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/libs/css/style.css">
    <script type="text/javascript" charset="ISO-8859-1" src="assets/libs/js/caso.js"></script>
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
            function ativaMenu() {
                document.getElementById("casos-hipoteticos").classList.add("active");
            }
            window.onload = ativaMenu();
        </script>
        <div class="dashboard-wrapper">
            <div class="container-fluid dashboard-content">
            <form action="avaliar" id="formReview" method="post">
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
                            <!-- ============================================================== -->
                            <!-- end overview  -->
                            <!-- ============================================================== -->
                        </div>
                        <!-- ============================================================== -->
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        
                        <div class="row">
                        
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="checkboxradio">
                                
                                <div class="card">
                                    <h4 class="card-header">Dados do Caso Hipotético nº ${caso.codigoCaso}</h4>
                                    
                                    <input type="text" value="${caso.codigoCaso}" name="casoReview.codigoCaso" hidden="" readonly="readonly"/>
                                    <div class="card-body">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="section-block">
                                                <h5 class="section-title">Data do registro:
                                                    <fmt:formatDate value="${caso.dataRegistroCaso.time}"
                                                        pattern="dd/MM/yyyy HH:mm" />
                                                </h5>
                                                <h5 class="section-title">Tempo informado para os sintomas:
                                                    ${caso.tempoSintomasCaso} meses</h5>
                                            </div>
                                            
                                            <div class="simple-card">
                                                <ul class="nav nav-tabs" id="myTab5" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active border-left-0" id="tab1"
                                                            data-toggle="tab" href="#sintomas" role="tab"
                                                            aria-controls="home" aria-selected="true">Sintomas</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" id="tab2" data-toggle="tab"
                                                            href="#situacoes" role="tab" aria-controls="profile"
                                                            aria-selected="false">Situações</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" id="tab3" data-toggle="tab"
                                                            href="#transtornos" role="tab" aria-controls="contact"
                                                            aria-selected="false">Transtornos Inferidos</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" id="tab5" data-toggle="tab"
                                                            href="#comorbidades" role="tab" aria-controls="contact"
                                                            aria-selected="false">Comorbidades Inferidas</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content" id="myTabContent5">
                                                    <div class="tab-pane fade show active" id="sintomas" role="tabpanel"
                                                        aria-labelledby="home-tab-simple">
                                                        <c:import url="sintomas-caso.jsp"></c:import>
                                                    </div>
                                                    <div class="tab-pane fade" id="situacoes" role="tabpanel"
                                                        aria-labelledby="profile-tab-simple">
                                                        <c:import url="situacoes-caso.jsp"></c:import>
                                                    </div>
                                                    <div class="tab-pane fade" id="transtornos" role="tabpanel"
                                                        aria-labelledby="profile-tab-simple">
                                                        <c:import url="transtornos-caso.jsp"></c:import>
                                                    </div>
                                                    <div class="tab-pane fade" id="comorbidades" role="tabpanel"
                                                        aria-labelledby="contact-tab-simple">
                                                        <c:import url="comorbidades-caso.jsp"></c:import>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div  class="card-body" >
                                        <div hidden="" class="form-group" id="comment">
                                            <label for="comentarios">Comentários</label>
                                            <textarea id="comentarios" name="comentarioReview" class="form-control"  placeholder="(opcional)"
                                                rows="3"></textarea>
                                        </div>
                                    </div>
                                 
                                </div>
                            </div>
                        </div>
                    
                    	<div class="row">
							<div class="col-md-6">
								<a href="casos-hipoteticos-registrados" class="btn btn-rounded btn-secondary btn-block">Voltar</a>
							</div>
							<div class="col-md-6">
								<button id="bt-analise" onclick="avaliarCaso();" class="btn btn-primary btn-block btn-rounded" type="button">
									Avaliar
								</button>
								<button hidden="" id="confirmar" class="btn btn-success btn-block btn-rounded" type="submit">
									Confirmar Avaliação
								</button>
							</div>
							
                        </div>
                    </div>
                </div>
                </form>
            </div>  
        </div>
    </div>

</body>

</html>