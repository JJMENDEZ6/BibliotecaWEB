﻿using BibliotecaWEB.Servidor;
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
        
        protected void Page_Load(object sender, EventArgs e)
        {
            CargarEstados();
        }
        public void CargarEstados()
        {
            EstadosLibrosSQL objCargarEstados = new EstadosLibrosSQL();
            objCargarEstados.FntConsultarEstados();
            ddlLibros.DataSource = objCargarEstados.GetEstados();
            ddlLibros.DataTextField = "Nombre";
            ddlLibros.DataBind();
        }
    }
}