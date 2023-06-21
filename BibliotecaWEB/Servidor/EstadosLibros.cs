using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Servidor
{
    public class EstadosLibros
    {
        private DataTable dtDateTable;
        ConexionSQL objconexionSQL = new ConexionSQL();

        public void FntConsultarEstados()
        {
            SqlDataAdapter da = new SqlDataAdapter("SP_ConsultarEstado2", objconexionSQL.Connection);
            dtDateTable = new DataTable();
            objconexionSQL.Connection.Open();
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.Fill(dtDateTable);
            objconexionSQL.Connection.Close();
        }
        public DataTable GetEstados() { return this.dtDateTable; }
    }
}