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

public partial class Employee_UpdateOwnDetails : System.Web.UI.Page
{
    EmpRegister OwnDetailsObj = new EmpRegister();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
                {
               if (Session["empno"] != null)
               {
               DataRow rec= (DataRow) EmpRegister.GetEmpOwnDetails(int.Parse(Session["empno"].ToString())).Tables[0].Rows[0];

               txtfname.Text = rec["firstname"].ToString();
               txtlname.Text = rec["lastname"].ToString();
               txtusername.Text = rec["username"].ToString();
               txtpwd.Text =rec["password"].ToString();
               txtaddress.Text =rec["address"].ToString();
               txtcontactno.Text =rec["contactno"].ToString();
               txtstate.Text = rec["state"].ToString();
               txtcountry.Text = rec["country"].ToString();
               txtcity.Text = rec["city"].ToString();
              }
               txtfname.Focus();
                }
    }

    private void Filldata()
    {
        OwnDetailsObj.Firstname = txtfname.Text;
        OwnDetailsObj.Lastname = txtlname.Text;
        OwnDetailsObj.Username = txtusername.Text;
        OwnDetailsObj.Password = txtpwd.Text;
        OwnDetailsObj.Address = txtaddress.Text;
        OwnDetailsObj.Contactno = txtcontactno.Text;
        OwnDetailsObj.State = txtstate.Text;
        OwnDetailsObj.City = txtcity.Text;
        OwnDetailsObj.Country = txtcountry.Text;
        OwnDetailsObj.Empno = int.Parse(Session["empno"].ToString());

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Filldata();
        OwnDetailsObj.UpdateEmpOwnDetails();
        Response.Write("<script language=javascript>alert('Your information has been updated successfully!')</script>");
        //lblmsg.Text = "Ur information is updated";
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtfname.Text = "";
        txtlname.Text = "";
        txtusername.Text = "";
        txtpwd.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";
        txtstate.Text = "";
        txtcountry.Text = "";
        txtcity.Text = "";
        lblmsg.Text = "";
    }
}