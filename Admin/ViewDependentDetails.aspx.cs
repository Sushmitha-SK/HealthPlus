using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ViewDependentDetails : System.Web.UI.Page
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
        grd_dependentdetails.DataSource = DependentDetails.getDependentDetails();
        grd_dependentdetails.DataBind();
    }

    protected void grd_dependentdetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label DependentId = (Label)grd_dependentdetails.Rows[e.RowIndex].FindControl("lblDependentId");

        DependentDetails.DeleteDependent(int.Parse(DependentId.Text));
        grd_dependentdetails.EditIndex = -1;
        Filldata();

    }
    protected void grd_dependentdetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grd_dependentdetails.EditIndex = -1;
        Filldata();
    }

    protected void grd_dependentdetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grd_dependentdetails.PageIndex = e.NewPageIndex;
        grd_dependentdetails.EditIndex = -1;
        Filldata();

    }

    protected void grd_dependentdetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grd_dependentdetails.EditIndex = e.NewEditIndex;
        Filldata();
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[1].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[2].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[3].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[5].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[6].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[7].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grd_dependentdetails.Rows[e.NewEditIndex].Cells[8].Controls[0]).Style.Add("width", "100%");

    }

    protected void grd_dependentdetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string DependentID = ((Label)grd_dependentdetails.Rows[e.RowIndex].FindControl("lbl")).Text;
        string EmployeeId = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string EmployeeName = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string DependentName = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string Relationship = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string Address = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string PhoneNo = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string EmailID = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string DOB = ((TextBox)grd_dependentdetails.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        DependentDetails obj = new DependentDetails();
        obj.DependentID = int.Parse(DependentID);
        obj.EmployeeID = int.Parse(EmployeeId);
        obj.EmployeeName = EmployeeName;
        obj.DependentName = DependentName;
        obj.Relationship = Relationship;
        obj.Address = Address;
        obj.PhoneNo = PhoneNo;
        obj.EmailID = EmailID;
        obj.DOB = Convert.ToDateTime(DOB);

        obj.ModifyDependentDetails();
        grd_dependentdetails.EditIndex = -1;
        Filldata();
    }
    protected void grd_dependentdetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}