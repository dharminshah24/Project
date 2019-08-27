using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

namespace Municipal_Tracking_System
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void admin_login_Click(object sender, EventArgs e)
        {
            try
            {
                string con = "server=localhost;user id=root;database=mts";

                string insertQuery = "select * from admin where admin_username=@admin_username and admin_password=@admin_password";

                MySqlConnection con2 = new MySqlConnection(con);

                MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
                Mycon2.Parameters.AddWithValue("@admin_username", admin_username.Value);
                Mycon2.Parameters.AddWithValue("@admin_password", admin_password.Value);
                MySqlDataReader MyReader2;
                con2.Open();
                MyReader2 = Mycon2.ExecuteReader();     // Here our query will be executed and data saved into the database. 
                if (MyReader2.Read())
                {
                    Login_Message.Text = "Login Successful";
                    Session["id"] = admin_username.Value;
                    Response.Redirect("adminCRUD.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    Login_Message.Text = "Login Failed";
                }
                con2.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
