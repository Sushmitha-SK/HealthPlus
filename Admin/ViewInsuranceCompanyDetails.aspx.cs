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


public partial class Admin_ViewInsuranceCompanyDetails : System.Web.UI.Page
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
        grdInsuranceCompany.DataSource = InsurenceCompany.GetInsuranceCompanyInfo();
        grdInsuranceCompany.DataBind();
    }

    protected void grdInsuranceCompany_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {


    }

    protected void grdInsuranceCompany_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdInsuranceCompany.PageIndex = e.NewPageIndex;
        grdInsuranceCompany.EditIndex = -1;
        Filldata();

    }

    protected void grdInsuranceCompany_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdInsuranceCompany.EditIndex = e.NewEditIndex;
        Filldata();

        ((TextBox)grdInsuranceCompany.Rows[e.NewEditIndex].Cells[1].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdInsuranceCompany.Rows[e.NewEditIndex].Cells[2].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdInsuranceCompany.Rows[e.NewEditIndex].Cells[3].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdInsuranceCompany.Rows[e.NewEditIndex].Cells[4].Controls[0]).Style.Add("width", "100%");


    }

    protected void grdInsuranceCompany_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string CompanyId = ((Label)grdInsuranceCompany.Rows[e.RowIndex].FindControl("lbl")).Text;
        string CompanyName = ((TextBox)grdInsuranceCompany.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string Address = ((TextBox)grdInsuranceCompany.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string Phone = ((TextBox)grdInsuranceCompany.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string CompanyURL = ((TextBox)grdInsuranceCompany.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        InsurenceCompany obj = new InsurenceCompany();

        obj.Cid = int.Parse(CompanyId);
        obj.Cname = CompanyName;
        obj.Address = Address;
        obj.Phone = Phone;
        obj.Url = CompanyURL;

        obj.ModifyInsuranceCompanyDetails();
        grdInsuranceCompany.EditIndex = -1;
        Filldata();
    }

    protected void grdInsuranceCompany_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grdInsuranceCompany_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdInsuranceCompany.EditIndex = -1;
        Filldata();
    }

}