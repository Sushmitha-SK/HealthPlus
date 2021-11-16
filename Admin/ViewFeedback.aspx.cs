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
using iTextSharp.text.html.simpleparser;
using System.IO;

public partial class Admin_ViewFeedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Filldata();
        }
    }

    void Filldata()
    {
        grdFeedback.DataSource = Feedback.getFeedbackDetails();
        grdFeedback.DataBind();
    }

    protected void grdFeedback_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdFeedback.PageIndex = e.NewPageIndex;
        grdFeedback.EditIndex = -1;
        Filldata();
    }

    protected void grdFeedback_SelectedIndexChanged(object sender, EventArgs e)
    {


    }


    protected void grdFeedback_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label SlNo = (Label)grdFeedback.Rows[e.RowIndex].FindControl("lblSlNo");
        Feedback.DeleteFeedback(int.Parse(SlNo.Text));
        grdFeedback.EditIndex = -1;
        Filldata();

    }
   
}