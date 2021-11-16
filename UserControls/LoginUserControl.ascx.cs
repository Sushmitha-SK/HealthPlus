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
using System.Windows.Forms;

public partial class LoginUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtuid.Focus();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        if (txtuid.Text.Trim().Length > 50)

            //Response.Write("<script language='javascript'>alert('Username must be within 50 characters')</script>");
            lblMsg.Text = "Username must be within 50 characters";



        if (txtpwd.Text.Trim().Length > 10)


            lblMsg.Text = "Password should within 50 characters";


        string empno = EmpRegister.GETEmpLogin(txtuid.Text, txtpwd.Text);

        if (!String.IsNullOrEmpty(empno))
        {
            Session["empno"] = empno;
            Session["password"] = txtpwd.Text;
            Response.Redirect("~/Employee/EmployeeHomePage.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('Invalid Username or Password')</script>");
            txtpwd.Focus();
        }
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtuid.Text = "";
        txtpwd.Text = "";
    }

}