using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_MangerDetails : System.Web.UI.Page
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
        grdManagerDetails.DataSource = Manager.getManagerDetails();
        grdManagerDetails.DataBind();
    }

    protected void grdManagerDetails_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void grdManagerDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label managerid = (Label)grdManagerDetails.Rows[e.RowIndex].FindControl("lblmanagerid");
        Manager.DeleteManagerDetails(int.Parse(managerid.Text));

        grdManagerDetails.EditIndex = -1;
        Filldata();
    }


    protected void grdManagerDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdManagerDetails.EditIndex = -1;
        Filldata();
    }

    protected void grdManagerDetails_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdManagerDetails.PageIndex = e.NewPageIndex;
        grdManagerDetails.EditIndex = -1;
        Filldata();

    }
    protected void grdManagerDetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdManagerDetails.EditIndex = e.NewEditIndex;
        Filldata();
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[1].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[2].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[3].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[4].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[5].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[6].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[7].Controls[0]).Style.Add("width", "90%");
        ((TextBox)grdManagerDetails.Rows[e.NewEditIndex].Cells[8].Controls[0]).Style.Add("width", "75px");

    }

    protected void grdManagerDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        string managerid = ((Label)grdManagerDetails.Rows[e.RowIndex].FindControl("lbl")).Text;
        string designation = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string firstname = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string lastname = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string username = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string password = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string address = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string contactno = ((TextBox)grdManagerDetails.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        Manager obj = new Manager();

        obj.ManagerId = int.Parse(managerid);
        obj.Designation = designation;
        obj.FirstName = firstname;
        obj.LastName = lastname;
        obj.Username = username;
        obj.Password = password;
        obj.Address = address;
        obj.ContactNo = contactno;


        obj.ModifyManagerDetails();
        grdManagerDetails.EditIndex = -1;
        Filldata();
    }

}