using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Logica.Logica_Libros
{
    public class RegistrarLibros
    {
        private string strMensaje;
        ConexionSQL oConexionSQL;
        public void fntRegistrarLibros(string nombre,string autor,string editorial,string fechaP,char estado,int cantidad)
        {
            try
            {
                SqlCommand oCommand = new SqlCommand();
            }
            catch (Exception)
            {

            }
        }
    }
}