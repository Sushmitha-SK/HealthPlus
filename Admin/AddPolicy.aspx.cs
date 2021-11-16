using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Admin_AddPolicy : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            filldrop();
            fillmedicalid();
            ddlCId.Items.Insert(0, "--Select--");
            MedicalIdList.Items.Insert(0, "--Select--");
        }

    }

    void filldrop()
    {
        cn.Open();
        string qry = "select CompanyId from CompanyDetails";
        SqlDataAdapter da = new SqlDataAdapter(qry, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "CompanyDetails");
        ddlCId.DataSource = ds;
        ddlCId.DataTextField = "CompanyId";
        ddlCId.DataBind();
        cn.Close();
    }

    void fillmedicalid()
    {
        cn.Open();
        string qry = "select HospitalId from HospitalInfo";
        SqlDataAdapter daa = new SqlDataAdapter(qry, cn);
        DataSet dsa = new DataSet();
        daa.Fill(dsa, "HospitalInfo");
        MedicalIdList.DataSource = dsa;
        MedicalIdList.DataTextField = "HospitalId";
        MedicalIdList.DataBind();
        cn.Close();
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SpInsertPolicy";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@policyname", SqlDbType.VarChar, 50);
        p.Value = txtPtypeName.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@policydesc", SqlDbType.VarChar, 150);
        p1.Value = txtPDesc.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@amount", SqlDbType.Money);
        p2.Value = txtAmt.Text;
        cmd.Parameters.Add(p2);



        SqlParameter p3 = new SqlParameter("@companyid", SqlDbType.Int);
        p3.Value = ddlCId.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p5 = new SqlParameter("@medicalid", SqlDbType.Int);
        p5.Value = MedicalIdList.Text;
        cmd.Parameters.Add(p5);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Write("<script language='javascript'>alert('The Policy details has been added sucessfully!')</script>");
        //labelMessage.Text = "The Policy details has been added sucessfully";
        txtPtypeName.Text = "";
        txtPDesc.Text = "";
        txtAmt.Text = "";
        ddlCId.SelectedIndex = 0;
        MedicalIdList.SelectedIndex = 0;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }
    protected void ddlCId_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    public int MAX { get; set; }
    protected void MedicalIdList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}