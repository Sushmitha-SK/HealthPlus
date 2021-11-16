using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Web.Security;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Employee_EmployeeHomePageaspx : System.Web.UI.Page
{
    int empno;
    PolicyRequestDetails ps = new PolicyRequestDetails();
    SqlConnection cn;
    SqlCommand cmd;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = System.DateTime.Now.ToLongDateString();
        conn = new SqlConnection("user id=sa;password=admin; Data Source=HP-PC; database=HealthPlus");
        conn.Open();

        if (Session["empno"] != null)
            empno = int.Parse(Session["empno"].ToString());

        if (!IsPostBack)
        {
            DataRow er = EmpRegister.getemployeename(empno).Tables[0].Rows[0];
            string st = er["firstname"].ToString();
            empname.Text = st.ToString();


            SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
            if (cn.State == ConnectionState.Closed)
            {
                cn.Open();
            }
            SqlCommand com = new SqlCommand();
            com.CommandText = "select count(*) from PolicyRequestDetails where status='Inactive' and empno= " + Session["empno"];
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
            cmd.CommandText = "select count(*) from ApplyClaimRequest where status='Inactive' and empno= " + Session["empno"];
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

    }
    protected void button_ViewNotification(object sender, ImageClickEventArgs e)
    {
        notifications_Panel.Visible = true;
    }
    

    
}