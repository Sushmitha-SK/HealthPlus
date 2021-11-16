using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_AdminHomePage : System.Web.UI.Page
{

    PolicyRequestDetails ps = new PolicyRequestDetails();
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = System.DateTime.Now.ToLongDateString();
        lblWelcome.Text = "WELCOME " + Session["Username"].ToString().ToUpper();
        SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }
        SqlCommand com = new SqlCommand();
        com.CommandText = "select count(*) from PolicyRequestDetails where status='Inactive'";
        com.CommandType = CommandType.Text;
        com.Connection = cn;
        int c;
        c = int.Parse(com.ExecuteScalar().ToString());
        lblPolicyRequestNotify.Visible = true;
        lblPolicyRequestNotify.Text = "You have " + c.ToString() + " pending applications to approve.";

        if (c == 0)
        {
            //Button1.Enabled = false;
        }

        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }

        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select count(*) from ApplyClaimRequest where status='Inactive'";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = cn;
        int claim;
        claim = int.Parse(cmd.ExecuteScalar().ToString());
        lblClaimRequestNotify.Visible = true;
        lblClaimRequestNotify.Text = "You have " + claim.ToString() + " pending applications to approve.";
        if (claim == 0)
        {
            //Button2.Enabled = false;
        }
    }


    //protected void CloseWindow(object sender, EventArgs e)
    //{

    //}


    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    qv.ShowPopupWindow(); 
    //}
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    PopupPanel1.ShowPopupWindow();
    //}
    //protected void CloseWindowClaim(object sender, EventArgs e)
    //{

    //}


}