<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="com.teste_crud.dao.UsuarioDao,com.teste_crud.bean.*, java.util.*" %>
<%@ taglig uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Vista Bella Mar</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="shortcut icon" href="files/icon.png">

    <link rel="stylesheet" type="text/css" href="css/app.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <script>

        function login(caso) {

            if (caso === 0) {
                document.getElementById("prancheta_registro").style.display = "Block"
                document.getElementById("prancheta_login").style.display = "None"
            } else {
                document.getElementById("prancheta_registro").style.display = "None"
                document.getElementById("prancheta_login").style.display = "Block"
            }
        }
    </script>
</head>

<body>

<!--1 Navbar-->
    <nav class="navbar navbar-expand-lg navbar_topo navbar_color custom">
      <div class="container-fluid">
      <a  href="index.html">
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
              <a class="nav-link active hoverable" aria-current="page" href="Quartos.html"> Quartos</a>
            </li>
            <li class="nav-item">
              <a class="nav-link hoverable" href="index.html#institucional"> Institucional</a>
            </li>
            <li class="nav-item">
              <a class="nav-link hoverable" href="login-register.html"> Entrar</a>
            </li>
            <li class="nav-item">
              <a class="nav-link hoverable" href="index.html#rodape"> Informações</a>
            </li>
            <li class="nav-item">
              <a class="nav-link hoverable" href="index.html#contato"> Contato</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle hoverable" href="#" id="navbarDropdownMenuLink" role="button"
                data-bs-toggle="dropdown" aria-expanded="false">Nossos serviços</a>
              <ul class="dropdown-menu navbar_color" aria-labelledby="navbarDropdownMenuLink">
                <!--<li><a class="dropdown-item" href="Eventos.html">Eventos</a></li>-->
                <li><a class="dropdown-item" href="Restaurantes.html">Restaurantes</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!--0 navbar-->

    <div id="fundo_login"></div>

    <div class="tela-login">
        <div id="prancheta_login">
            <h1>Vista bella mar</h1>
            <div class="caixa-login">
                <form>
                    <div class="mb-3">
                        <label for="inputEmail" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="inputPassword" class="form-label">Senha</label>
                        <input type="password" class="form-control" id="inputPassword">
                    </div>

                    <br>

                    <a class="btn btn-primary" onclick="login(0)">Registrar</a>
                    <button type="submit" class="btn btn-success">Logar</button>
                </form>
            </div>
        </div>

        <div id="prancheta_registro">
            <h1>Vista bella mar</h1>
            <div class="caixa-login">
                <form>
                    <div class="mb-3">
                        <label for="inputEmail" class="form-label">E-mail</label>
                        <input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">
                        <label for="inputEmail2" class="form-label">Confirmar e-mail</label>
                        <input type="email" class="form-control" id="inputEmail2" aria-describedby="emailHelp">
                    </div>

                    <div class="mb-3">
                        <label for="inputPassword" class="form-label">Senha</label>
                        <input type="password" class="form-control" id="inputPassword" maxlength="32">
                    </div>

                    <div class="mb-3">
                        <label for="inputPassword2" class="form-label">Confirmar Senha</label>
                        <input type="password" class="form-control" id="inputPassword2" maxlength="32">
                    </div>

                    <div class="mb-3">
                        <label for="inputTelefone" class="form-label">Numero para contato</label>
                        <input type="tel" class="form-control" placeholder="(DDD) 0000-00000" id="inputTelefone">
                    </div>

                    <div class="mb-3">
                        <label for="inputEndereco" class="form-label">Endereço</label>
                        <input type="text" class="form-control" id="inputEndereco">
                    </div>

                    <div class="mb-3">
                        <label for="inputCEP" class="form-label">CEP</label>
                        <input type="text" class="form-control" id="inputCEP" maxlength="10"
                            pattern="[0-9]{2}.[0-9]{3}-[0-9]{3}" placeholder="00.000-000">
                    </div>

                    <br>

                    <a class="btn btn-primary" onclick="login(1)">Logar</a>
                    <button type="submit" class="btn btn-success">Registrar</button>
                </form>
            </div>
        </div>
    </div>

    <footer id="rodape">
        <img src="files/logo.png" id="icon_rodape">
    </footer>
</body>
</html>