<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.UsuarioDao" %>
<%@ page import="model.Usuario" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.ReservaQuartoDao" %>
<%@ page import="model.ReservaQuarto" %>
<%@ page import="model.Quarto" %>
<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="utf-8">
    <title>Vista Bella Mar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="files/icon.png">

    <link rel="stylesheet" type="text/css" href="css/app.css" />
    <link rel="stylesheet" type="text/css" href="css/pagamento-pos-reserva.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />

    <!--1 css bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!--0 css bootstrap-->

    <!--1 js bootstrap-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <!--0 js bootstrap-->

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar_topo navbar_color custom">
    <div class="container-fluid">
    <a  href="index.jsp">
      <img src="files/logo.png"  height="36">
    </a>
      <!--<li><a href="index.html"><img src="files/logo.png" id="titulo_hotel_carousel"></a></li>-->
      <!--<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon">#</span>
      </button>-->
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link active hoverable" aria-current="page" href="quartos.jsp"> Quartos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link hoverable" href="institucional.jsp"> Institucional</a>
          </li>
          <li class="nav-item">
            <a class="nav-link hoverable" href="login.jsp"> Entrar</a>
          </li>
          <li class="nav-item">
            <a class="nav-link hoverable" href="index.jsp"> Informações</a>
          </li>
          <li class="nav-item">
            <a class="nav-link hoverable" href="contatos.jsp"> Contato</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle hoverable" href="#" id="navbarDropdownMenuLink" role="button"
              data-bs-toggle="dropdown" aria-expanded="false">Nossos serviços</a>
            <ul class="dropdown-menu navbar_color" aria-labelledby="navbarDropdownMenuLink">
              <!--<li><a class="dropdown-item" href="Eventos.html">Eventos</a></li>-->
              <li><a class="dropdown-item" href="restaurantes.jsp">Restaurantes</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>

    <div id="fundo_login"></div>

    <div id="prancheta_pagamento">
        <h1>Realizar reserva</h1>
        <div class="caixa-login">
            <form id="area_pagamento" action="ServletHotel" method="post">
                <div class="mb-3">
                    <label for="inputNome" class="form-label">Email</label>
                    <input type="text" class="form-control" id="inputNome" required maxlength="50"
                        placeholder="Email" name="txtEmailReserva">
                </div>

                    <div class="mb-3">
                    
					
					<c:forEach var="quarto" items="${listaQuartos}">
						<c:choose> 
						
						  <c:when test="${quarto.qtdQuarto == 0}">
						  
							<label> INDISPONÍVEL - <c:out value="${quarto.dsQuarto}"> </c:out> - </label>
						    <label> Quantidade disponível: <c:out value="${quarto.qtdQuarto}"> </c:out> </label>
						  	
						  </c:when>
						  
						  <c:otherwise>
						  	<input type="radio" name="txtQuartoReserva" value="${quarto.idQuarto}">
						  	<label> <c:out value="${quarto.dsQuarto}"> </c:out> - </label>
						  	<label> Quantidade disponível: <c:out value="${quarto.qtdQuarto}"> </c:out> </label>
						  </c:otherwise>
						  
						  

						</c:choose>
						<br>
					</c:forEach>
						  
					
					
					
                

                <button type="submit" class="btn btn-success" name="btnOption" value="enviaReserva">Efetuar Reserva</button>

                <a href="#" target="_blank" class="pag-pix">
                    <img id="logo_pix" src="files/pagamento-pix.jpg" alt="pix">
                </a>
            </form>
        </div>
    </div>
</body>

</html>