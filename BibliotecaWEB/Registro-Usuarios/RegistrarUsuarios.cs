using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Registro_Usuarios
{
    public class RegistrarUsuarios
    {
        private string strMensaje;
        ConexionSQL oConexionSQL = new ConexionSQL();
        public void fntRegistrarUsuarios(string nombre,string apellido,string contacto,string direccion,string correo)
        {
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(apellido) || string.IsNullOrEmpty(contacto) || string.IsNullOrEmpty(direccion) || string.IsNullOrEmpty(correo))
            {
                strMensaje = "ERROR - DEBE INGRESAR LOS DATOS SOLICITADOS";
            }
            else
            {
                try
                {
                    SqlCommand oCommand = new SqlCommand("SP_RegistrarUsuarios", oConexionSQL.Connection);
                    oCommand.CommandType = CommandType.StoredProcedure;
                    oCommand.Parameters.AddWithValue("@nombres", nombre);
                    oCommand.Parameters.AddWithValue("@apellidos", apellido);
                    oCommand.Parameters.AddWithValue("@contacto", contacto);
                    oCommand.Parameters.AddWithValue("@direccion", direccion);
                    oCommand.Parameters.AddWithValue("@correo", correo);
                    oConexionSQL.Connection.Open();
                    oCommand.ExecuteNonQuery();
                    oConexionSQL.Connection.Close();
                    strMensaje = "USUARIO REGISTRADO EXITOSAMENTE";
                }
                catch (System.Data.SqlClient.SqlException)
                {
                    strMensaje = "ESTE USUARIO YA SE ENCUENTRA REGISTRADO EN LA BASE DE DATOS";
                }
            }
        }
        public string GetMensaje() => this.strMensaje;
    }
}