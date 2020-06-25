<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Resultados Obtidos</title>
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
                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="checkboxradio">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                           <h2>Resultados Obtidos</h2>
                           <p class="">
                           </p>
                        </div>
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12" id="checkboxradio">
                           <div class="section-block">
                              <h3 class="section-title"></h3>
                              <p>A seguir, é apresentado um conjuto de transtornos e outro de comorbidades que possam 
                                 estar associadas ao paciente. É importante salientar que esses resultados apenas apresentam 
                                 um conjunto de opções disponíveis, as quais podem, ou não, serem consideradas pelo especialista.
                              </p>
                           </div>
                        </div>
                        <div class="card">
                           <div class="card-body">
                              <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                 <div class="section-block">
                                    <h5 class="section-title">Tempo informado para os sintomas:
                                       ${caso.tempoSintomasCaso} meses
                                    </h5>
                                 </div>
                                 <div class="simple-card">
                                    <ul class="nav nav-tabs" id="myTab5" role="tablist">
                                       <li class="nav-item">
                                          <a class="nav-link border-left-0" id="tab1"
                                             data-toggle="tab" href="#sintomas" role="tab"
                                             aria-controls="home" aria-selected="true">Sintomas</a>
                                       </li>
                                       <li class="nav-item">
                                          <a class="nav-link" id="tab2" data-toggle="tab"
                                             href="#situacoes" role="tab" aria-controls="profile"
                                             aria-selected="false">Situações</a>
                                       </li>
                                       <li class="nav-item">
                                          <a class="nav-link active show" id="tab3" data-toggle="tab"
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
                                       <div class="tab-pane fade" id="sintomas" role="tabpanel"
                                          aria-labelledby="home-tab-simple">
                                          <c:import url="sintomas-caso.jsp"></c:import>
                                       </div>
                                       <div class="tab-pane fade" id="situacoes" role="tabpanel"
                                          aria-labelledby="profile-tab-simple">
                                          <c:import url="situacoes-caso.jsp"></c:import>
                                       </div>
                                       <div class="tab-pane fade active show" id="transtornos" role="tabpanel"
                                          aria-labelledby="profile-tab-simple active">
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
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-12">
                     <div class="card">
                        <div class="card-body"> 
                           <a href="analisar-caso">
                           <button class="btn btn-primary btn-block" type="button">
                           		Realizar Nova Análise
                           </button>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </body>
</html>