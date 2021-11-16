using System;
using System.Collections.Generic;
using System.Linq;
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

public partial class Admin_AddHospitalInfo : System.Web.UI.Page
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
        cmd.CommandText = "SPInsertHospitalInfo";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@HospitalName", SqlDbType.VarChar, 50);
        p.Value = HospitalName.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@Address", SqlDbType.VarChar, 50);
        p1.Value = HospitalAddress.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@PhoneNo", SqlDbType.VarChar, 50);
        p2.Value = PhoneNo.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@Location", SqlDbType.VarChar, 50);
        p3.Value = Location.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter("@URL", SqlDbType.VarChar, 50);
        p4.Value = URL.Text;
        cmd.Parameters.Add(p4);

        
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script language=javascript>alert('The Hospital Info has been added sucessfully!')</script>");

        //labelMessage.Text = "The Hospital Info has been added sucessfully";
        HospitalName.Text = "";
        HospitalAddress.Text = "";
        PhoneNo.Text = "";
        Location.Text = "";
        URL.Text = "";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }
}