<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.UsuarioDao" %>
<%@ page import="model.Usuario" %>
<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="utf-8">
    <title>Vista Bella Mar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="files/icon.png">

    <link rel="stylesheet" type="text/css" href="css/app.css" />
    <link rel="stylesheet" type="text/css" href="css/eventos.css" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
</head>

<body>
    <!--1 Navbar-->
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
    <!--0 navbar-->
    <div id="filtro_fundo_contato"></div>

    <!--1 slider eventos-->
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="z-index: -1 !important;">
        <div class="carousel-inner carousel-contato">
            <div class="carousel-item active">
                <img src="files/ev1.jpg" class="d-block w-100" alt="ev1">
            </div>
            <div class="carousel-item">
                <img src="files/q1.jpeg" class="d-block w-100" alt="q1">
            </div>
            <div class="carousel-item">
                <img src="files/ev2.jpg" class="d-block w-100" alt="ev2">
            </div>
            <div class="carousel-item">
                <img src="files/q4.jpg" class="d-block w-100" alt="q4">
            </div>
            <div class="carousel-item">
                <img src="files/ev3.jpg" class="d-block w-100" alt="ev3">
            </div>
            <div class="carousel-item">
                <img src="files/q5.jpeg" class="d-block w-100" alt="q5">
            </div>
        </div>
    </div>

    <div class="bloco_conteudo bloco_contato_form">
        <p class="titulo">Fale Conosco 📱</p>
        <p class="subtitulo">Entre em contato conosco pelo formulário abaixo</p>

        <div id="formulario_contato_form">
            <form class="row col-md-6 container formulario_contato_form" action="ServletHotel" method="post">
                <div class="col-md-6">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input type="email" class="form-control" required id="inputEmail" name="txtEmailContato">
                </div>

                <div class="col-md-6">
                    <label for="inputTelefone" class="form-label">Telefone</label>
                    <input type="text" class="form-control" required id="inputTelefone" name="txtTelefoneContato">
                </div>

                <div class="col-md-6">
                    <label for="inputName" class="form-label">Nome</label>
                    <input type="text" class="form-control" required id="inputName" name="txtNomeContato">
                </div>

                <div class="col-md-6">
                    <label for="inputSobrenome" class="form-label">Sobrenome</label>
                    <input type="text" class="form-control" required id="inputSobrenome" name="txtSobreNomeContato">
                </div>

                <div class="col-12">
                    <label for="inputObservacao" class="form-label">Sua observação!</label>
                    <textarea class="form-control" id="inputObservacao" required rows="10"
                        placeholder="Escreva algo aqui para nos enviar!" name="txtObservacaoContato"></textarea>
                </div>

                <div class="d-grid button_enviar_contato">
                    <button class="btn btn-success" type="submit" name="btnOption" value="enviaContato">Enviar</button>
                </div>
            </form>
        </div>
    </div>

    <footer id="rodape">
        <img src="files/logo.png" id="icon_rodape">
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>