using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Municipal_Tracking_System
{
    public partial class forgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "";
            string password = "";
            MySqlConnection con = new MySqlConnection("server=localhost;user id=root;database=mts");
            MySqlCommand cmd = new MySqlCommand("select username, password from user where emailid=@emailid", con);
            cmd.Parameters.AddWithValue("@emailid", emailid.Value);
            con.Open();
            using (MySqlDataReader sdr = cmd.ExecuteReader())
            {

                if (sdr.Read())
                {
                    username = sdr["username"].ToString();
                    password = sdr["password"].ToString();

                }

            }
            con.Close();

            if (!string.IsNullOrEmpty(password))
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("MunicipalTrackingSystem@gmail.com");
                msg.To.Add(emailid.Value);
                msg.Subject = " Your Username and Passwoord for Municipal Tracking System";
                msg.Body = ("Your Username is:" + username + "<br/><br/>" + "Your Password is:" + password);
                msg.IsBodyHtml = true;

                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "MunicipalTrackingSystem@gmail.com"; //Your Email ID  
                ntwd.Password = "Conestoga024"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                lbmsg.Text = "Username and Password Sent Successfully";
                lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
            }
        }
    }
}