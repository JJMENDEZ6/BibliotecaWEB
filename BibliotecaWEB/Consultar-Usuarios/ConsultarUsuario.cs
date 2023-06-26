using BibliotecaWEB.Servidor;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Consultar_Usuarios
{
    public class ConsultarUsuario
    {
        private string strNombre,strApellido,strContacto,strDireccion,strCorreo,strMensaje;
        private int intEstado;
        SqlCommand oCommand;
        SqlDataReader oDataReader;
        ConexionSQL oConexionSQL = new ConexionSQL();
        public void fntConsultarUsuarios(long id)
        {
            oCommand = new SqlCommand("SP_Usuarios", oConexionSQL.Connection);
            oCommand.CommandType = CommandType.StoredProcedure;
            oCommand.Parameters.AddWithValue("id", id);
            oConexionSQL.Connection.Open();
            oDataReader = oCommand.ExecuteReader();
            if (oDataReader.Read() == true)
            {
                strNombre = Convert.ToString(oDataReader[1]);
                strApellido = Convert.ToString(oDataReader[2]);
                strContacto = Convert.ToString(oDataReader[3]);
                strDireccion = Convert.ToString(oDataReader[4]);
                strCorreo = Convert.ToString(oDataReader[5]);
                intEstado = Convert.ToInt16(oDataReader[6]);
                strMensaje = "Consulta Exitosa";
            }
            else
            {
                strMensaje = "Usuario no encontrado";
            }
        }
        public string GetNombre() => strNombre;
        public string GetApellido() => strApellido;
        public string GetContacto() => strContacto;
        public string GetDireccion() => strDireccion;
        public string GetCorreo() => strCorreo;
        public int GetEstado() => intEstado;
    }
}