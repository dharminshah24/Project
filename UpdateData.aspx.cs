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
    public partial class EditData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = "";
            try
            {
                username = Session["id"].ToString();
            }
            catch (Exception)
            {

                Session.RemoveAll();
                Response.Redirect("login.aspx");
            }

        }

        protected void viewdata_Click(object sender, EventArgs e)
        {
            try
            {
                string con = "server=localhost;user id=root;database=mts";

                string insertQuery = "select * from propertydata where id=@id";

                MySqlConnection con2 = new MySqlConnection(con);

                MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
                Mycon2.Parameters.AddWithValue("@id", Property_Number.Value);

                //Mycon2.Parameters["@id"].Value = newid;

                MySqlDataReader MyReader2;
                con2.Open();
                
                MyReader2 = Mycon2.ExecuteReader();     // Here our query will be executed and data saved into the database. 
                if (MyReader2.Read())
                {
                    
                    string newmycon = "server=localhost;user id=root;database=mts";
                    
                    string myquery = "SELECT * FROM propertydata where id='" + Property_Number.Value + "'";

                    MySqlConnection newcon = new MySqlConnection(newmycon);

                    newcon.Open();

                    MySqlCommand cmd = new MySqlCommand();

                    cmd.CommandText = myquery;
                    cmd.Connection = newcon;
                    MySqlDataAdapter da = new MySqlDataAdapter();
                    //Mycon2.Connection = con2;
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    newcon.Close();

                    view_Data_Message.Text = "Retrieve Data Successful";

                }
                else
                {
                    view_Data_Message.Text = "Retrieve Data Failed.";
                }
                con2.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {

        }

        
    }
}
