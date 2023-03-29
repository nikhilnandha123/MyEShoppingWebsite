using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnadmin_Click(object sender, EventArgs e)
    {

        String mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\New EShopping\project\MyEShoppingWebsite\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);

        String myquery = "select * from tblAdmin";
        SqlCommand cmd = new SqlCommand();   
        cmd.CommandText = myquery;     
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String Password;
        String Username;
        Username = ds.Tables[0].Rows[0]["Username"].ToString();
        Password = ds.Tables[0].Rows[0]["Password"].ToString();
        scon.Close();
        if (Username == txtUsername.Text && Password == txtPass.Text)
        {
            Session["Username"] = Username;
            Response.Redirect("AdminHome.aspx");
        }
        else
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "K", "swal('Oops!','Your Email_Id Or Password Is Invalid','error')", true);
        }
    }
}