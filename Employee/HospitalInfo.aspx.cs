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
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Employee_HospitalInfo : System.Web.UI.Page
{
    int pid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["pid"] != null)
            pid = int.Parse(Request.QueryString["pid"].ToString());
        if (!IsPostBack)
        {
            DataRow dr = AddPolicy.GetPolicyDetails(pid);
            lblid.Text = dr[0].ToString();
            lblname.Text = dr[1].ToString();
            PolicyDesc.Text = dr[2].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
    {

        Response.Redirect("~/Employee/MedicalSupport.aspx");
    }
}