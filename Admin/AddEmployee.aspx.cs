using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AddEmployee : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
   
    EmpRegister CheckEmpAvailability = new EmpRegister();

    protected void Page_Load(object sender, EventArgs e)
    {
       

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "SpInsertEmpRegister";
        cmd.Connection = cn;

        SqlParameter p = new SqlParameter("@designation", SqlDbType.VarChar, 50);
        p.Value = txtdesignation.Text;
        cmd.Parameters.Add(p);

        SqlParameter p1 = new SqlParameter("@joindate", SqlDbType.DateTime);
        p1.Value = GMDatePicker1.CalendarDate;
        //p1.Value = this.DatePicker1;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter("@firstname", SqlDbType.VarChar, 50);
        p2.Value = txtfname.Text;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter("@lastname", SqlDbType.VarChar, 50);
        p3.Value = txtlname.Text;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p4.Value = txtusername.Text;
        cmd.Parameters.Add(p4);

        SqlParameter p5 = new SqlParameter("@password", SqlDbType.VarChar, 50);
        p5.Value = txtpwd.Text;
        cmd.Parameters.Add(p5);

        SqlParameter p6 = new SqlParameter("@address", SqlDbType.VarChar, 150);
        p6.Value = txtaddress.Text;
        cmd.Parameters.Add(p6);

        SqlParameter p7 = new SqlParameter("@contactno", SqlDbType.VarChar, 50);
        p7.Value = txtcontactno.Text;
        cmd.Parameters.Add(p7);

        SqlParameter p8 = new SqlParameter("@state", SqlDbType.VarChar, 50);
        p8.Value = txtstate.Text;
        cmd.Parameters.Add(p8);

        SqlParameter p9 = new SqlParameter("@country", SqlDbType.VarChar, 50);
        p9.Value = txtcountry.Text;
        cmd.Parameters.Add(p9);

        SqlParameter p10 = new SqlParameter("@city", SqlDbType.VarChar, 50);
        p10.Value = txtcity.Text;
        cmd.Parameters.Add(p10);

        SqlParameter p11 = new SqlParameter("@salary", SqlDbType.Money);
        p11.Value = txtsalary.Text;
        cmd.Parameters.Add(p11);

        SqlParameter p12 = new SqlParameter("@dob", SqlDbType.DateTime);
        p12.Value = dpdob.CalendarDate;

        cmd.Parameters.Add(p12);


        cmd.ExecuteNonQuery();
        cn.Close();
        //lblmsg.Text = "The Employee details has been added successfully!";
        Response.Write("<script language=javascript>alert('The Employee details has been added successfully!')</script>");
       
        txtdesignation.Text = "";
      
        GMDatePicker1.CalendarDate = System.DateTime.Today;
        dpdob.CalendarDate = System.DateTime.Today;
        txtcity.Text = "";
        txtaddress.Text = "";
        txtcontactno.Text = "";
        txtcountry.Text = "";
        txtdesignation.Text = "";
        txtfname.Text = "";
        txtlname.Text = "";
        txtpwd.Text = "";
        txtsalary.Text = "";
        txtstate.Text = "";
        txtusername.Text = "";
        checkusername.Visible = false;
        imgstatus.Visible = false;
        lblStatus.Visible = false;
        

       
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("AdminHomePage.aspx");
    }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(txtusername.Text))
        {
            SqlConnection con = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from EmpRegister where username=@Name", con);
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
               
            }
        }
        else
        {
            checkusername.Visible = false;
        }
    }
}