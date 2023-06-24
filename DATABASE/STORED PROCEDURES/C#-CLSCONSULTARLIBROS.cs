public class consultarLibros
    {
        string mensaje;
        string isbn;
        string nombre;
        string autor;
        string editorial;
        int pag;
        string genero;
        string date;
        int cant;
        int state;
        SqlCommand con; SqlDataReader Lectura;
        conexion objconexion = new conexion();

        public void consultarLibro(string isbn)
        {
            if (isbn == null)
            {
                mensaje = "Debe ingresar el criterio de busqueda";
            }
            else
            {
                try
                {
                    con = new SqlCommand("SP_ConsultarLibros", objconexion.connection);
                    con.CommandType = System.Data.CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@isbn", isbn);
                    objconexion.connection.Open();
                    //con.EndExecuteNonQuery();
                    Lectura = con.ExecuteReader();
                    if (Lectura.Read() == true)
                    {
                        nombre = Convert.ToString(Lectura[1]);
                        autor = Convert.ToString(Lectura[2]);
                        editorial = Convert.ToString(Lectura[3]);
                        pag = Convert.ToInt16(Lectura[4]);
                        genero = Convert.ToString(Lectura[5]);
                        date = Convert.ToString(Lectura[6]);
                        state = Convert.ToInt16(Lectura[7]);
                        cant = Convert.ToInt16(Lectura[8]);
                        objconexion.connection.Close();
                        mensaje = "";
                    }
                    else
                    {
                        mensaje = "No se encontraron datos";
                    }
                }
                catch (Exception) { }
            }
        }
        public string getnombres() { return this.nombre; }
        public string getautor() { return this.autor; }
        public string geteditorial() { return this.editorial; }
        public int getpaginas() { return this.pag; }
        public string getgenero() { return this.genero; }
        public string getdate() { return this.date; }           
        public int getcant() { return this.cant; }
        public int getstate() { return this.state; }
        public string getmensaje() { return this.mensaje; }
    }


 private void consultarLibros(string isbn)
        {
            consultarLibros objconsultar = new consultarLibros();
            objconsultar.consultarLibro(isbn);
            nombre.Text=objconsultar.getnombres();
            autor.Text = objconsultar.getautor();
            editorial.Text = objconsultar.geteditorial();
            nPaginas.Text = Convert.ToString(objconsultar.getpaginas());
            genero.Text = objconsultar.getgenero();
            fechaPublicacion.Text = Convert.ToString(objconsultar.getdate());
            canEjemplares.Text = Convert.ToString(objconsultar.getcant());
            state.SelectedIndex = Convert.ToInt16(objconsultar.getstate());
            mensaje.Text= objconsultar.getmensaje();

        }