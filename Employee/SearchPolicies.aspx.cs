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
using System.Web.UI.WebControls;


public partial class Employee_SearchPolicies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {

            grd.DataSource = AddPolicy.ShowPolicies();
            grd.DataBind();
        }

    }
    protected void grd_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dlist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "details")
        {
            int cid = int.Parse(e.CommandArgument.ToString());
            dlist.DataSource = InsurenceCompany.Getcompanies(cid);
            dlist.DataBind();
        }
    }

    protected void Apply_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Employee/OrderInsurance.aspx");
    }
   
}