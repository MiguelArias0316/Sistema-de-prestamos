using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_prestamos
{
    public partial class MujerEmprendedora2 : System.Web.UI.Page
    {
        string nombre;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro1"] != null )
            {
                nombre = Request.Params["parametro1"].ToString();
                Label1.Text = nombre;
            }
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}