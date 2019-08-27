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
    public partial class addnewdata : System.Web.UI.Page
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
        protected void AddData_Click(object sender, EventArgs e)
        {
            try
            {
                string con = "server=localhost;user id=root;database=mts";

                string insertQuery = "insert into propertydata(ptype,acrage,year,address,city,heritage,Owner,liens,taxes) values(@ptype,@acrage,@year,@address,@city,@heritage,@Owner,@liens,@taxes);";

                MySqlConnection con2 = new MySqlConnection(con);

                MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
                Mycon2.Parameters.AddWithValue("@ptype", ptype.Value);
                Mycon2.Parameters.AddWithValue("@acrage", acrage.Value);
                Mycon2.Parameters.AddWithValue("@year", year.Value);
                Mycon2.Parameters.AddWithValue("@address", address.Value);
                Mycon2.Parameters.AddWithValue("@city", city.Value);
                Mycon2.Parameters.AddWithValue("@heritage", heritage.Value);
                Mycon2.Parameters.AddWithValue("@Owner", Owner.Value);
                Mycon2.Parameters.AddWithValue("@liens", liens.Value);
                Mycon2.Parameters.AddWithValue("@taxes", taxes.Value);

                MySqlDataReader MyReader2;
                con2.Open();
                MyReader2 = Mycon2.ExecuteReader();

                Add_Data.Text = "Successfully add details";
                con2.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}