using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Servidor
{
    public class EstadosLibrosSQL
    {
        SqlCommand connection;
        SqlDataReader reader;
        private DataTable dt;
        ConexionSQL objconexionSQL = new ConexionSQL();
        private DataTable dtDateTable;
        private int intEstados;

        public void FntConsultarEstados()
        {
            SqlDataAdapter da = new SqlDataAdapter("SP_ConsultarEstado", objconexionSQL.Connection);
            dt = new DataTable();
            objconexionSQL.Connection.Open();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(dt);
            objconexionSQL.Connection.Close();
        }
        public DataTable GetEstados() { return this.dt; }
    }
}