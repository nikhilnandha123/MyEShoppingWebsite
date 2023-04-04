using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminHome : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btncount_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(Uid) from tblUsers";
        
        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblCount.Text = "" + row_count.ToString();
        }
        catch(Exception ex)
        {
            return; 
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    protected void btnproduct_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(Pid) from tblProducts";

        try
        {
           con.Open();
           cmd = new SqlCommand(sql, con);
           Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
           cmd.Dispose();
           con.Close();
           lblcount1.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {      
            return;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    protected void btncustomer_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(OrderProId) from tblOrderProducts";

        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblcount2.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {
            return;
        }   
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    protected void btnBrand_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(BrandId) from tblBrands";

        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblcount3.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {
            return;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    protected void btnCategory_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(CatId) from tblCategory";

        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblcount4.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {
            return;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    protected void btnSubCategory_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(SubCatId) from tblSubCategory";

        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblcount5.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {
            return;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

    protected void btncart_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(OrderId) from tblOrders";

        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblcount6.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {
            return;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }

   
    protected void btnPurches_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd;
        string sql = "select count(Purchaseid) from tblPurchase";

        try
        {
            con.Open();
            cmd = new SqlCommand(sql, con);
            Int32 row_count = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Close();
            lblcount8.Text = "" + row_count.ToString();
        }
        catch (Exception ex)
        {
            return;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
        }
    }
}