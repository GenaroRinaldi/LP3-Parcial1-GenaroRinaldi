using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Parcial1_GenaroRinaldi
{
    public partial class Consulta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSource1.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader datos;

            datos = (SqlDataReader)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (datos.Read())
            {
                this.Label1.Text = "Nombre: " + datos[0] +
                    "<br>Precio: " + datos[1] +
                    "<br>Categoria:" + datos[2];
                TextBox1.Text = "";
            }
            else this.Label1.Text = "No se encuentra una prenda con tal codigo.";
        }
    }
}