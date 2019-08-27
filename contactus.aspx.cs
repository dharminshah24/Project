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
    public partial class contactus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void contactus_bttn_Click(object sender, EventArgs e)
        {
            try
            {
                string con = "server=localhost;user id=root;database=mts";

                string insertQuery = "insert into contact(contactus_select,username,message) values(@contactus_select,@username,@message);";

                MySqlConnection con2 = new MySqlConnection(con);

                MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
                Mycon2.Parameters.AddWithValue("@contactus_select", contactus_select.Value);
                Mycon2.Parameters.AddWithValue("@username", username.Value);
                Mycon2.Parameters.AddWithValue("@message", message.Value);

                MySqlDataReader MyReader2;
                con2.Open();
                MyReader2 = Mycon2.ExecuteReader();

                contactus_Message.Text = "Your response submitted Successfully";
                con2.Close();
            }
            catch (Exception)
            {
                throw;

            }
        }
    }
}