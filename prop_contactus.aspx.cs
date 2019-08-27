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
    public partial class prop_contactus : System.Web.UI.Page
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

            string myquery = "SELECT * FROM contact ";

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
            GridView2.DataSource = ds;
            GridView2.DataBind();
            con.Close();

        }
    }
}