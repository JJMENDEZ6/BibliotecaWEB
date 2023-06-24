using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Logica.Logica_Libros
{
    public class RegistrarLibros
    {
        private string strMensaje;
        ConexionSQL oConexionSQL = new ConexionSQL();
        public void fntRegistrarLibros(string isbn,string nombre, string autor, string editorial, string fechaP, int cantidad)
        {
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(autor) || string.IsNullOrEmpty(editorial) || string.IsNullOrEmpty(fechaP))
            {
                strMensaje = "ERROR - DEBE INGRESAR LOS DATOS SOLICITADOS";
            }
            else
            {
                try
                {
                    SqlCommand oCommand = new SqlCommand("SP_RegistrarLibros", oConexionSQL.Connection);
                    oCommand.CommandType = CommandType.StoredProcedure;
                    oCommand.Parameters.AddWithValue("@isbn", isbn);
                    oCommand.Parameters.AddWithValue("@nombre", nombre);
                    oCommand.Parameters.AddWithValue("@autor", autor);
                    oCommand.Parameters.AddWithValue("@editorial", editorial);
                    oCommand.Parameters.AddWithValue("@fechaPublicacion", fechaP);
                    oCommand.Parameters.AddWithValue("@cantidadEjemplares", cantidad);
                    oConexionSQL.Connection.Open();
                    oCommand.ExecuteNonQuery();
                    oConexionSQL.Connection.Close();
                    strMensaje = "LIBRO REGISTRADO EXITOSAMENTE";
                }
                catch (System.Data.SqlClient.SqlException)
                {
                    strMensaje = "ESTE LIBRO YA SE ENCUENTRA REGISTRADO EN LA BASE DE DATOS";
                }
            }
        }
        public string GetMensaje() => this.strMensaje;
    }
}