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

public partial class Admin_ViewPolicies : System.Web.UI.Page
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
        grdPolicies.DataSource = Policies.GetPolicyInfo();
        grdPolicies.DataBind();
    }

    protected void grdPolicies_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdPolicies.PageIndex = e.NewPageIndex;
        grdPolicies.EditIndex = -1;
        Filldata();
    }

    protected void grdPolicies_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdPolicies.EditIndex = e.NewEditIndex;
        Filldata();
        ((TextBox)grdPolicies.Rows[e.NewEditIndex].Cells[1].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdPolicies.Rows[e.NewEditIndex].Cells[2].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdPolicies.Rows[e.NewEditIndex].Cells[3].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdPolicies.Rows[e.NewEditIndex].Cells[4].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdPolicies.Rows[e.NewEditIndex].Cells[5].Controls[0]).Style.Add("width", "100%");
    }

    protected void grdPolicies_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string policyid = ((Label)grdPolicies.Rows[e.RowIndex].FindControl("lbl")).Text;
        string policyname = ((TextBox)grdPolicies.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string policydesc = ((TextBox)grdPolicies.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string amount = ((TextBox)grdPolicies.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string companyid = ((TextBox)grdPolicies.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string medicalid = ((TextBox)grdPolicies.Rows[e.RowIndex].Cells[5].Controls[0]).Text;

        AddPolicy obj = new AddPolicy();
        obj.PtypeId = int.Parse(policyid);
        obj.Ptypename = policyname;
        obj.Pdesc = policydesc;
        obj.pamount = amount;
        obj.CompanyId = int.Parse(companyid);
        obj.Medicalid = medicalid;
        obj.ModifyPolicyDetails();
        grdPolicies.EditIndex = -1;
        Filldata();
    }

    protected void grdPolicies_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdPolicies_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdPolicies.EditIndex = -1;
        Filldata();
    }
}