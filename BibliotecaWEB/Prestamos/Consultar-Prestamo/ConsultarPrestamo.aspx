<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarPrestamo.aspx.cs" Inherits="BibliotecaWEB.Prestamos.Consultar_Prestamo.ConsultarPrestamo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Consultar Prestamos</title>
    <link href="StyleCP.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="menu container">
                <a class="logo">CONSULTAR PRESTAMOS</a>
                <label for="menu">
                    <img src="../images/menu.png" class="menu-icon" alt="" />
                </label>
                <nav class="navbar">
                    <ul>
                        <li><a href="../../Main/Index.aspx">INICIO</a></li>
                        <li><a href="../Registrar-Prestamo/Prestamo.aspx">REGISTRAR PRESTAMOS</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <br />
        <section class="form-register">
            <h1>CONSULTAR PRESTAMOS</h1>
            <asp:TextBox ID="txtNumeroPrestamo" runat="server" placeholder="Número del prestamo" CssClass="controls"></asp:TextBox>
            <asp:Button ID="btnNuevo" runat="server" Text="NUEVO" CssClass="botons" />
            <asp:Button ID="btnCrearPrestamo" runat="server" Text="CONSULTAR PRESTAMO" CssClass="botons" />
            <hr />
            <br />  
            <asp:TextBox ID="txtUsuarioID" runat="server" placeholder="Identificación del usuario" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtISBNUsuario" runat="server" placeholder="ISBN del libro" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtCantidad" runat="server" placeholder="Cantidad" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtFechaRegistro" runat="server" placeholder="Fecha de registro" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtFechaEntrega" runat="server" placeholder="Fecha de entrega" CssClass="controls"></asp:TextBox>
            <asp:TextBox ID="txtEstado" runat="server" placeholder="Estado" CssClass="controls"></asp:TextBox>
             <asp:Button ID="btnDevolver" runat="server" Text="REALIZAR DEVOLUCIÓN" CssClass="botons" Width="100%" />
        </section>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <footer class="footer">
            <div class="footer-content container">
                <div class="link">
                    <h3>Centro Nacional Colombo Alemán (Sede Malambo)</h3>
                    <ul>
                        <li>
                            <a
                                href="https://sofiaplus-edu.com/tecnologo-analisis-desarrollo-software/#:~:text=La%20formaci%C3%B3n%20de%20Tecn%C3%B3logo%20en,marcha%20de%20los%20sistemas%20requeridos.">Programa de formación: Analísis y desarrollo de software</a>
                        </li>
                        <li>
                            <a
                                href="https://www.linkedin.com/in/dulfran-antonio-monta%C3%B1o-monta%C3%B1o-6640a7aa">Instructor: Dulfran Montaño</a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/jhaminton.mendez.127">Aprendiz: JJ Mendez</a>
                        </li>
                    </ul>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
