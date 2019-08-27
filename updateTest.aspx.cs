using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace Municipal_Tracking_System
{

    public partial class updateTest : System.Web.UI.Page
    {
        string con = "server=localhost;user id=root;database=mts";
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
            if (!IsPostBack)
            {
                gvbind();
            }
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
                    //if (ds.Tables[0].Rows.Count > 0)
                    //{
                    //    GridView1.DataSource = ds;
                    //    GridView1.DataBind();
                    //}
                    //else
                    //{
                    //    ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                    //    GridView1.DataSource = ds;
                    //    GridView1.DataBind();
                    //    int columncount = GridView1.Rows[0].Cells.Count;
                    //    GridView1.Rows[0].Cells.Clear();
                    //    GridView1.Rows[0].Cells.Add(new TableCell());
                    //    GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                    //    GridView1.Rows[0].Cells[0].Text = "No Records Found";
                    //}
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

        protected void gvbind()
        {
            
            string insertQuery = "SELECT * FROM propertydata where id='" + Property_Number.Value + "'";
            MySqlConnection con2 = new MySqlConnection(con);
            MySqlCommand Mycon2 = new MySqlCommand(insertQuery, con2);
            //Mycon2.Parameters.AddWithValue("@id", Property_Number.Value);

            MySqlDataReader MyReader2;
            con2.Open();
            MySqlCommand cmd = new MySqlCommand();

            cmd.CommandText = insertQuery;
            cmd.Connection = con2;
            MySqlDataAdapter da = new MySqlDataAdapter();
            //Mycon2.Connection = con2;
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con2.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            MySqlConnection con2 = new MySqlConnection(con);
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con2.Open();
            MySqlCommand cmd = new MySqlCommand("delete FROM propertydata where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'",con2);
            cmd.ExecuteNonQuery();
            con2.Close();
            gvbind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            MySqlConnection con2 = new MySqlConnection(con);
            int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID");
            //TextBox txtname=(TextBox)gr.cell[].control[];  
            //TextBox textId = (TextBox)row.Cells[0].Controls[0];
            TextBox textPtype = (TextBox)row.Cells[1].Controls[0];
            TextBox textAcrage = (TextBox)row.Cells[2].Controls[0];
            TextBox textYear = (TextBox)row.Cells[3].Controls[0];
            TextBox textAddress = (TextBox)row.Cells[4].Controls[0];
            TextBox textCity = (TextBox)row.Cells[5].Controls[0];
            TextBox textHeritage = (TextBox)row.Cells[6].Controls[0];
            TextBox textOwner = (TextBox)row.Cells[7].Controls[0];
            TextBox textLiens = (TextBox)row.Cells[8].Controls[0];
            TextBox textTaxes = (TextBox)row.Cells[9].Controls[0];
            //TextBox textadd = (TextBox)row.FindControl("txtadd");  
            //TextBox textc = (TextBox)row.FindControl("txtc");  
            GridView1.EditIndex = -1;
            con2.Open();
            //SqlCommand cmd = new SqlCommand("SELECT * FROM detail", conn);  
            MySqlCommand cmd = new MySqlCommand("update propertydata set ptype='" + textPtype.Text + "',acrage='" + textAcrage.Text + "',year='" + textYear.Text + "',address='" + textAddress.Text + "',city='" + textCity.Text + "',heritage='" + textHeritage.Text + "',Owner='" + textOwner.Text + "',liens='" + textLiens.Text + "',taxes='" + textTaxes.Text + "'where id='" + userid + "'",con2);
            cmd.ExecuteNonQuery();
            con2.Close();
            gvbind();
            GridView1.DataBind();  
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            gvbind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvbind();
        }
    }
}