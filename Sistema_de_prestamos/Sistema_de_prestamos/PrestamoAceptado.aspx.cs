using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Text;
using System.Threading.Tasks;


namespace Sistema_de_prestamos
{
    public partial class PrestamoAceptado : System.Web.UI.Page
    {
        string nombre; string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro1"] != null && Request.Params["parametro2"] != null)
            {
                nombre = Request.Params["parametro1"].ToString();
                id = Request.Params["parametro2"].ToString();
                Label1.Text = nombre;            
            }
        }      
        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}