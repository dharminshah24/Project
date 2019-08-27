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
    public partial class prop_delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string admin_username = "";
            try
            {
                admin_username = Session["id"].ToString();
            }
            catch (Exception)
            {

                Session.RemoveAll();
                Response.Redirect("admin.aspx");
            }
            string mycon = "server=localhost;user id=root;database=mts";



            //string con = "Data Source = localhost;port=3306; Initial Catalog=learn; user id=root";

            string myquery = "SELECT * FROM propertydata ";

            MySqlConnection con = new MySqlConnection(mycon);

            con.Open();

            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = myquery;
            cmd.Connection = con;
            MySqlDataAdapter da = new MySqlDataAdapter();
            //Mycon2.Connection = con2;
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string mycon = "server=localhost;user id=root;database=mts";


            string insertQuery = "SELECT * FROM propertydata where (id = @id or @id IS NULL) OR (ptype = @ptype or @ptype IS NULL) OR (year = @year or @year IS NULL) OR (address = @address or @address IS NULL) OR (city = @city or @city IS NULL) OR (heritage = @heritage or @heritage IS NULL) OR (Owner = @Owner or @Owner IS NULL) OR (liens = @liens or @liens IS NULL) OR (taxes = @taxes or @taxes IS NULL)";

            MySqlConnection con2 = new MySqlConnection(mycon);

            MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
            Mycon2.Parameters.AddWithValue("@id", Search1.Text);
            Mycon2.Parameters.AddWithValue("@ptype", Search1.Text);
            Mycon2.Parameters.AddWithValue("@year", Search1.Text);
            Mycon2.Parameters.AddWithValue("@address", Search1.Text);
            Mycon2.Parameters.AddWithValue("@city", Search1.Text);
            Mycon2.Parameters.AddWithValue("@heritage", Search1.Text);
            Mycon2.Parameters.AddWithValue("@Owner", Search1.Text);
            Mycon2.Parameters.AddWithValue("@liens", Search1.Text);
            Mycon2.Parameters.AddWithValue("@taxes", Search1.Text);
            //Mycon2.Parameters["@id"].Value = newid;

            MySqlDataReader MyReader2;
            con2.Open();

            MyReader2 = Mycon2.ExecuteReader();     
            if (MyReader2.Read())
            {

                string newmycon = "server=localhost;user id=root;database=mts";


                string myquery = "SELECT * FROM propertydata where id='" + Search1.Text + "'";
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

                //view_Data_Message.Text = "Retrieve Data Successful";

            }
            else
            {
                //  view_Data_Message.Text = "Retrieve Data Failed.";
            }
            con2.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}