using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Municipal_Tracking_System
{
    public partial class DeleteData : System.Web.UI.Page
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
    }
}