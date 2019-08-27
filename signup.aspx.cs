using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Municipal_Tracking_System
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_Click(object sender, EventArgs e)
        {
            try
            {
                string con = "server=localhost;user id=root;database=mts";

                string insertQuery = "insert into user(name,username,employeeno,emailid,password) values(@name,@username,@employeeno,@emailid,@password);";

                MySqlConnection con2 = new MySqlConnection(con);

                MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
                Mycon2.Parameters.AddWithValue("@name", name.Value);
                Mycon2.Parameters.AddWithValue("@username", username.Value);
                Mycon2.Parameters.AddWithValue("@employeeno", employeeno.Value);
                Mycon2.Parameters.AddWithValue("@emailid", emailid.Value);
                Mycon2.Parameters.AddWithValue("@password", password.Value);

                MySqlDataReader MyReader2;
                con2.Open();
                MyReader2 = Mycon2.ExecuteReader();

                Register_Message.Text = "Register Successfully";
                Register_Failed_Message.Text = "";
                name.Value = "";
                username.Value = "";
                employeeno.Value = "";
                emailid.Value = "";
                password.Value = "";

                con2.Close();
            }
            catch (Exception)
            {
                name.Value = "";
                username.Value = "";
                employeeno.Value = "";
                emailid.Value = "";
                password.Value = "";
                Register_Message.Text = "";
                Register_Failed_Message.Text = "Registration Failed";
            }

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            name.Value = "";
            username.Value = "";
            employeeno.Value = "";
            emailid.Value = "";
            password.Value = "";

        }
    }
}