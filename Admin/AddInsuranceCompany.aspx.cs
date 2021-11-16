using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_AddInsuranceCompany : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "InsertCompanydetails";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@cname", SqlDbType.VarChar, 50);
        p.Value = txtcname.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@address", SqlDbType.VarChar, MAX);
        p1.Value = txtaddress.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@phone", SqlDbType.VarChar, 50);
        p2.Value = txtpno.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@url", SqlDbType.VarChar, 50);
        p3.Value = txtcurl.Text;
        cmd.Parameters.Add(p3);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script language=javascript>alert('The Insurance Company has been added sucessfully')</script>");
        // lblmsg.Text = "The Insurance Company has been added sucessfully";
        txtcname.Text = "";
        txtaddress.Text = "";
        txtpno.Text = "";
        txtcurl.Text = "";

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }
    public int MAX { get; set; }
}