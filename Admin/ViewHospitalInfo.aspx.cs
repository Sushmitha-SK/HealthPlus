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

public partial class Admin_ViewHospitalInfo : System.Web.UI.Page
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
        grdHospitalInfo.DataSource = HospitalInfo.GetHospitalInfo();
        grdHospitalInfo.DataBind();
    }

    protected void grdHospitalInfo_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label HospitalId = (Label)grdHospitalInfo.Rows[e.RowIndex].FindControl("lblHospitalId");
        HospitalInfo.DeleteHospital(int.Parse(HospitalId.Text));
        grdHospitalInfo.EditIndex = -1;
        Filldata();

    }

    protected void grdHospitalInfo_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdHospitalInfo.EditIndex = -1;
        Filldata();

    }

    protected void grdHospitalInfo_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdHospitalInfo.PageIndex = e.NewPageIndex;
        grdHospitalInfo.EditIndex = -1;
        Filldata();

    }
    protected void grdHospitalInfo_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdHospitalInfo.EditIndex = e.NewEditIndex;
        Filldata();
        ((TextBox)grdHospitalInfo.Rows[e.NewEditIndex].Cells[1].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdHospitalInfo.Rows[e.NewEditIndex].Cells[2].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdHospitalInfo.Rows[e.NewEditIndex].Cells[3].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdHospitalInfo.Rows[e.NewEditIndex].Cells[4].Controls[0]).Style.Add("width", "100%");
        ((TextBox)grdHospitalInfo.Rows[e.NewEditIndex].Cells[5].Controls[0]).Style.Add("width", "100%");

    }

    protected void grdHospitalInfo_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        //   string Empno = ((Label)grdHospitalInfo.Rows[e.RowIndex].FindControl("lbl")).Text;
        string HospitalId = ((Label)grdHospitalInfo.Rows[e.RowIndex].FindControl("lbl")).Text;

        // string HospitalId = ((TextBox)grdHospitalInfo.Rows[e.RowIndex].Cells[1].Controls[0]).Text;

        string HospitalName = ((TextBox)grdHospitalInfo.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        string Address = ((TextBox)grdHospitalInfo.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string PhoneNO = ((TextBox)grdHospitalInfo.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string Location = ((TextBox)grdHospitalInfo.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string Url = ((TextBox)grdHospitalInfo.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        HospitalInfo obj = new HospitalInfo();
        obj.HospitalId = int.Parse(HospitalId);
        obj.HospitalName = HospitalName;
        obj.Address = Address;
        obj.PhoneNO = PhoneNO;
        obj.Location = Location;
        obj.Url = Url;
        obj.ModifyHospitaldetailsByAdmin();
        grdHospitalInfo.EditIndex = -1;
        Filldata();
    }

    protected void grdHospitalInfo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public string HospitalId { get; set; }
}