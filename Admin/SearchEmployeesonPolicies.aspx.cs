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

public partial class Admin_SearchEmployeesonPolicies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddldisnation.Items.Insert(0, "--Select--");
            ddldisnation.DataSource = EmpRegister.getEmpDesignation();
            ddldisnation.DataTextField = "designation";

            ddldisnation.DataBind();
        }


    }
    protected void ddlpolacyname_SelectedIndexChanged(object sender, EventArgs e)
    {
        grd.DataSource = AddPoliciesOnEmployees.GetPolicyOnEmployee(ddldisnation.SelectedItem.ToString());
        grd.DataBind();

    }
    protected void grd_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}