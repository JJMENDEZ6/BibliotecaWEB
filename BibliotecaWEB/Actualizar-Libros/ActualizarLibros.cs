using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Actualizar_Libros
{
    public class ActualizarLibros
    {
        private string strMensaje;
        ConexionSQL oConexionSQL = new ConexionSQL();
        public void fntActualizarLibros(string isbn, string nombre, string autor, string editorial, string fechaP, string estado, int cantidad)
        {
            if (string.IsNullOrEmpty(isbn) || string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(autor) || string.IsNullOrEmpty(editorial) || string.IsNullOrEmpty(fechaP))
            {
                strMensaje = "Debe ingresar los datos solicitados";
            }
            else
            {
                try
                {
                    //oConexionSQL.Connection.Open();
                    SqlCommand oCommand = new SqlCommand("SP_ActualizarLibros", oConexionSQL.Connection);
                    oCommand.CommandType = CommandType.StoredProcedure;
                    oCommand.Parameters.AddWithValue("@isbn", isbn);
                    oCommand.Parameters.AddWithValue("@nombre", nombre);
                    oCommand.Parameters.AddWithValue("@autor", autor);
                    oCommand.Parameters.AddWithValue("@editorial", editorial);
                    oCommand.Parameters.AddWithValue("@fechaP", fechaP);
                    oCommand.Parameters.AddWithValue("@FKEstado", estado);
                    oCommand.Parameters.AddWithValue("@cantidad", cantidad);
                    oConexionSQL.Connection.Open();
                    oCommand.ExecuteNonQuery();
                    oConexionSQL.Connection.Close();
                    strMensaje = $"Libro {nombre} actualizado con exito";
                }
                catch (Exception)
                {
                    strMensaje = "Error al actualizar el libro";
                }
            }
        }
        public string GetMensaje() => strMensaje;
    }
}