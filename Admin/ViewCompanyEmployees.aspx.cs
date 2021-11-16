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

public partial class Admin_ViewCompanyEmployees : System.Web.UI.Page
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
        grdemployes.DataSource = EmpRegister.GetEmpOwnDetails();
        grdemployes.DataBind();
    }

    protected void grdemployes_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label empno = (Label)grdemployes.Rows[e.RowIndex].FindControl("lblempid");
        EmpRegister.DeleteEmp(int.Parse(empno.Text));
        grdemployes.EditIndex = -1;
        Filldata();

    }

    protected void grdemployes_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdemployes.EditIndex = -1;
        Filldata();
    }
    protected void grdemployes_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdemployes.PageIndex = e.NewPageIndex;
        grdemployes.EditIndex = -1;
        Filldata();

    }
    protected void grdemployes_RowEditing(object sender, GridViewEditEventArgs e)
    {


        grdemployes.EditIndex = e.NewEditIndex;
        Filldata();
        ((TextBox)grdemployes.Rows[e.NewEditIndex].Cells[1].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdemployes.Rows[e.NewEditIndex].Cells[2].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdemployes.Rows[e.NewEditIndex].Cells[3].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdemployes.Rows[e.NewEditIndex].Cells[5].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdemployes.Rows[e.NewEditIndex].Cells[6].Controls[0]).Style.Add("width", "100%");

    }
    protected void grdemployes_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string empno = ((Label)grdemployes.Rows[e.RowIndex].FindControl("lbl")).Text;
        string name = ((TextBox)grdemployes.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string phoneno = ((TextBox)grdemployes.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string address = ((TextBox)grdemployes.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string designation = ((TextBox)grdemployes.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string salary = ((TextBox)grdemployes.Rows[e.RowIndex].Cells[6].Controls[0]).Text;

        EmpRegister obj = new EmpRegister();
        obj.Empno = int.Parse(empno);
        obj.Username = name;
        obj.Contactno = phoneno;
        obj.Address = address;
        obj.Designation = designation;
        obj.Salary = Convert.ToDecimal(salary);
        obj.ModifyempdetailsByAdmin();
        grdemployes.EditIndex = -1;
        Filldata();
    }



    protected void grdemployes_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}