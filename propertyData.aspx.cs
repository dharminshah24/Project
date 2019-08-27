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
    public partial class propertyData : System.Web.UI.Page
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

            string mycon = "server=localhost;user id=root;database=mts";
            
            string myquery = "SELECT * FROM propertydata ";

            MySqlConnection con = new MySqlConnection(mycon);

            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }

        protected void EditData_Click(object sender, EventArgs e)
        {

        }

        protected void DeleteData_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void Search_Click(object sender, EventArgs e)
        {
            string mycon = "server=localhost;user id=root;database=mts";

            
            string insertQuery = "SELECT * FROM propertydata where city = @city";

            MySqlConnection con2 = new MySqlConnection(mycon);

            MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
            Mycon2.Parameters.AddWithValue("@city", Search1.Text);


            MySqlDataReader MyReader2;
            con2.Open();

            MyReader2 = Mycon2.ExecuteReader(); 
            if (MyReader2.Read())
            {

                string newmycon = "server=localhost;user id=root;database=mts";


                string myquery = "SELECT * FROM propertydata where city='" + Search1.Text + "'";
                MySqlConnection newcon = new MySqlConnection(newmycon);

                newcon.Open();

                MySqlCommand cmd = new MySqlCommand();

                cmd.CommandText = myquery;
                cmd.Connection = newcon;
                MySqlDataAdapter da = new MySqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                newcon.Close();

                //Search_Data.Text = "Search Data";

            }
            else
            {
                //Search_Data.Text = "Retrieve Data Failed.";
            }
            con2.Close();
        }

        protected void edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateTest.aspx");
        }
        
    }

}

        
        

       


        
    