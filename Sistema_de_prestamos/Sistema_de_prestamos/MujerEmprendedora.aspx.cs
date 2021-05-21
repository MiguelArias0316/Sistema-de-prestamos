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
    public partial class MujerEmprendedora : System.Web.UI.Page
    {
        MySqlConnection cn = new MySqlConnection("Server=localhost;Database=prestamos;Uid=root;Pwd=;");
        string nombre; string id; double montoInd;double montoInd2; double nuevomonto;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro1"] != null && Request.Params["parametro2"] != null)
            {
                nombre = Request.Params["parametro1"].ToString();
                id = Request.Params["parametro2"].ToString();
                montoInd = Convert.ToDouble(Request.Params["parametro3"].ToString());
                Label1.Text = nombre;             
            }
        }    
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Items[0].Selected)
            {
                montoInd2 = 1000000;
            }
            if (DropDownList1.Items[1].Selected)
            {
                montoInd2 = 2000000;
            }
            if (DropDownList1.Items[2].Selected)
            {
                montoInd2 = 3000000;
            }
            if (DropDownList1.Items[3].Selected)
            {
                montoInd2 = 4000000;
            }
            if (DropDownList1.Items[4].Selected)
            {
                montoInd2 = 5000000;
            }
            nuevomonto = montoInd2 + montoInd;           
            cn.Open();
            string Query = "UPDATE usuario SET Monto='" + nuevomonto + "' WHERE id = '" + id + "';";
            MySqlCommand comando = new MySqlCommand(Query, cn);

            comando.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Index.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}