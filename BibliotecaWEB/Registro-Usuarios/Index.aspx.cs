using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWEB.Registro_Usuarios
{
    public partial class Index : System.Web.UI.Page
    {
        RegistrarUsuarios oRegistrarUsuarios = new RegistrarUsuarios();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void fntLimpiar()
        {
            txtNombres.Text = string.Empty;
            txtApellidos.Text = string.Empty;
            txtContacto.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtNombres.Focus();
            lblMensaje.Text = string.Empty;
        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            oRegistrarUsuarios.fntRegistrarUsuarios(txtNombres.Text, txtApellidos.Text, txtContacto.Text, txtDireccion.Text, txtCorreo.Text);
            lblMensaje.Text = oRegistrarUsuarios.GetMensaje();
        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            fntLimpiar();
        }
    }
}