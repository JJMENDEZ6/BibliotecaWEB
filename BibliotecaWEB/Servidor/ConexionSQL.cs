using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Servidor
{
    public class ConexionSQL
    {
        public SqlConnection Connection = new SqlConnection("Data Source=MABAPRRATFSD015\\ANDRESFGB;Initial Catalog=BD_BIBLIOTECANACIONAL;Integrated Security=True");
    }
}