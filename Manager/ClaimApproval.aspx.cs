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


public partial class Manager_ClaimApproval : System.Web.UI.Page
{
    int empno;

    ClaimRequestDetails cr = new ClaimRequestDetails();
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (Request.QueryString["eno"] != null)

            //empno = int.Parse(Session["empno"].ToString());
            empno = int.Parse(Request.QueryString["eno"].ToString());
       
        if (!IsPostBack)
        {
            
            DataRow r = ClaimRequestDetails.GetClaimDetails(empno);

            lblEmpId.Text = r["empno"].ToString();
            lblEmpName.Text = r["firstname"].ToString();
            lblClaimId.Text = r["claimno"].ToString();
            lblPolicyId.Text = r["policyid"].ToString();
            lblPolicyName.Text = r["policyname"].ToString();
            lblPolicyAmt.Text = r["policyamount"].ToString();
            lblPolicysdate.Text = r["pstartdate"].ToString();
            lblPenddate.Text = r["penddate"].ToString();
            lblCid.Text = r["companyid"].ToString();
            lblCName.Text = r["CompanyName"].ToString();
            lblHospitalId.Text = r["HospitalId"].ToString();
            lblHospitalName.Text = r["HospitalName"].ToString();
            lblReason.Text = r["reason"].ToString();
            lblReqClaimAmt.Text = r["claimamount"].ToString();

            DataRow drow = ClaimRequestDetails.getTotalAmount(empno);
            lblTotalAmount.Text = drow["TotalAmount"].ToString();



            if (lblReason.Text == "Accident")
            {
                lblClmAmtApproved.Text = ClaimRequestDetails.GetAccidentClaimAmt(empno).ToString();
                
            }
            else if (lblReason.Text == "PlannedHospitalisation")
            {
                lblClmAmtApproved.Text = ClaimRequestDetails.GetComplitedClaimAmt(empno).ToString();

            }

            else
            {
                lblClmAmtApproved.Text = ClaimRequestDetails.GetClaimAmountForDeath(empno).ToString();
            }
           


        }
       
    }


    void FillData()
    {
        cr.Empno = Convert.ToInt32(lblEmpId.Text);
        cr.EmpName = lblEmpName.Text;
        cr.ClaimId = Convert.ToInt32(lblClaimId.Text);
        cr.PolicyId = Convert.ToInt32(lblPolicyId.Text);
        cr.PolicyName = lblPolicyName.Text;
        cr.PolicyAmount = Convert.ToDecimal(lblPolicyAmt.Text);
        cr.PolicySDate = Convert.ToDateTime(lblPolicysdate.Text);
        cr.PolicyEDate = Convert.ToDateTime(lblPenddate.Text);
        cr.CompanyId = Convert.ToInt32(lblCid.Text);
        cr.CompanyName = lblCName.Text;
        cr.HospitalId = Convert.ToInt32(lblHospitalId.Text);
        cr.HospitalName = lblHospitalName.Text;
        cr.Reason = lblReason.Text;
        cr.ReqClaimAmt = Convert.ToDecimal(lblReqClaimAmt.Text);
        cr.AppClaimAmt = Convert.ToDecimal(lblClmAmtApproved.Text);
        cr.Status = "Approved";
        cr.RequestDate = DateTime.Today;

    }



    protected void approve_Click(object sender, EventArgs e)
    {
        FillData();

        cr.ApproveClaimDetails();

        Response.Write("<script language=javascript>alert('The Claim Request has been approved for the Employee!')</script>");

        Response.Redirect("ManageClaimRequest.aspx");
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        FillData();
        cr.ClaimRequest_Delete();
        Response.Write("<script language=javascript>alert('The Claim Request has been rejected successfully!')</script>");
        Response.Redirect("ManageClaimRequest.aspx");

    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageClaimRequest.aspx");
    }

    public int cno { get; set; }

  //  public int empno { get; set; }



   
}