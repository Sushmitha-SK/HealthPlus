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


public partial class Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

 
   
    protected void submit_Click(object sender, EventArgs e)
    {
        //checkvalidation();
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SpFeedback";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        p.Value = txtUsername.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@Email", SqlDbType.VarChar,50);
        p1.Value = txtMail.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@Subject", SqlDbType.VarChar,50);
        p2.Value = txtSubject.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@Feedback", SqlDbType.VarChar, 100);
        p3.Value = txtMsg.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter("@Status", SqlDbType.VarChar, 50);
        p4.Value= "Unread";
        cmd.Parameters.Add(p4);

        

        cmd.ExecuteNonQuery();
        cn.Close();
        //ScriptManager.RegisterStartupScript(this, GetType(), "Success", "alert('The Feedback has been submitted successfully!');", true);
        Response.Write("<script language=javascript>alert('The Feedback has been submitted successfully!')</script>");
        txtUsername.Text = "";
        txtMail.Text = "";
        txtSubject.Text = "";
        txtSubject.Text = "";
        txtMsg.Text = "";
    }
    protected void reset_Click(object sender, EventArgs e)
    {
        txtUsername.Text = "";
        txtMail.Text = "";
        txtSubject.Text = "";
        txtSubject.Text = "";
        txtMsg.Text = "";
    }
}