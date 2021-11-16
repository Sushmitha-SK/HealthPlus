using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_ManagerLoginControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtuid.Focus();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (txtuid.Text.Trim().Length > 50)

            lblMsg.Text = "Username must be within 50 characters";
        if (txtpwd.Text.Trim().Length > 10)

            lblMsg.Text = "Password should within 50 characters";
        string managerid = Manager.GETManagerLogin(txtuid.Text, txtpwd.Text);

        if (!String.IsNullOrEmpty(managerid))
        {
            Session["managerid"] = managerid;
            Session["password"] = txtpwd.Text;
            Response.Redirect("~/Manager/ManagerHomepage.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Invalid Username or Password!')</script>");
            //lblMsg.Text = "Invalid Username or Password";
            txtpwd.Focus();
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtuid.Text = "";
        txtpwd.Text = "";
    }

    public object managerid { get; set; }
    
    
    protected void forgotPassword_Click(object sender, EventArgs e)
    {

    }
}