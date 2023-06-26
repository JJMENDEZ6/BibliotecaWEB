using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Servidor
{
    public class EstadosUsuariosSQL
    {
        private DataTable dtDateTable;
        ConexionSQL oConexionSQL = new ConexionSQL();

        public void FntConsultarEstados2()
        {
            SqlDataAdapter da = new SqlDataAdapter("SP_ConsultarEstado2", oConexionSQL.Connection);
            dtDateTable = new DataTable();
            oConexionSQL.Connection.Open();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(dtDateTable);
            oConexionSQL.Connection.Close();
        }
        public DataTable GetEstados2() { return this.dtDateTable; }
    }
}