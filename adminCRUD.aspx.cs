using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Municipal_Tracking_System
{
    public partial class adminCRUD : System.Web.UI.Page
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
                Response.Redirect("login.aspx");
            }
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("prop_add.aspx");

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            Response.Redirect("prop_edit.aspx");
        }

        protected void Read_Click(object sender, EventArgs e)
        {
            Response.Redirect("prop_read.aspx");
        }

        protected void Contactus_Click(object sender, EventArgs e)
        {
            Response.Redirect("prop_contactus.aspx");
        }
    }
}