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

public partial class Manager_ManagerUpdateOwnDetails : System.Web.UI.Page
{
    Manager updatedetails = new Manager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["managerid"] != null)
            {
                DataRow rec = (DataRow)Manager.getManagerOwnDetails(int.Parse(Session["managerid"].ToString())).Tables[0].Rows[0];

                txtfname.Text = rec["firstname"].ToString();
                txtlname.Text = rec["lastname"].ToString();
                txtusername.Text = rec["username"].ToString();
                txtpwd.Text = rec["password"].ToString();
                txtaddress.Text = rec["address"].ToString();
                txtcontactno.Text = rec["contactno"].ToString();

            }
            txtfname.Focus();
        }
    }

    private void Filldata()
    {
        updatedetails.FirstName = txtfname.Text;
        updatedetails.LastName = txtlname.Text;
        updatedetails.Username = txtusername.Text;
        updatedetails.Password = txtpwd.Text;
        updatedetails.Address = txtaddress.Text;
        updatedetails.ContactNo = txtcontactno.Text;
        updatedetails.ManagerId = int.Parse(Session["managerid"].ToString());

    }


    private void cleardata()
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtusername.Text = "";
        txtpwd.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";

    }

    protected void update_btnclick(object sender, EventArgs e)
    {
        Filldata();
        updatedetails.UpdateManagerDetails();
        Response.Write("<script language=javascript>alert('Your information is updated successfully!')</script>");
        cleardata();
    }
    protected void cancel_btnclick(object sender, EventArgs e)
    {
        Response.Redirect("ManagerHomePage.aspx");
    }
}

