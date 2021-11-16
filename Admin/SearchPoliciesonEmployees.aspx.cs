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

public partial class Admin_SearchPoliciesonEmployees : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlpolacyname.DataSource = AddPolicy.Getpolicies();
            ddlpolacyname.DataTextField = "policyname";
            ddlpolacyname.DataBind();
        }
    }
    protected void ddlpolacyname_SelectedIndexChanged(object sender, EventArgs e)
    {
        grd.DataSource = AddPoliciesOnEmployees.GetEmployeeOnPolicy(ddlpolacyname.SelectedItem.ToString());
        grd.DataBind();
    }
    protected void grd_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}