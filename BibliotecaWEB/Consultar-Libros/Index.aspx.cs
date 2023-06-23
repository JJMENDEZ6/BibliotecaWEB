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
            EstadosLibros objCargarEstados = new EstadosLibros();
            objCargarEstados.FntConsultarEstados();
            ddlEstados.DataSource = objCargarEstados.GetEstados();
            ddlEstados.DataTextField = "Nombre";
            ddlEstados.DataBind();
        }
    }
}