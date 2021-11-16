using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Manager_ManagerHomePage : System.Web.UI.Page
{
    int managerid;
    Manager mg = new Manager();
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = System.DateTime.Now.ToLongDateString();
        conn = new SqlConnection("user id=sa;password=admin; Data Source=HP-PC; database=HealthPlus");
        conn.Open();
        if (Session["managerid"] != null)
           managerid = int.Parse(Session["managerid"].ToString());
        /**********************************************************************/
        SqlConnection cn = new SqlConnection("server=HP-PC;user id=sa;password=admin;database=HealthPlus");
        if (cn.State == ConnectionState.Closed)
        {
            cn.Open();
        }

        SqlCommand cmd = new SqlCommand();
        //cmd.CommandText = "select count(*) from ApplyClaimRequest where status='Processing'";
        cmd.CommandText = "select count(*) from ApplyClaimRequest a inner join policies p on a.policyid = p.policyid inner join CompanyDetails c on c.CompanyId= p.companyid inner join Manager m on c.CompanyId=m.comapnyid where m.managerid='" + managerid + "' and status='Processing'";


        cmd.CommandType = CommandType.Text;
        cmd.Connection = cn;
        int claim;
        claim = int.Parse(cmd.ExecuteScalar().ToString());
       

        lblClaimRequestNotify.Visible = true;
        lblClaimRequestNotify.Text = "You have " + claim.ToString() + " pending applications to approve.";

        if (claim == 0)
        {
            //Button2.Enabled = false;
        }
        


        /***********************************************************************/
        if (!IsPostBack)
        {
            DataRow d = Manager.getmanagername(managerid).Tables[0].Rows[0];
            string st = d["firstname"].ToString();
            managername.Text = st.ToString();
        }


      
    }
  
}