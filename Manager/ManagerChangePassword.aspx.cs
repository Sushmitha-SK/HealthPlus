using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Manager_ManagerChangePassword : System.Web.UI.Page
{
    int managerid;
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
       managerid = int.Parse(Session["managerid"].ToString());
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        username = Session["password"].ToString();
        if (txtpwd.Text == username)
        {
            Manager.ManagerChangePassword(txtnewpwd.Text, managerid);

            lblMsg.Text = "Your Password is successfully changed";
        }
        else
            lblMsg.Text = "Incorrect old password!";
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtpwd.Text = "";
        txtnewpwd.Text = "";
    }
}