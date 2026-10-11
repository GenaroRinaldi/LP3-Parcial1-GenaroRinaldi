using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Parcial1_GenaroRinaldi
{
    public partial class Baja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int cant = SqlDataSource1.Delete();

            if (cant > 0) this.Label1.Text = "Se elimino el producto";
            else this.Label1.Text = "No existe producto con tal codigo";
        }
    }
}