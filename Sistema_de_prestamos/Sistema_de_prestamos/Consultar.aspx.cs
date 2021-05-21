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
    public partial class Consultar : System.Web.UI.Page
    {
        MySqlConnection conexion = new MySqlConnection("Server=localhost; Database=prestamos; Uid=root; Pwd=;  ");       
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {    
            if (TextBox1.Text == null)
            {
                Label2.Text = ("Campo vacío");
            }
            if (TextBox1.Text != null)
            {                              
                    conexion.Open();
                    MySqlCommand comando = new MySqlCommand("SELECT * FROM usuario WHERE id =" + TextBox1.Text, conexion);
                    comando.ExecuteNonQuery();
                    int count = Convert.ToInt32(comando.ExecuteScalar());
                    if (count == 0)                   
                    {
                        Label2.Text = ("Documento no encontrado");
                        conexion.Close();
                    }                   
                MySqlDataAdapter adaptador = new MySqlDataAdapter();
                    adaptador.SelectCommand = comando;
                    DataTable tabla = new DataTable();
                    adaptador.Fill(tabla);                   
                    Datos1.DataSource = tabla;
                    Datos1.DataBind();                   
                    conexion.Close();                                                                                   
            }          
        }
    }
}