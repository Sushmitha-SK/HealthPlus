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

public partial class Employee_MedicalSupport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            grd.DataSource = Medicalsupport.GetInfo();
            grd.DataBind();
        }
    }

    protected void grd_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Policy")
        {
            
                grd1.DataSource = AddPolicy.GetSupportingPolicy(e.CommandArgument.ToString());
                grd1.DataBind();
             
            

        }

    }

    protected void grd1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "policy")
        {
            Response.Redirect("Hospitalinfo.aspx?pid=" + e.CommandArgument.ToString());
        }
    }
    protected void grd_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}