﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="BibliotecaWEB.Consultar_Libros.Index" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consulta</title>
    <link href="style.css"/ rel="stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
       <section class="form-register">
            <h1>Consulta de libros</h1>
           <asp:TextBox ID="txtISBN" runat="server" placeholder="84951" CssClass="controls" ></asp:TextBox>
            <asp:TextBox ID="txtNombre" runat="server" placeholder="El Retorno Del Rey" CssClass="controls" ></asp:TextBox>
            <asp:TextBox ID="txtAutor" runat="server" placeholder="J.R.R Tolkien" CssClass="controls"></asp:TextBox>
             <asp:TextBox ID="txtEditorial" runat="server" placeholder="Universal" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtFechaPublicacion" runat="server" placeholder="02-10-1997" CssClass="controls"></asp:TextBox>
            <asp:DropDownList ID="cbx_estados" runat="server" CssClass="controls" ></asp:DropDownList>
            <asp:TextBox ID="txtCantidadLibros" runat="server" placeholder="500" CssClass="controls"></asp:TextBox>
            <asp:Button ID="btnRegistrar" runat="server" Text="REGISTRAR" CssClass="botons" />
            <a href="#" class="links">Registrar Libros</a>
            <a href="#" class="links">Modificar Libros</a>
        </section>
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