using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_DependentDetails : System.Web.UI.Page
{
    string empno;
    DataSet ds;
    DependentDetails dd = new DependentDetails();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ds = DependentDetails.ShowEmployeeID();
            ViewState["ds"] = ds;
            ddleid.DataSource = ds;
            ddleid.DataTextField = "empno";
            ddleid.DataValueField = "empno";
            ddleid.DataBind();
            ddleid.Items.Insert(0, "--Select--");
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        Filldata();
        dd.InsertDependentDetails();
        Response.Write("<script language='javascript'>alert('The Dependent details has been added successfully')</script>");
        clearContents();
    }

    void Filldata()
    {
        if (ddleid.SelectedItem.ToString() != "--Select--")
        {
            dd.EmployeeID = Convert.ToInt32(ddleid.SelectedItem.ToString());
            dd.EmployeeName = txtename.Text;
            dd.DependentName = txtdependentname.Text;
            dd.Relationship = ddlrelationship.SelectedItem.ToString();
            dd.Address = txtaddress.Text;
            dd.PhoneNo = txtPhoneno.Text;
            dd.EmailID = txtemailid.Text;
            dd.DOB = dpdob.CalendarDate;

        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clearContents();

    }

    void clearContents()
    {
        ddleid.Items.Insert(0, "--Select--");
        txtename.Text = "";
        txtdependentname.Text = "";
        ddlrelationship.Items.Insert(0, "--Select--");
        txtaddress.Text = "";
        txtPhoneno.Text = "";
        txtemailid.Text = "";
        dpdob.CalendarDate = DateTime.Today;
    }

    protected void ddlrelationship_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ddleid_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = (DataSet)ViewState["ds"];
        if (ddleid.SelectedItem.ToString() != "--Select--")
        {
            DataRow r = ds.Tables[0].Select("empno=" + ddleid.SelectedItem)[0];
            txtename.Text = r[1].ToString();
        }
        else
        {
            txtename.Text = "";
        }
    }


    public static string GetDynamicContent(string contextKey)
    {
        return default(string);
    }
}