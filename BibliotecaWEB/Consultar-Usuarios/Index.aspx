<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BibliotecaWEB.Consultar_Usuarios.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultar-Editar</title>
    <link href="StyleUQ.css"/ rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="menu container">
                <a class="logo">CONSULTAR-EDITAR USUARIOS</a>
                <label for="menu">
          <img src="image/menu.png" class="menu-icon" alt="" />
        </label>
        <nav class="navbar">
          <ul>
              <li><a href="../Main/Index.aspx">Inicio</a></li>
            <li><a href="../Registro-Usuarios/Index.aspx">Registrar usuarios</a></li>
          </ul>
        </nav>
            </div>
        </header>
        <section class="form-register">
            <h1>CONSULTAR-EDITAR USUARIOS</h1>
            <asp:TextBox ID="txtNombres" runat="server" placeholder="Maria Antonieta" CssClass="controls" ></asp:TextBox>
            <asp:TextBox ID="txtApellidos" runat="server" placeholder="De Las Nieves" CssClass="controls"></asp:TextBox>
             <asp:TextBox ID="txtContacto" runat="server" placeholder="3006566894" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtDireccion" runat="server" placeholder="Malambo" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtCorreo" runat="server" placeholder="Maria@gmail.com" CssClass="controls"></asp:TextBox>
            <asp:DropDownList ID="ddlEstado" runat="server" CssClass="controls" ></asp:DropDownList>
            <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" CssClass="botons" />
            <asp:Button ID="btnConsultar" runat="server" Text="CONSULTAR" CssClass="botons" />
            <asp:Button ID="btnEditar" runat="server" Text="EDITAR" CssClass="botons" />
        </section>
        <br />
        <br />
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
