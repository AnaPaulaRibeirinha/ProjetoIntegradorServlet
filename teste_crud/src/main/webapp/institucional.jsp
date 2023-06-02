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

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
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

    <!--1 carousel inst-->
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner carousel-inst">
            <div class="carousel-item active">
                <img src="files/inst1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="files/inst2.png" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="files/inst3.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Próximo</span>
        </button>
    </div>
    <!--0 carousel inst-->

    <!--1 bloco de quebra de linha-->
    <div class="bloco_conteudo">
        <p class="inst-titulo">Quem somos </p>
        <p class="inst-sub">Conheça a história da rede</p>

        <div class="bloco-detalhe-inst">
            <p class="detalhe-inst">A HCC Hotels é uma operadora de hotéis de origem curitibana. Há mais de 20 anos no
                mercado, iniciou sua operação na capital paranaense e após a expansão bem sucedida na capital, passou a
                administrar empreendimentos em outras regiões do Brasil.
                Com o foco em excelência em serviços e performance estratégica de captação de receitas, a HCC Hotels vem
                se destacando no mercado da hotelaria nacional.
        </div>

        <!--quebra de linha-->
        <br>
        <br>
        <br>
        <br>
        <br>

        <div class="container text-center">
            <div class="row">
                <div class="col col_insti">

                    <p>Missão</p>
                    <p class="inst-miss">Servir aos hóspedes com excelência, atuando como especialista em hotelaria e
                        criando valores para os acionistas e para o Brasil</p>
                </div>

                <div class="col col_insti quadro_insti">
                    <p>Visão</p>
                    <p class="inst-vis">Ser referência em hoteleiros na região do litoral</p>
                </div>

                <div class="col col_insti quadro_insti">
                    <p>Valores</p>
                    <p class="inst-val">Resultado: sem ele não há crescimento sustentável
                        Simplicidade: segredo da empresa de sucesso<br>
                        Excelência: amamos o nosso trabalho<br>
                        Desenvolvimento: Busca de processos embasado na ética, missão e valores<br>
                        Ética: presente em todas as nossas ações com o forte desejo de uma sociedade avançada.</p>
                </div>
            </div>
        </div>
    </div>

    <footer id="rodape">
        <img src="files/logo.png" id="icon_rodape">
    </footer>
</body>

</html>