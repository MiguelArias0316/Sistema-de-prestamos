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
using System.Net.Mail;
using System.Net;


namespace Sistema_de_prestamos
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySqlConnection cn = new MySqlConnection("Server=localhost;Database=prestamos;Uid=root;Pwd=;");

        public void Page_Load(object sender, EventArgs e)
        {

        }
        public void Button4_Click(object sender, EventArgs e)
        {
            string documento; double edad; string val; bool correcto; string email;

            
            documento = TextBox3.Text;
            string nombre = TextBox1.Text;
            email = TextBox4.Text;


            if (TextBox2.Text == "")
            {
                edad = 0;
            }
            else
            {
                edad = double.Parse(TextBox2.Text);
            }
            if (edad < 18)
            {
                Label5.Text = "Debes ser mayor de edad";
            }
            if (TextBox3.Text == "")
            {
                Label9.Text = "Campo vacío";
            }
            else if (TextBox3.Text != "")
            {
                Label9.Text = "";
            }
            if (nombre == "")
            {
                Label6.Text = "Campo vacío";
            }
            else if (nombre != "")
            {
                Label6.Text = "";
            }
            if (email == "")
            {
                Label11.Text = "Campo vacío";
            }
            else if (email != "")
            {
                Label11.Text = "";
            }
            if (TextBox2.Text == "")
            {
                Label8.Text = "Campo vacío";
            }
            else if (TextBox2.Text != "" && edad > 18)
            {
                Label8.Text = "";
            }
            if (!RadioButtonList1.Items[1].Selected && !RadioButtonList1.Items[0].Selected)
            {
                Label7.Text = "Seleccione un genero";
            }          
            if (RadioButtonList1.Items[0].Selected && edad >= 18 && !(nombre == "") && documento != "" && email != "")
            {
                cn.Open();
                string Query = "select count(*) from usuario where Id= @documento";
                MySqlCommand comando = new MySqlCommand(Query, cn);
                comando.Parameters.AddWithValue("@documento", documento);
                correcto = Convert.ToInt32(comando.ExecuteScalar()) > 0;
                if (correcto == true)
                {
                    val = "NO";                   
                }
                else
                {
                    val = "SI";
                }
                cn.Close();
                if (val == "SI" && RadioButtonList1.Items[0].Selected)
                {                 
                    Response.Redirect("MenForm.aspx?parametro1=" + nombre + "&parametro2=" + documento + "&parametro3="+ email);
                    Response.Redirect("MenForm.aspx");
                }
                else
                {
                    Label10.Text = "Docuemnto ya registrado";
                }         
            }
            if (RadioButtonList1.Items[1].Selected && edad >= 18 && !(nombre == "") && documento != "" && email != "")
            {
                cn.Open();
                string Query = "select count(*) from usuario where Id= @documento";
                MySqlCommand comando = new MySqlCommand(Query, cn);
                comando.Parameters.AddWithValue("@documento", documento);
                correcto = Convert.ToInt32(comando.ExecuteScalar()) > 0;
                if (correcto == true)
                {
                    val = "NO";
                }
                else
                {
                    val = "SI";
                }
                cn.Close();
                if (val == "SI")
                {
                    Response.Redirect("WomanForm.aspx?parametro1=" + nombre + "&parametro2=" + documento + "&parametro3=" + email);
                    Response.Redirect("WomanForm.aspx");
                }
                else
                {
                    Label10.Text = "Docuemnto ya registrado";
                }
            }
        }      
    }
}