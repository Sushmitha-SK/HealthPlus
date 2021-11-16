using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_RegisterFinanceManager : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            DataSet ds1 = CompanyDeatails.getcomanyid();
            dpcompanyid.DataSource = ds1;
            dpcompanyid.DataTextField = "companyid";
            dpcompanyid.DataBind();
            dpcompanyid.Items.Insert(0, "--Select--");
            ViewState["companydata"] = ds1;
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SpRegisterManager";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@designation", SqlDbType.VarChar, 50);
        p.Value = txtdesignation.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@firstname", SqlDbType.VarChar, 50);
        p1.Value = txtfname.Text;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@lastname", SqlDbType.VarChar, 50);
        p2.Value = txtlname.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p3.Value = txtusername.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter("@password", SqlDbType.VarChar, 50);
        p4.Value = txtpwd.Text;
        cmd.Parameters.Add(p4);

        SqlParameter p5 = new SqlParameter("@address", SqlDbType.VarChar, 150);
        p5.Value = txtaddress.Text;
        cmd.Parameters.Add(p5);

        SqlParameter p6 = new SqlParameter("@contactno", SqlDbType.VarChar, 50);
        p6.Value = txtcontactno.Text;
        cmd.Parameters.Add(p6);

        SqlParameter p7 = new SqlParameter("@companyid", SqlDbType.Int);
        p7.Value = dpcompanyid.Text;
        cmd.Parameters.Add(p7);

        SqlParameter p8 = new SqlParameter("@companyname", SqlDbType.VarChar, 50);
        p8.Value = txtcompanyname.Text;
        cmd.Parameters.Add(p8);

        cmd.ExecuteNonQuery();
        cn.Close();
        //lblmsg.Text = "The Employee details has been added successfully!";
        Response.Write("<script language='JavaScript'>alert('The Finanance Manager details has been added successfully!')</script>");
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "<script language=JavaScript>alert('The Finanance Manager details has been added successfully!');</script>");
        clear();
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clear();
        Response.Redirect("AdminHomePage.aspx");
    }

    private void clear()
    {
        txtdesignation.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtpwd.Text = "";
        txtpwd.Text = "";
        dpcompanyid.SelectedIndex = 0;
        txtcompanyname.Text = "";
        txtusername.Text = "";
        lblStatus.Visible = false;
        imgstatus.Visible = false;
        
    }

    protected void dpcompanyid_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (dpcompanyid.SelectedItem.ToString() != "--Select--")
        {
            DataSet ds = (DataSet)ViewState["companydata"];
            DataRow rec = ds.Tables[0].Select("CompanyId='" + dpcompanyid.SelectedItem + "'")[0];
            txtcompanyname.Text = rec[1].ToString();
        }
        else
            txtcompanyname.Text = "";
    }
    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtusername.Text))
        {
            SqlConnection con = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Manager where username=@Name", con);
            cmd.Parameters.AddWithValue("@Name", txtusername.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                checkusername.Visible = true;
                imgstatus.ImageUrl = "~/icons/NotAvailable.jpg";

                lblStatus.Text = " <span style='color: red;'>UserName Already Exists</span>";

            }
            else
            {
                checkusername.Visible = true;
                imgstatus.ImageUrl = "~/icons/Icon_Available.gif";
                lblStatus.Text = "UserName Available";
                txtpwd.Focus();

            }
        }
        else
        {
            checkusername.Visible = false;
        }
    }
}