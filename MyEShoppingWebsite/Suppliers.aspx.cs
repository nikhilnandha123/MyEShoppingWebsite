using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
            
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\New EShopping\project\MyEShoppingWebsite\App_Data\Database.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        
        string query = "insert into tblSupplier (SupplierName,SupplierCompanyName,SupplierContactPerson,Address,SupplierBranch,SupplierEmail,SupplierPhone1,SupplierPhone2,SupplierCity,SupplierZip)values(@SupplierName,@SupplierCompanyName,@Address,@SupplierContactPerson,@SupplierBranch,@SupplierEmail,@SupplierPhone1,@SupplierPhone2,@SupplierCity,@SupplierZip) ";
        SqlCommand cmd = new SqlCommand(query,con);
        cmd.Parameters.AddWithValue("@SupplierName", txtSupplierName.Text);
        cmd.Parameters.AddWithValue("@SupplierCompanyName",txtSupplierCompanyName.Text);
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@SupplierContactPerson", txtContact.Text);
        cmd.Parameters.AddWithValue("@SupplierBranch", txtbranch.Text);
        cmd.Parameters.AddWithValue("@SupplierEmail", txtemail.Text);
        cmd.Parameters.AddWithValue("@SupplierPhone1", txtphone1.Text);
        cmd.Parameters.AddWithValue("@SupplierPhone2", txtphone2.Text);  
        cmd.Parameters.AddWithValue("@SupplierCity", txtcity.Text);
        cmd.Parameters.AddWithValue("@SupplierZip", txtpin.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        
        Response.Write("<script>alert('Supplier Added')</script>");
        
        txtSupplierName.Text = "";
        txtSupplierCompanyName.Text = "";
        txtAddress.Text = "";
        txtContact.Text = "";
        txtbranch.Text = "";
        txtemail.Text = "";
        txtphone1.Text = "";
        txtphone2.Text = "";
        txtcity.Text = "";
        txtpin.Text  = "";

    }
}

