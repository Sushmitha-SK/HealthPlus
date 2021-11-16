using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class UserControls_AdminLoginControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtusername.Focus();
    }
    protected void btnadminlogin_Click(object sender, EventArgs e)
    {
        //if (txtusername.Text.Trim().Length > 50)
        //{
        //    Response.Write("<script language=javascript>alert('Username must be within 50 characters!')</script>");
        //    //lblMsg.Text = "Username must be within 50 characters";

        //}

        //else if (txtpasswd.Text.Trim().Length > 10)
        //{
        //    Response.Write("<script language=javascript>alert('Password should within 50 characters!')</script>");

        //    //lblMsg.Text = "Password should within 50 characters";

        //}

        string adminid = AdminLogin.AdminLogIn(txtusername.Text, txtpasswd.Text);

        if (!String.IsNullOrEmpty(adminid))
        {
            Session["UserName"] = adminid;
            Session["PassWord"] = txtpasswd.Text;
            Response.Redirect("~/Admin/AdminHomePage.aspx");
        }
        
        else
        {

            Response.Write("<script language=javascript>alert('Invalid Username or Password!')</script>");


            // lblMsg.Text = "Invalid Username or Password";
            txtpasswd.Focus();
        }
    }
    protected void btnadminreset_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpasswd.Text = "";
    }

}