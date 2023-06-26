using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BibliotecaWEB.Servidor
{
    public class ConexionSQL
    {
        //Sena
        //public SqlConnection Connection = new SqlConnection("Data Source=MABAPRRATFSD015\\ANDRESFGB;Initial Catalog=BD_BIBLIOTECANACIONAL;Integrated Security=True");
        //Home
        public SqlConnection Connection = new SqlConnection("Data Source=localhost;Initial Catalog=BD_BIBLIOTECANACIONAL;Integrated Security=True");
    }
}