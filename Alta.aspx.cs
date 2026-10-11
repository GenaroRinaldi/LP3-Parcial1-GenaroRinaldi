using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Parcial1_GenaroRinaldi
{
    public partial class Alta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.SqlDataSourceAlta.Insert();
            this.Label1.Text = "Se registro la prenda.";
            this.TextBox1.Text = string.Empty;
            this.TextBox2.Text = string.Empty;
        }
    }
}