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

public partial class Admin_AddPolicyToEmployee : System.Web.UI.Page
{
    string empno;
    AddPoliciesOnEmployees obj = new AddPoliciesOnEmployees();
    protected void Page_Load(object sender, EventArgs e)
    {

        GMDatePicker1.Attributes.Add("readOnly", "readOnly()");
        GMDatePicker2.Attributes.Add("readOnly", "readOnly()");
        if (!IsPostBack)
        {
            DataSet ds = AddPolicy.Getpolicies();
            //DataSet ds1 = CompanyDeatails.getcomanyid();
            ddlpolicyid.DataSource = ds;
            ddlpolicyid.DataTextField = "policyid";
            ddlpolicyid.DataBind();
            ddlpolicyid.Items.Insert(0, "--Select--");
            ViewState["policy"] = ds;
            //ddlcompanyid.DataSource = ds1;
            //ddlcompanyid.DataTextField = "companyid";
            //ddlcompanyid.DataBind();
            //ddlcompanyid.Items.Insert(0, "--Select--");
            //ViewState["company"] = ds1;
            SqlConnection cnx = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
            cnx.Open();
            DataSet dsn = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter("select empno from empregister", cnx);
            da.Fill(dsn);
            DropDownList1.DataSource = dsn;
            DropDownList1.DataTextField = "empno";
            DropDownList1.DataBind();
            cnx.Close();

        }
        if (Request.QueryString["empno"] != null)
            DropDownList1.Text = Request.QueryString["empno"].ToString();

        empno = DropDownList1.SelectedItem.ToString();
        DataRow drow = AddPoliciesOnEmployees.getemployeedob(empno);
        txtdob.Text = drow["dob"].ToString();

        DateTime dateofbirth = Convert.ToDateTime(txtdob.Text);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlpolicyid_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlpolicyid.SelectedItem.ToString() != "--Select--")
        {
            DataSet ds = (DataSet)ViewState["policy"];
            DataRow rec = ds.Tables[0].Select("policyid=" + ddlpolicyid.SelectedItem)[0];
            TextBox2.Text = rec[1].ToString();
            TextBox3.Text = rec[2].ToString();
            txtmedical.Text = rec[3].ToString();


            txtcid.Text = rec[4].ToString();
            txtcname.Text = rec[5].ToString();
        }
        else
        {
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
            txtmedical.Text = "";
            txtcid.Text = "";
            txtcname.Text = "";
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        //if (ddlpolicyid.SelectedItem.ToString() != "--Select--" && ddlcompanyid.SelectedItem.ToString() != "--Select--")

        if (ddlpolicyid.SelectedItem.ToString() != "--Select--")

            obj.Empno = Convert.ToInt32(DropDownList1.Text);
        obj.Policyid = int.Parse(ddlpolicyid.SelectedItem.ToString());
        obj.Policyname = TextBox2.Text;
        obj.Policyamount = Convert.ToDecimal(TextBox3.Text);
        obj.Policyduration = Convert.ToDecimal(txtduration.Text);
        obj.Premium = Convert.ToDecimal(TextBox4.Text);
        obj.Pstartdate = GMDatePicker1.CalendarDate;
        obj.Penddate = GMDatePicker2.CalendarDate;

        //obj.Companyid = ddlcompanyid.SelectedItem.ToString();
        obj.Companyid = txtcid.Text;
        obj.Companyname = txtcname.Text;
        //obj.Companyname = TextBox8.Text;
        obj.Medical = txtmedical.Text;
        obj.InsertPolicyOnEmployee();
        Response.Write("<script language=javascript>alert('Policy is added to employee successfully!')</script>");
        fun1();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        fun1();
        Response.Redirect("AdminHomePage.aspx");
    }

    private void fun1()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        txtmedical.Text = "";
        //TextBox8.Text = "";
        txtduration.Text = "";
        txtcid.Text = "";
        txtcname.Text = "";
        txtduration.Text = "";
        txtmedical.Text = "";

    }


    //protected void ddlcompanyid_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    if (ddlcompanyid.SelectedItem.ToString() != "--Select--")
    //    {
    //        DataSet dset = (DataSet)ViewState["company"];
    //        DataRow drec = dset.Tables[0].Select("Companyid='" + ddlcompanyid.SelectedItem + "'")[0];
    //        TextBox8.Text = drec[1].ToString();
    //    }
    //    else
    //        TextBox8.Text = "";
    //}


    protected void txt_TextChanged(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
    }

    protected void btn_CalculatePremium(object sender, EventArgs e)
    {
        int age;
        SqlConnection c = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
        c.Open();
        string employeeid = DropDownList1.SelectedItem.ToString();
        DateTime dateofbirth = Convert.ToDateTime(txtdob.Text);
        TimeSpan tm = (DateTime.Now - dateofbirth);
        age = (tm.Days / 365);
        Decimal pamount = Convert.ToDecimal(TextBox3.Text);
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
        TextBox4.Text = premium.ToString();
    }
}