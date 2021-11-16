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
using System.Data.SqlClient;

public partial class Admin_PolicyRequests : System.Web.UI.Page
{

    int eno;
    AddPoliciesOnEmployees pe = new AddPoliciesOnEmployees();
    SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["eno"] != null)
            eno = int.Parse(Request.QueryString["eno"].ToString());

        if (!IsPostBack)
        {
            DataRow dr = AddPoliciesOnEmployees.getPolicyRequestDetails(eno);
            lblRequestId.Text = dr["RequestId"].ToString();
            lblPolicyId.Text = dr["PolicyId"].ToString();
            lblPolicyName.Text = dr["PolicyName"].ToString();
            lblRequestDate.Text = dr["RequestDate"].ToString();
            lblPolicyAmount.Text = dr["PolicyAmount"].ToString();
            lblpremium.Text = dr["premium"].ToString();
            lblCompanyId.Text = dr["CompanyId"].ToString();
            lblCompanyName.Text = dr["CompanyName"].ToString();
            lblEmployeeId.Text = dr["empno"].ToString();
            lblEmployeeName.Text = dr["FirstName"].ToString();
            lblHospitalId.Text = dr["medicalid"].ToString();
        }

    }

    void fillpolicydata()
    {
        pe.Empno = Convert.ToInt32(lblEmployeeId.Text);
        pe.Status = "Approved";
    }


    void fillpoliciesonemployees()
    {
        pe.Empno = Convert.ToInt32(lblEmployeeId.Text);
        pe.Policyid = Convert.ToInt32(lblPolicyId.Text);
        pe.Policyname = lblPolicyName.Text;
        pe.Policyamount = Convert.ToDecimal(lblPolicyAmount.Text);
        pe.Policyduration = int.Parse(dropyear.SelectedItem.ToString());
        pe.Premium = Convert.ToDecimal(lblpremium.Text);
        pe.Pstartdate = dp_policysdate.CalendarDate.Date;
        pe.Penddate = dp_policyedate.CalendarDate.Date;
        pe.Companyid = lblCompanyId.Text;
        pe.Companyname = lblCompanyName.Text;
        pe.Medical = lblHospitalId.Text;
    }

    void checkpoliciesonemployeesdata()
    {
        int i = AddPoliciesOnEmployees.getPolicycount(eno);
        if (i > 0)
        {
            Response.Write("<script language=javascript>alert('The Employee already has a policy!')</script>");
        }
        else
        {
            pe.Insertpoliciesonemployees();
            pe.UpdatePolicyRequestStatus();
            this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('The Policy Request has been approved to the Employee!');" + "window.location.href='RequestonEmployees.aspx';" + "<" + "/script>");
        }
    }

    void FillData()
    {
        pe.Requestid = Convert.ToInt32(lblRequestId.Text);
    }

   

    protected void btnadd_Click(object sender, EventArgs e)
    {
        fillpoliciesonemployees();
        fillpolicydata();
        checkpoliciesonemployeesdata();
        // checkPolicyStatus();   
    }

    protected void btndeleteRequest_Click(object sender, EventArgs e)
    {

        FillData();
        pe.DeletePolicyRequest();
        this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('The Policy Request has been rejected successfully!');" + "window.location.href='RequestonEmployees.aspx';" + "<" + "/script>");

        // Response.Write("<script language=javascript>alert('The Claim Request has been rejected successfully!')</script>");
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/RequestonEmployees.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}