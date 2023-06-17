<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestamos.aspx.cs" Inherits="BibliotecaWEB.Prestamos.Prestamos" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LIBROS</title>
    <link href="Styles.css"/ rel="stylesheet" type="text/css"/>
</head>
<body>
    <h1 class="title">REGISTRO DE LIBROS</h1>
    <form id="form1" runat="server">
        <div class="formContainer">
            <div class="boxContainer">
                <asp:Label ID="lblNombreLibro" runat="server" Text="Nombre Del Libro"></asp:Label>
                <br />
            <asp:TextBox ID="txtNombre" runat="server" placeholder="El Retorno Del Rey" CssClass="textBoxForm"></asp:TextBox>
                <br />
            <asp:Label ID="lblAutor" runat="server" Text="Autor Del Libro"></asp:Label>
                <br />
            <asp:TextBox ID="txtAutor" runat="server" placeholder="J.R.R Tolkien" CssClass="textBoxForm"></asp:TextBox>
                <br />
            <asp:Label ID="lblEditorial" runat="server" Text="Editorial Del Libro"></asp:Label>
                <br />
            <asp:TextBox ID="txtEditorial" runat="server" placeholder="Universal" CssClass="textBoxForm"></asp:TextBox>
                <br />
            <asp:Label ID="lblFecha" runat="server" Text="Fecha De Publicación"></asp:Label>
                <br />
            <asp:TextBox ID="txtFechaPublicacion" runat="server" placeholder="02-10-1997" CssClass="textBoxForm"></asp:TextBox>
                <br />
            <asp:Label ID="lblEstado" runat="server" Text="Estado"></asp:Label>
                <br />
                <asp:DropDownList ID="cbx_estados" runat="server"></asp:DropDownList>
                <br />
            <asp:Label ID="lblCantidad" runat="server" Text="Cantidad De Libros"></asp:Label>
                <br />
            <asp:TextBox ID="txtCantidadLibros" runat="server" placeholder="500" CssClass="textBoxForm"></asp:TextBox>
                <br />
            </div>
    </div>
    </form>
</body>
</html>
