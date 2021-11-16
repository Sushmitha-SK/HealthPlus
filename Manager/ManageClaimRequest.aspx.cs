using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Manager_ManageClaimRequest : System.Web.UI.Page
{
    int ManagerID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["managerid"] != null)
            ManagerID = int.Parse(Session["managerid"].ToString());

        if (!IsPostBack)
        {
            GridView1.DataSource = ClaimRequestDetails.GetClaimRequestDetails(ManagerID);
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;

        GridView1.DataSource = ClaimRequestDetails.GetClaimRequestDetails(ManagerID);
        GridView1.DataBind();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "check")
        {


           // ScriptManager.RegisterStartupScript(this, GetType(), "Approved", "alert('The Claim Request has been approved to the employee!');", true);
           
            
             Response.Redirect("~/Manager/ClaimApproval.aspx?eno=" + e.CommandArgument.ToString());

        }

       
    }

}