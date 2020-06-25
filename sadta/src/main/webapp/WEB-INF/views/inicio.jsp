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
                  <div class="page-section" id="overview">
                     <!-- ============================================================== -->
                     <!-- overview  -->
                     <!-- ============================================================== -->
                     <div class="row">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                           <!-- <h2 class="page-header">Introdução</h2>-->
                           <div class="card">
                              <div class="card-body">
                                 <h2 class="card-title border-bottom pb-2">Sobre o sistema</h2>
                                 <h3 class="card-text">O que é o SADTA</h3>
                                 <p class="card-text">
                                    O Sistema de Apoio ao Diagnóstico de Transtornos de Ansiedade (SADTA) trata-se de um sistema de apoio à decisão clínico, 
                                    o qual tem como finalidade auxiliar profissionais da área da saúde mental no processo de diagnóstico de 
                                    distúrbios mentais, com ênfase nos transtornos de ansiedade.
                                 </p>
                                 <br/>
                                 <h3 class="card-text">Como Funciona</h3>
                                 <p class="card-text">
                                    Para realizar uma análise, é necessário informar o conjunto de indicadores relacionados ao indivídio. Dessa forma, os 
                                    indicadores que devem ser informados para a realização da análise são:
                                 </p>
                                 <ul>
                                    <li>Sintomas: se refere ao próprio conjunto de sintomas que o indivíduo vem percebendo em seu cotidiano.</li>
                                    <li>Tempo dos sintomas: se refere ao tempo, em meses, no qual o indivíduo começou a notar a presença dos sintomas.</li>
                                    <li>Situações: se refere ao conjunto de situções específicas, nas quais os indicadores sintomáticos tornam-se perceptíveis ao indivíduo.</li>
                                 </ul>
                                 <br/>
                                 <p class="card-text">
                                    Ao final, irá aparecer a opção para analisar os dados informados, com base nos critérios de diagnóstico presentes no DSM-5. Contudo, apesar de existir uma grande variedade de transtornos de ansiedade, o presente sistema 
                                    irá se ater a apenas aos seguintes transtornos:
                                 </p>
                                 <ul>
                                    <li>Transtorno de Ansiedade Generalizada (TAG)</li>
                                    <li>Transtorno de Ansiedade Social</li>
                                    <li>Transtorno de Estresse Pós-Traumático (TEPT)</li>
                                    <li>Transtorno de Fobia Específica</li>
                                    <li>Transtorno de Pânico</li>
                                    <li>Transtorno Obsessivo-Compulsivo (TOC)</li>
                                 </ul>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-xl-12">
                                 <div class="card">
                                    <div class="card-body"> 
                                    <a href="analisar-caso">
                                       <button class="btn btn-success btn-block" type="button">
                                       		Iniciar Análise
                                       </button>
                                     </a>  
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <p class="">
                              <!-- Dessa forma, a ferramenta é consituída das seguintes etapas: -->
                           </p>
                           <!-- 
                              <ul class="list-unstyled arrow">
                                  <li>
                                  1 - Selecionar sintomas: primeiramente, é preciso selecionar todos os sintomas
                                  correspondes ao paciente.
                                  </li>
                                  <li>
                                  2 - Informar o tempo dos sintomas: após selecionar os sintomas, é necessário nessa etapa
                                  que seja informado quanto tempo, em meses, em que o paciente vem percebendo os sintomas em seu cotidiano.
                                  </li>
                                  <li>
                                  3 - Selecionar as situações: consiste em selecionar as principais situações nas quais 
                                  os indicadores sintomáticos tornam-se perceptíveis para o paciente.
                                  </li>
                                  <li>
                                  4 - Ao clicar em "Analisar Dados", você será direcionado para outrá página, onde esta
                                  apresenta um conjunto de possíveis transtornos e comorbidades que podem estar associadas ao paciente em questão.
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
               </div>
            </div>
         </div>
      </div>
   </body>
</html>