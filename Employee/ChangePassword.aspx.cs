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


public partial class Employee_ChangePassword : System.Web.UI.Page
{
    int empno;
    string username;

    protected void Page_Load(object sender, EventArgs e)
    {
        empno = int.Parse(Session["empno"].ToString());
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        username = Session["password"].ToString();
        
        //if (txtpwd.Text == "")
        //{
        //   lblMsg.Text = "Enter Old Password";
        //    //Response.Write("<script language=javascript>alert('Enter Old Password!')</script>");

        //}

        //else if (txtnewpwd.Text == "")
        //{
        //    lblMsg.Text = "Enter new password";
        //}

         if (txtpwd.Text == username)
        {
            EmpRegister.ChangePassword(txtnewpwd.Text, empno);
            Response.Write("<script language=javascript>alert('Your Password is successfully changed!')</script>");
            //lblMsg.Text = "Your Password is successfully changed";
        }
        else
            //lblMsg.Text = "Incorrect password!";
         Response.Write("<script language=javascript>alert('Incorrect password!')</script>");
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtpwd.Text = "";
        txtnewpwd.Text = "";
    }
}