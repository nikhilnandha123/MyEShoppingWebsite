using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdminlogout_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/Default.aspx");
        Session["Username"] = null;
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {

    }

    protected void btnlogout_Click1(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("~/Default.aspx");
    }
}
