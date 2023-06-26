using BibliotecaWEB.Actualizar_Libros;
using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWEB.Consultar_Libros
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarEstados();
        }
        public void CargarEstados()
        {
            EstadosLibrosSQL objCargarEstados = new EstadosLibrosSQL();
            objCargarEstados.FntConsultarEstados();
            ddlEstados.DataSource = objCargarEstados.GetEstados();
            ddlEstados.DataTextField = "Nombre";
            ddlEstados.DataValueField = "PK_CODIGO";
            ddlEstados.DataBind();
        }
        #region Funciones
        void fntLimpiar()
        {
            txtISBN.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtAutor.Text = string.Empty;
            txtEditorial.Text = string.Empty;
            txtFechaPublicacion.Text = string.Empty;
            ddlEstados.SelectedIndex = 0;
            txtCantidadLibros.Text = string.Empty;
            lblMensaje.Text = string.Empty;
            txtISBN.Focus();
        }
        private void fntConsultarLibros(string isbn)
        {
            ConsultarLibros oConsultarLibros = new ConsultarLibros();
            oConsultarLibros.fntConsultar(isbn);
            txtNombre.Text = oConsultarLibros.GetNombre();
            txtAutor.Text = oConsultarLibros.GetAutor();
            txtEditorial.Text = oConsultarLibros.GetEditorial();
            txtFechaPublicacion.Text = oConsultarLibros.GetFecha();
            ddlEstados.SelectedValue = Convert.ToString(oConsultarLibros.GetEstado());
            txtCantidadLibros.Text = Convert.ToString(oConsultarLibros.GetCantidad());
            lblMensaje.Text = oConsultarLibros.GetMensaje();
        }
        private void fntActualizarLibro()
        {
            ActualizarLibros oActualizarLibro = new ActualizarLibros();
            oActualizarLibro.fntActualizarLibros(txtISBN.Text,txtNombre.Text,txtAutor.Text,txtEditorial.Text,txtFechaPublicacion.Text,Convert.ToString(ddlEstados.SelectedIndex),Convert.ToInt16(txtCantidadLibros.Text));
            lblMensaje.Text = oActualizarLibro.GetMensaje() ;
        }
        #endregion
        #region Eventos click de los botones
        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            fntConsultarLibros(txtISBN.Text);
        }
        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            fntLimpiar();
        }
        #endregion

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            fntActualizarLibro();
        }
    }
}