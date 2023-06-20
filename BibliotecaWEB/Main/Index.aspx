<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BibliotecaWEB.Main.Index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Biblioteca Nacional</title>
    <link rel="stylesheet" href="Styles.css" type="text/css" />
    <link rel="icon" href="images/libros-icon32px.png" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
      <div class="menu container">
        <a class="logo">ADSO-07</a>
        <input type="checkbox" id="menu" />
        <label for="menu">
          <img src="./images/menu.png" class="menu-icon" alt="" />
        </label>
        <nav class="navbar">
          <ul>
            <li><a href="#">Registro de libros</a></li>
            <li><a href="#">Registro de usuarios</a></li>
            <li><a href="#">Prestamos</a></li>
          </ul>
        </nav>
      </div>
      <div class="header-content container">
        <h1>Biblioteca Nacional</h1>
        <p>
          Somos una entidad encargada de preservar y catalogar el patrimonio
          bibliográfico y documental del mundo de la literatura para ponerlo al
          servicio de investigadores, académicos y del público en general. En la
          Biblioteca Nacional podrás encontrar material sobre cualquier tema o
          autor. Somos el centro de conservación de todo lo que se publica en el
          país y el mundo.
        </p>
      </div>
    </header>
    <footer class="footer">
      <div class="footer-content container">
        <div class="link">
          <h3>Centro Nacional Colombo Alemán (Sede Malambo)</h3>
          <ul>
            <li>
              <a
                href="https://sofiaplus-edu.com/tecnologo-analisis-desarrollo-software/#:~:text=La%20formaci%C3%B3n%20de%20Tecn%C3%B3logo%20en,marcha%20de%20los%20sistemas%20requeridos."
                >Programa de formación: Analísis y desarrollo de software</a
              >
            </li>
            <li>
              <a
                href="https://www.linkedin.com/in/dulfran-antonio-monta%C3%B1o-monta%C3%B1o-6640a7aa"
                >Instructor: Dulfran Montaño</a
              >
            </li>
            <li>
              <a href="https://www.facebook.com/jhaminton.mendez.127"
                >Aprendiz: JJ Mendez</a
              >
            </li>
          </ul>
        </div>
      </div>
    </footer>
    </form>
</body>
</html>
