using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BibliotecaWEB.Consultar_Usuarios
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
                CargarEstados();
            }
        }
        public void CargarEstados()
        {
            EstadosUsuariosSQL objCargarEstados = new EstadosUsuariosSQL();
            objCargarEstados.FntConsultarEstados2();
            ddlEstado.DataSource = objCargarEstados.GetEstados2();
            ddlEstado.DataTextField = "Nombre";
            ddlEstado.DataValueField = "PK_CODIGO";
            ddlEstado.DataBind();
        }
    }
}