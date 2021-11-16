using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public class PolicyRequestDetails
{
	public PolicyRequestDetails()
	{
	}
  int empno;

    public int Empno
    {
        get { return empno; }
        set { empno = value; }
    }

    

    string policystatus;

    public string Policystatus
    {
        get { return policystatus; }
        set { policystatus = value; }
    }
    int policyid;

    public int Policyid
    {
        get { return policyid; }
        set { policyid = value; }
    }
    DateTime requestdate;
    public DateTime Requestdate
    {
        get { return requestdate; }
        set { requestdate = value; }
    }
    string policyname;
    public string Policyname
    {
        get { return policyname; }
        set { policyname = value; }
    }
    decimal amount;
    public decimal  Amount
    {
        get { return amount; }
        set
        {
            amount = value;
        }
    }

    decimal premium;
    public decimal Premium
    {
        get { return premium; }
        set { premium = value; }
    }

    int companyid;
    public int Companyid
    {
        get { return companyid; }
        set { companyid = value; }

    }
    string companyname;
    public string Companyname
    {
        get { return companyname; }
        set { companyname = value; }

    }

   

    public void InsertPolicyRequest()
    {
        SqlParameter[] p=new SqlParameter[9];

        p[0]=new SqlParameter("@requestdate",SqlDbType.DateTime);
        p[0].Value=this.requestdate;

        p[1]=new SqlParameter("@empno",SqlDbType.Int);
        p[1].Value=this.empno;

        p[2]=new SqlParameter("@Policyid",SqlDbType.Int);
        p[2].Value=this.policyid ;

        p[3]=new SqlParameter("@policyname",SqlDbType.VarChar,50);
        p[3].Value=this.policyname;

        p[4]=new SqlParameter("@policyamt",SqlDbType.Money);
        p[4].Value=this.amount;

        p[5]=new SqlParameter("@premium",SqlDbType.Money);
        p[5].Value=this.premium;

        p[6]=new SqlParameter("@companyid",SqlDbType.Int);
        p[6].Value=this.companyid ;
            
        p[7]=new SqlParameter("@companyname",SqlDbType.VarChar,50);
        p[7].Value=this.companyname;

        p[8] = new SqlParameter("@Status", SqlDbType.VarChar, 50);
        p[8].Value = this.Status;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "PolicyRequest", p);
             
    }
    public static DataSet  GetRequestForPolicies()
    {
     return    SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from policyrequestdetails where status='Inactive'",null );
   
    }

    //public static DataSet getPolicyRequestDetails(int empno)
    //{
    //    return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from PolicyRequestDetails where empno=" + empno).Tables[0].Rows[0];
    //}

    public string Status { get; set; }

    public static DataSet getPolicyStatus(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select status from PolicyRequestDetails where empno=" + empno);
  
    }

    public static DataSet PolicyApprovedStatus(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select policyname from PolicyRequestDetails where status='InActive' and empno=" + empno);

    }

    public static DataSet getPolicyRequestDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from PolicyRequestDetails where empno=" + empno);

    }

    public static DataSet getEmpPolicyReqDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "SELECT RequestId, RequestDate, PolicyId, Policyname, Companyname, Status, Empno FROM PolicyRequestDetails WHERE Empno = " + empno);

    }

    
}
