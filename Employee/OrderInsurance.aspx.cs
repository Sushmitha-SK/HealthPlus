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

public partial class Employee_OrderInsurance : System.Web.UI.Page
{
    string empno;
    DataSet ds;
    PolicyRequestDetails plyreqOBj = new PolicyRequestDetails();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["empno"] != null)
            empno = Session["empno"].ToString();
        if (!IsPostBack)
        {
            ds = AddPolicy.ShowPolicies();
            ViewState["ds"] = ds;
            ddlpid.DataSource = ds;
            ddlpid.DataTextField = "policyid";
            ddlpid.DataValueField = "policyid";
            ddlpid.DataBind();
            ddlpid.Items.Insert(0, "--Select--");
        }
        DataRow drow = AddPoliciesOnEmployees.getemployeedob(empno);
        txtdob.Text = drow["dob"].ToString();

        DateTime dateofbirth = Convert.ToDateTime(txtdob.Text);

    }

    void Filldata()
    {
        plyreqOBj.Empno = int.Parse(Session["empno"].ToString());
        plyreqOBj.Policyid = int.Parse(ddlpid.SelectedItem.ToString());
        plyreqOBj.Policyname = txtpname.Text;
        plyreqOBj.Amount = Convert.ToDecimal(txtpamount.Text);
        plyreqOBj.Premium = Convert.ToDecimal(txtpremium.Text);
        plyreqOBj.Requestdate = GMDatePicker1.CalendarDate;
        plyreqOBj.Companyid = int.Parse(txtCid.Text);
        plyreqOBj.Companyname = txtCname.Text;
        plyreqOBj.Status = txtStatus.Text;

    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        Filldata();
        plyreqOBj.InsertPolicyRequest();
        //lblmsg.Text = "Request is sent to Admin";
        Response.Write("<script language=javascript>alert('Request has been sent to Admin!')</script>");
        cleardetails();
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtpamount.Text = "";
        txtpname.Text = "";
        txtpremium.Text = "";
        txtCname.Text = "";
        txtCid.Text = "";
        lblmsg.Text = "";
        
    }

    void cleardetails()
    {
        ddlpid.SelectedIndex = -1;
        txtpname.Text = "";
        txtpamount.Text = "";
        GMDatePicker1.CalendarDate = System.DateTime.Now;
        txtCname.Text = "";
        txtCid.Text = "";
        txtpremium.Text = "";

    }
    protected void ddlpid_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataSet ds = (DataSet)ViewState["ds"];
        if (ddlpid.SelectedItem.ToString() != "--Select--")
        {
            DataRow r = ds.Tables[0].Select("policyid=" + ddlpid.SelectedItem)[0];
            txtCname.Text = r[5].ToString();
            txtCid.Text = r[0].ToString();
            txtpname.Text = r[2].ToString();
            txtpamount.Text = r[4].ToString();      
        }
        else
        {
            txtCname.Text = "";
            txtCid.Text = "";
            txtpname.Text = "";
            txtpamount.Text = "";
            txtpremium.Text = "";
        }

    }
    protected void btn_CalculatePremium(object sender, EventArgs e)
    {
        int age;
        SqlConnection c = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
        c.Open();
        string employeeid = Session["empno"].ToString();
        DateTime dateofbirth = Convert.ToDateTime(txtdob.Text);
        TimeSpan tm = (DateTime.Now - dateofbirth);
        age = (tm.Days / 365);
        Decimal pamount = Convert.ToDecimal(txtpamount.Text);
        int premium = 0;
        if (age >= 18 || age <= 25)
        {
            if (pamount >= 200000 || pamount <= 300000)
            {
                premium = 5472;
            }
        }
        else if (age >= 26 || age <= 35)
        {
            if (pamount >= 300001 || pamount <= 500000)
            {
                premium = 6473;
            }
        }
        else if(age>35)
        {
            premium = 6500;
        }
        txtpremium.Text = premium.ToString();
    }
    
}