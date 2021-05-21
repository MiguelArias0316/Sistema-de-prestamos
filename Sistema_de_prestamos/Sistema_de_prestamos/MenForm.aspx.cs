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
    public partial class MenForm : System.Web.UI.Page
    {
        MySqlConnection cn = new MySqlConnection("Server=localhost;Database=prestamos;Uid=root;Pwd=;");
        double montoDep; double montoInd; double salarioDep; double salarioInd; double salarioextra; double salarioParejaDep;
        double salarioParejaInd; double salarioTotalDep1; double salarioTotalDep2;
        double salarioTotalDep3; double salarioTotalDep4; double salarioTotalInd1; double salarioTotalInd2; string nombre; string id; string email; DateTime fecha = DateTime.Today;
        public void Page_Load(object sender, EventArgs e)      
        {
            if (Request.Params["parametro1"] != null && Request.Params["parametro2"] != null && Request.Params["parametro3"] != null)
            {
                nombre = Request.Params["parametro1"].ToString();
                id = Request.Params["parametro2"].ToString();
                email = Request.Params["parametro3"].ToString();
                Label20.Text = nombre;           
            }       
        }                              
        protected void BotonEnviarDep_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Items[1].Selected)
            {
                montoDep = 5000000;
            }
            if (DropDownList1.Items[2].Selected)
            {
                montoDep = 10000000;
            }
            if (DropDownList1.Items[3].Selected)
            {
                montoDep = 15000000;
            }
            if (DropDownList1.Items[4].Selected)
            {
                montoDep = 20000000;
            }
            if (DropDownList1.Items[5].Selected)
            {
                montoDep = 25000000;
            }
            if (DropDownList1.Items[6].Selected)
            {
                montoDep = 30000000;
            }
            if (TextBox1.Text == "")
            {
                salarioextra = 0;
            }
            if (TextBox9.Text == "")
            {
                salarioParejaDep = 0;
            }
            salarioDep = double.Parse(TextBox7.Text);
            if (divPareja.Style.Value == "block")
            {
                salarioParejaDep = double.Parse(TextBox9.Text);
            }
            if (divCuanto.Style.Value == "block")
            {
                salarioextra = double.Parse(TextBox1.Text);
            }
            salarioTotalDep1 = salarioDep + salarioParejaDep + salarioextra;
            salarioTotalDep2 = salarioDep + salarioextra;
            salarioTotalDep3 = salarioDep + salarioParejaDep;
            salarioTotalDep4 = salarioDep;
            double porcentaje = montoDep * 0.35;
            double por_monto = montoDep + porcentaje;
            double salarioañoDep1 = salarioTotalDep1 * 12;
            double salarioañoDep2 = salarioTotalDep2 * 12;
            double salarioañoDep3 = salarioTotalDep3 * 12;
            double salarioañoDep4 = salarioTotalDep4 * 12;

            if (salarioDep > 0 && montoDep > 0 && salarioañoDep1 - por_monto > 0 ||
            salarioDep > 0 && montoDep > 0 && salarioañoDep2 - por_monto > 0 ||
            salarioDep > 0 && montoDep > 0 && salarioañoDep3 - por_monto > 0 ||
            salarioDep > 0 && montoDep > 0 && salarioañoDep4 - por_monto > 0)
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(new MailAddress(email));
                mail.From = new MailAddress("migueda1312@gmail.com");
                var fromPassword = "3172403878";
                mail.Subject = "SOLICITUD DE CREDITO";
                mail.Body = "<body>" +
                   "<h2>Sistema de Préstamos</h2>" +
                   "<h3>NIT 215487-556</h3>" +
                    "<h3>Medellin (Ant) (" + DateTime.Now.ToString("yyyy-MM-dd") + ")</h3>" +
                     "<h3>Señor " + nombre + "</h3>" +
                      "<h3>" + id + "</h3>" +
                      "<h4> Asunto: Otorgamiento de crédito. </h4>" +
                      "<p>  Cordial saludo le damos la bienvenida a Sistema de Préstamos, informándole<br>" +
                      " que su solicitud de crédito ha sido aprobada y se hará efectiva en cuanto haga<br>" +
                      "presencia en una de nuestras oficinas para definir el modo de desembolso<br>" +
                      "(Efectivo, cheque o consignación).</p>" +
                      "<br>" +
                      "<p>Atentamente, </p>" +
                      "<br>" +
                      "<p> Sistema de Prestamos.<br>" +
                      "PBX: (034) 444 44 44<br>" +
                      "Línea única de atención al cliente 018000369800 </p> " +                   
                    "</body>"; 




                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.Normal;
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential("migueda1312@gmail.com", "3172403878")

                };
                
                smtp.Send(mail);
                cn.Open();
                string Query = "INSERT INTO usuario (Id, Nombre, Monto,Email) values ('" + id + "','" + nombre + "','" + montoDep + "','" +email+ "');";
                MySqlCommand comando = new MySqlCommand(Query, cn);

                comando.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("PrestamoAceptado.aspx?parametro1=" + nombre + "&parametro2=" + id);
                Response.Redirect("PrestamoAceptado.aspx");
            }
            else
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(new MailAddress(email));
                mail.From = new MailAddress("migueda1312@gmail.com");
                var fromPassword = "3172403878";
                mail.Subject = "SOLICITUD DE CREDITO";
                mail.Body = "<body>" +
                   "<h2>Sistema de Préstamos</h2>" +
                   "<h3>NIT 215487-556</h3>" +
                    "<h3>Medellin (Ant) (" + DateTime.Now.ToString("yyyy-MM-dd") + ")</h3>" +
                     "<h3>Señor " + nombre + "</h3>" +
                      "<h3>" + id + "</h3>" +
                      "<h4> Asunto: Credito declinado. </h4>" +
                      "<p> Le saludamos muy especialmente a nombre de Sistema de Préstamos,<br>" +
                      "informándole que su solicitud de crédito ha sido negada, para más <br>" +
                      "información acercarse a una de nuestras oficinas o comunicarse a nuestra <br>" +
                      "línea única de servicio al cliente.</p>" +
                      "<br>" +
                      "<p>Atentamente, </p>" +
                      "<br>" +
                      "<p> Sistema de Prestamos.<br>" +
                      "PBX: (034) 444 44 44<br>" +
                      "Línea única de atención al cliente 018000369800 </p> " +                  
                "</body>";

                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.Normal;
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential("migueda1312@gmail.com", "3172403878")

                };

                smtp.Send(mail);
                Response.Redirect("PrestamoRechazado.aspx?parametro1=" + nombre + "&parametro2=" + id);
                Response.Redirect("PrestamoRechazado.aspx");
            }           
        }
        protected void BotonEnviarInd_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Items[1].Selected)
            {
                montoInd = 5000000;
            }
            if (DropDownList1.Items[2].Selected)
            {
                montoInd = 10000000;
            }
            if (DropDownList1.Items[3].Selected)
            {
                montoInd = 15000000;
            }
            if (DropDownList1.Items[4].Selected)
            {
                montoInd = 20000000;
            }
            if (DropDownList1.Items[5].Selected)
            {
                montoInd = 25000000;
            }
            if (DropDownList1.Items[6].Selected)
            {
                montoInd = 30000000;
            }
            salarioInd = double.Parse(TextBox2.Text);
            if (divPareja2.Style.Value == "block")
            {
                salarioParejaInd = double.Parse(TextBox3.Text);
            }
            salarioTotalInd1 = salarioInd + salarioParejaInd;
            salarioTotalInd2 = salarioInd;
            double porcentaje = montoInd * 0.35;
            double por_monto = montoInd + porcentaje;
            double salarioañoInd1 = salarioTotalInd1 * 12;
            double salarioañoInd2 = salarioTotalInd2 * 12;      
            if (salarioInd > 0 && montoInd > 0 && salarioañoInd1 - por_monto > 0 ||
                salarioInd > 0 && montoInd > 0 && salarioañoInd2 - por_monto > 0 && RadioButtonList2.Items[0].Selected)
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(new MailAddress(email));
                mail.From = new MailAddress("migueda1312@gmail.com");
                var fromPassword = "3172403878";
                mail.Subject = "SOLICITUD DE CREDITO";
                mail.Body = "<body>" +
                   "<h2>Sistema de Préstamos</h2>" +
                   "<h3>NIT 215487-556</h3>" +
                    "<h3>Medellin (Ant) (" + DateTime.Now.ToString("yyyy-MM-dd") + ")</h3>" +
                     "<h3>Señor " + nombre + "</h3>" +
                      "<h3>" + id + "</h3>" +
                      "<h4> Asunto: Otorgamiento de crédito. </h4>" +
                      "<p>  Cordial saludo le damos la bienvenida a Sistema de Préstamos, informándole<br>" +
                      " que su solicitud de crédito ha sido aprobada y se hará efectiva en cuanto haga<br>" +
                      "presencia en una de nuestras oficinas para definir el modo de desembolso<br>" +
                      "(Efectivo, cheque o consignación).</p>" +
                      "<br>" +
                      "<p>Atentamente, </p>" +
                      "<br>" +
                      "<p> Sistema de Prestamos.<br>" +
                      "PBX: (034) 444 44 44<br>" +
                      "Línea única de atención al cliente 018000369800 </p> " +
                   
                "</body>";

                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.Normal;
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential("migueda1312@gmail.com", "3172403878")

                };

                smtp.Send(mail);
                cn.Open();
                string Query = "INSERT INTO usuario (Id, Nombre, Monto, Email) values ('" + id + "','" + nombre + "','" + montoInd + "','" + email + "');";
                MySqlCommand comando = new MySqlCommand(Query, cn);

                comando.ExecuteNonQuery();
                cn.Close();

                Response.Redirect("PrestamoAceptado.aspx?parametro1=" + nombre + "&parametro2=" + id);
                Response.Redirect("PrestamoAceptado.aspx");
            }
            else if (RadioButtonList2.Items[1].Selected)
            {
                MailMessage mail = new MailMessage();
                mail.To.Add(new MailAddress(email));
                mail.From = new MailAddress("migueda1312@gmail.com");
                var fromPassword = "3172403878";
                mail.Subject = "SOLICITUD DE CREDITO";
                mail.Body = "<body>" +
                   "<h2>Sistema de Préstamos</h2>" +
                   "<h3>NIT 215487-556</h3>" +
                    "<h3>Medellin (Ant) (" + DateTime.Now.ToString("yyyy-MM-dd") + ")</h3>" +
                     "<h3>Señor " + nombre + "</h3>" +
                      "<h3>" + id + "</h3>" +
                      "<h4> Asunto: Credito declinado. </h4>" +
                      "<p> Le saludamos muy especialmente a nombre de Sistema de Préstamos,<br>" +
                      "informándole que su solicitud de crédito ha sido negada, para más <br>" +
                      "información acercarse a una de nuestras oficinas o comunicarse a nuestra <br>" +
                      "línea única de servicio al cliente.</p>" +
                      "<br>" +
                      "<p>Atentamente, </p>" +
                      "<br>" +
                      "<p> Sistema de Prestamos.<br>" +
                      "PBX: (034) 444 44 44<br>" +
                      "Línea única de atención al cliente 018000369800 </p> " +
                   
                "</body>";

                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.Normal;
                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential("migueda1312@gmail.com", "3172403878")

                };
                
                smtp.Send(mail);

                Response.Redirect("PrestamoRechazado.aspx?parametro1=" + nombre + "&parametro2=" + id);
                Response.Redirect("PrestamoRechazado.aspx");
            }
            












        }
    }
}