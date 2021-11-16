using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee_ClaimRequestStatus : System.Web.UI.Page
{
    int empno;
    protected void Page_Load(object sender, EventArgs e)
    {
        empno = int.Parse(Session["empno"].ToString());
        if (!IsPostBack)
        {
            GridView1.DataSource = ClaimRequestDetails.getEmpClaimReqDetails(empno);
            GridView1.DataBind();
           
        }
    }


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}