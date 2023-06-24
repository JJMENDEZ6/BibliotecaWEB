using BibliotecaWEB.Logica.Logica_Libros;
using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace BibliotecaWEB.Prestamos
{
    public partial class Prestamos : System.Web.UI.Page
    {
        RegistrarLibros oRegistrarLibros = new RegistrarLibros();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensaje.Visible = false;
        }
        private void fntLimpiar()
        {
            txtISBN.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtAutor.Text = string.Empty;
            txtEditorial.Text = string.Empty;
            txtFechaPublicacion.Text = string.Empty;
            txtCantidadLibros.Text = string.Empty;
            lblMensaje.Text = string.Empty;
            txtISBN.Focus();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            fntLimpiar();
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            oRegistrarLibros.fntRegistrarLibros(txtISBN.Text,txtNombre.Text, txtAutor.Text, txtEditorial.Text, txtFechaPublicacion.Text, Convert.ToInt16(txtCantidadLibros.Text));
            lblMensaje.Text = oRegistrarLibros.GetMensaje();
            lblMensaje.Visible = true;
        }
    }
}