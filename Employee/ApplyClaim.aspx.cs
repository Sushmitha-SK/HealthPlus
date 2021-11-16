using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Windows.Forms;
using System.Web.UI;


public partial class Employee_ApplyClaim : System.Web.UI.Page
{
    int empno;
    private int hospitalid;
    ApplyClaim claimReq = new ApplyClaim();
    SqlCommand sqlcmd;
    SqlConnection conn;
    SqlDataReader dr;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection("user id=sa;password=admin; Data Source=HP-PC; database=HealthPlus");
        conn.Open();
        if (Session["empno"] != null)
            empno = int.Parse(Session["empno"].ToString());
        if (!IsPostBack)
        {
            try
            {
                ds = ApplyClaim.getDependentDetails(empno);
                ViewState["ds"] = ds;
                pname.DataSource = ds;
                pname.DataTextField = "DepDetails";
                pname.DataValueField = "DepDetails";
                pname.DataBind();
                pname.Items.Insert(0, "--Select--");
                DataRow r = ApplyClaim.getPolicydetails(empno).Tables[0].Rows[0];
                policyid.Text = r["policyid"].ToString();
                policyname.Text = r["policyname"].ToString();
                policyamt.Text = r["policyamount"].ToString();
                premium.Text = r["premium"].ToString();
                policystartdate.DateFormat = r["pstartdate"].ToString();
                policyenddate.DateFormat = r["penddate"].ToString();
                HospitalId.Text = r["medical"].ToString();
                totalamount.Text = r["TotalAmount"].ToString();
            }

            catch (Exception ex)
            {
               
                MessageBox.Show("You have no policies","Alert!");
               
                //Response.Write("<script language='javascript'> alert('You have no policies!')</script>");
                Response.Redirect("EmployeeHomepage.aspx");
                //this.ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script language=\"javaScript\">" + "alert('You have no policies!');" + "window.location.href='EmployeeHomepage.aspx';" + "<" + "/script>");
            }
        }
    }


    protected void relationship_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {

        Filldata();

        claimReq.ClaimRequest();

        Response.Write("<script language='javascript'>alert('Request is sent to admin')</script>");
        policyid.Text = "";
        policyname.Text = "";
        policyamt.Text = "";
        premium.Text = "";
        policystartdate.Date = System.DateTime.Today;
        policyenddate.Date = System.DateTime.Today;
        dateofadmit.CalendarDate = System.DateTime.Today;
        dateofdischarge.CalendarDate = System.DateTime.Today;
        policyenddate.InitialTimePickerText = "";
        relationship.SelectedValue = "--Select--";
        reason.SelectedValue = "--Select--";
        ClaimAmt.Text = "";
        totalamount.Text = "";
        pname.SelectedIndex = 0;
        relationship.SelectedIndex = 0;
        HospitalId.Text = "";
        reason.SelectedIndex = 0;



    }


    void Filldata()
    {


        //  claimReq.empno = Convert.ToInt32(Session["empno"].ToString());
        claimReq.Empno = int.Parse(Session["empno"].ToString());
        claimReq.Policyid = int.Parse(policyid.Text);
        claimReq.Policyname = policyname.Text;
        claimReq.Policyamount = Convert.ToDecimal(policyamt.Text);
        claimReq.Premium = Convert.ToDecimal(premium.Text);
        claimReq.Pstartdate = Convert.ToDateTime(policystartdate.DateFormat);
        claimReq.Penddate = Convert.ToDateTime(policyenddate.DateFormat);
        // claimReq.Nameofclaimant = pname.Text;
        claimReq.Nameofclaimant = pname.SelectedItem.ToString();
        claimReq.Relationship = relationship.SelectedItem.ToString();
        claimReq.Reason = reason.SelectedItem.ToString();
        claimReq.Dateofadmit = dateofadmit.CalendarDate;
        claimReq.Dateofdischarge = dateofdischarge.CalendarDate;
        claimReq.Claimamount = Convert.ToDecimal(ClaimAmt.Text);
        claimReq.Claimamountapproved = 0;
        claimReq.Status = "Inactive";
        claimReq.Hospitalid = int.Parse(HospitalId.Text);
    }


    protected void Reset_Click(object sender, EventArgs e)
    {
        policyid.Text = "";
        policyname.Text = "";
        policyamt.Text = "";
        premium.Text = "";
        policystartdate.Date = System.DateTime.Today;
        policyenddate.Date = System.DateTime.Today;
        policystartdate.InitialTimePickerText = "";
        policyenddate.InitialTimePickerText = "";
        relationship.SelectedValue = "--Select--";
        reason.SelectedValue = "--Select--";
        dateofadmit.CalendarDate = System.DateTime.Today;
        dateofdischarge.CalendarDate = System.DateTime.Today;
        ClaimAmt.Text = "";
        pname.Text = "";
    }

    private void message(string msg)
    {
        Response.Write("<script language='javascript'>alert('" + msg + "')</script>");
        //this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
    }

    protected void pname_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}