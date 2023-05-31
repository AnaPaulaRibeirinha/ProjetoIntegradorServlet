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
    <link rel="stylesheet" type="text/css" href="css/quartos.css" />
    <link rel="stylesheet" type="text/css" href="css/pagamento-pos-reserva.css" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
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

    <div class="lista_quartos">
        <p class="inst-titulo">Reserva de quarto</p>

        <div id="1" class="lista_quartos">
            <div>
                <h1>Quarto Solteiro Standard</h1>
                <p>Quarto para uma pessoa com serviços básicos.</p>

                <img width="30%" src="files/q5.jpeg" >
            </div>
            <div id="checkin-out">
            <label>Data de Entrada:<input type="date"></label>
            <label>Data de Saída:<input type="date"> </label>
        </div>
            <div class="detalhes_quarto">
                
                <p id="resumo_quarto">
                    O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
                    design e da
                    <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
                    cultural
                    <br>de São Paulo, a Avenida Paulista.
                    <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
                    <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
                    lobby,
                    <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
                </p>
                <p class="valor_quarto">R$299,00</p>

                

                <p id="estatisticas_quarto">
                    🚹Capacidade: 1 Pessoa<br>
                    ♿Acessível? Não<br>
                    🚭Fumantes? Sim
                </p>

                <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
            </div>
        </div>
    </div>
    <div id="2" class="lista_quartos">
        <div>
            <h1>Quarto Solteiro Master</h1>
            <p>Quarto para uma pessoa com serviços e qualidade executiva.</p>

            <img width="30%" src="files/q5.jpeg" >
        </div>
        <div id="checkin-out">
        <label>Data de Entrada:<input type="date"></label>
        <label>Data de Saída:<input type="date">
    </div>
        <div class="detalhes_quarto">
            
            <p id="resumo_quarto">
                O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
                design e da
                <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
                cultural
                <br>de São Paulo, a Avenida Paulista.
                <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
                <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
                lobby,
                <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
            </p>
            <p class="valor_quarto">R$399,00</p>
            <p id="estatisticas_quarto">
                🚹Capacidade: 1 Pessoa<br>
                ♿Acessível? Não<br>
                🚭Fumantes? Sim
            </p>
            <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
        </div>
    </div>
    <div id="3" class="lista_quartos">
        <div>
            <h1>Quarto Solteiro Deluxe</h1>
            <p>Quarto para uma pessoa com serviços e qualidade de luxo.</p>

            <img width="30%" src="files/q5.jpeg" >
        </div>
        <div id="checkin-out">
        <label>Data de Entrada:<input type="date"></label>
        <label>Data de Saída:<input type="date">
    </div>
        <div class="detalhes_quarto">
            
            <p id="resumo_quarto">
                O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
                design e da
                <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
                cultural
                <br>de São Paulo, a Avenida Paulista.
                <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
                <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
                lobby,
                <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
            </p>
            <p class="valor_quarto">R$499,00</p>
            <p id="estatisticas_quarto">
                🚹Capacidade: 1 Pessoa<br>
                ♿Acessível? Não<br>
                🚭Fumantes? Sim
            </p>

            <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
        </div>
    </div>
    <div id="4" class="lista_quartos">
        <div>
            <h1>Quarto de Casal Standard</h1>
            <p>Quarto para um casal com serviços básicos.</p>

            <img width="30%" src="files/q5.jpeg" >
        </div>
        <div id="checkin-out">
        <label>Data de Entrada:<input type="date"></label>
        <label>Data de Saída:<input type="date">
    </div>
        <div class="detalhes_quarto">
            
            <p id="resumo_quarto">
                O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
                design e da
                <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
                cultural
                <br>de São Paulo, a Avenida Paulista.
                <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
                <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
                lobby,
                <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
            </p>
            <p class="valor_quarto">R$299,00</p>

            

            <p id="estatisticas_quarto">
                🚹Capacidade: 1 Pessoa<br>
                ♿Acessível? Não<br>
                🚭Fumantes? Sim
            </p>

            <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
        </div>
    </div>
</div>
<div id="5" class="lista_quartos">
    <div>
        <h1>Quarto de Casal Master</h1>
        <p>Quarto para um Casal com serviços e qualidade executiva.</p>

        <img width="30%" src="files/q5.jpeg" >
    </div>
    <div id="checkin-out">
    <label>Data de Entrada:<input type="date"></label>
    <label>Data de Saída:<input type="date">
</div>
    <div class="detalhes_quarto">
        
        <p id="resumo_quarto">
            O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
            design e da
            <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
            cultural
            <br>de São Paulo, a Avenida Paulista.
            <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
            <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
            lobby,
            <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
        </p>
        <p class="valor_quarto">R$399,00</p>
        <p id="estatisticas_quarto">
            🚹Capacidade: 1 Pessoa<br>
            ♿Acessível? Não<br>
            🚭Fumantes? Sim
        </p>
        <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
    </div>
</div>
<div id="6" class="bloco_conteudo_quarto">
    <div>
        <h1>Quarto de Casal Deluxe</h1>
        <p>Quarto para um casal com serviços e qualidade de luxo.</p>

        <img width="30%" src="files/q5.jpeg" >
    </div>
    <div id="checkin-out">
    <label>Data de Entrada:<input type="date"></label>
    <label>Data de Saída:<input type="date">
</div>
    <div class="detalhes_quarto">
        
        <p id="resumo_quarto">
            O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
            design e da
            <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
            cultural
            <br>de São Paulo, a Avenida Paulista.
            <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
            <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
            lobby,
            <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
        </p>
        <p class="valor_quarto">R$499,00</p>
        <p id="estatisticas_quarto">
            🚹Capacidade: 1 Pessoa<br>
            ♿Acessível? Não<br>
            🚭Fumantes? Sim
        </p>

        <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
    </div>
</div>
<div id="1" class="lista_quartos">
    <div>
        <h1>Quarto Solteiro Standard</h1>
        <p>Quarto para uma pessoa com serviços básicos.</p>

        <img width="30%" src="files/q5.jpeg" >
    </div>
    <div id="checkin-out">
    <label>Data de Entrada:<input type="date"></label>
    <label>Data de Saída:<input type="date">
</div>
    <div class="detalhes_quarto">
        
        <p id="resumo_quarto">
            O Vista Bella Mar Hotel traz os conceitos de tranquilidade e bem-estar em conjunto com o melhor do
            design e da
            <br>arquitetura para o equilíbrio completo da sua estadia em meio ao principal ícone econômico e
            cultural
            <br>de São Paulo, a Avenida Paulista.
            <br>O Refúgio que você precisa para viver as sensações e experiências da vida.
            <br>O Vista Bella Mar conta com uma biblioteca e serviço de chás, restaurante Primo Piano no
            lobby,
            <br>rooftop com piscina, SPA e Fitness Center, além de um belíssimo jardim vertical.
        </p>
        <p class="valor_quarto">R$299,00</p>

        

        <p id="estatisticas_quarto">
            🚹Capacidade: 1 Pessoa<br>
            ♿Acessível? Não<br>
            🚭Fumantes? Sim
        </p>

        <a class="btn btn-success" href="pagamento-pos-reserva.jsp">Reservar</a>
    </div>
</div>

</div>

    <footer id="rodape">
        <img src="files/logo.png" id="icon_rodape">
    </footer>
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

<script>
    (() => {
        const url = window.location.href.split("=")[1]

        if (url == 4)
            document.getElementById("img_quarto").src = `/files/q${url}.jpg`
        else
            document.getElementById("img_quarto").src = `/files/q${url}.jpeg`
    })()
</script>
</html>