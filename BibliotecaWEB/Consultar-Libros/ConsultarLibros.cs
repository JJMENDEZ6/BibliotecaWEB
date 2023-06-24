using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Consultar_Libros
{
    public class ConsultarLibros
    {
        string strNombre, strAutor, strEditorial, strFecha,strMensaje;
        int intCantidad,intEstados;
        SqlCommand oCommand;
        SqlDataReader oDataReader;
        ConexionSQL oConexionSQL = new ConexionSQL();
        public void fntConsultar(string isbn)
        {
            if (string.IsNullOrEmpty(isbn))
            {
                strMensaje = "Debe ingresar el ISBN del libro";
            }
            else
            {
                try
                {
                    oCommand = new SqlCommand("SP_ConsultarLibros", oConexionSQL.Connection);
                    oCommand.CommandType = System.Data.CommandType.StoredProcedure;
                    oCommand.Parameters.AddWithValue("@isbn", isbn);
                    oConexionSQL.Connection.Open();
                    oDataReader = oCommand.ExecuteReader();
                    if (oDataReader.Read() == true)
                    {
                        strNombre = Convert.ToString(oDataReader[1]);
                        strAutor = Convert.ToString(oDataReader[2]);
                        strEditorial = Convert.ToString(oDataReader[3]);
                        strFecha = Convert.ToString(oDataReader[4]);
                        intEstados = Convert.ToInt16(oDataReader[5]);
                        intCantidad = Convert.ToInt16(oDataReader[6]);
                        strMensaje = "Consulta Exitosa";
                    }
                    else
                    {
                        strMensaje = "Datos no encontrados";
                    }
                }
                catch (Exception) { }
            }
        }
        public string GetNombre() => strNombre;
        public string GetAutor() => strAutor;
        public string GetEditorial() => strEditorial;
        public string GetFecha() => strFecha;
        public int GetEstado() => intEstados;
        public int GetCantidad() => intCantidad;
        public string GetMensaje() => strMensaje;
    }
}