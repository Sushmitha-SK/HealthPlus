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

/// <summary>
/// Summary description for AddPoliciesOnEmployees
/// </summary>
public class AddPoliciesOnEmployees
{
	public AddPoliciesOnEmployees()
	{
		
	}

    int empno;

    public int Empno
    {
        get { return empno; }
        set { empno = value; }
    }

    int policyid;

    public int Policyid
    {
        get { return policyid; }
        set { policyid = value; }
    }

    int requestid;

    public int Requestid
    {
        get { return requestid; }
        set { requestid = value; }
    }

    string employeename;

    public string Employeename
    {
        get { return employeename; }
        set { employeename = value; }
    }

    string policyname;

    public string Policyname
    {
        get { return policyname; }
        set { policyname = value; }
    }

    decimal policyamount;

    public decimal Policyamount
    {
        get { return policyamount; }
        set { policyamount = value; }
    }

    decimal policyduration;

    public decimal Policyduration
    {
        get { return policyduration; }
        set { policyduration = value; }
    }

    decimal premium;

    public decimal Premium
    {
        get { return premium; }
        set { premium = value; }
    }

    DateTime pstartdate;

    public DateTime Pstartdate
    {
        get { return pstartdate; }
        set { pstartdate = value; }
    }

    DateTime penddate;

    public DateTime Penddate
    {
        get { return penddate; }
        set { penddate = value; }
    }

    DateTime requestdate;

    public DateTime RequestDate
    {
        get { return requestdate; }
        set { requestdate = value; }
    }

    string companyid;

    public string Companyid
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
    string medical;

    public string Medical
    {
        get { return medical; }
        set { medical = value; }
    }

    DateTime approvaldate;

    public DateTime ApprovalDate
    {
        get { return approvaldate; }
        set { approvaldate = DateTime.Today; }
    }

    string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }

    public void InsertPolicyOnEmployee()
    {
        SqlParameter[] p = new SqlParameter[11];

        p[0]=new SqlParameter("@empno",SqlDbType.VarChar,10);
        p[0].Value=this.empno;

        p[1]=new SqlParameter("@policyid",SqlDbType.Int);
        p[1].Value = this.policyid;

        p[2]=new SqlParameter("@policyname",SqlDbType.VarChar,50);
        p[2].Value = this.policyname;

        p[3]=new SqlParameter("@policyamount",SqlDbType.Money );
        p[3].Value = this.policyamount;

        p[4]=new SqlParameter("@policyduration",SqlDbType.Decimal);
        p[4].Value = this.policyduration;

        p[5]=new SqlParameter("@premium",SqlDbType.Decimal );
        p[5].Value = this.premium;

        p[6]=new SqlParameter("@pstartdate",SqlDbType.DateTime );
        p[6].Value = this.pstartdate;

        p[7]=new SqlParameter("@penddate",SqlDbType.DateTime );
        p[7].Value = this.penddate;

        p[8]=new SqlParameter("@companyid",SqlDbType.VarChar,30);
        p[8].Value=this.companyid;

        p[9]=new SqlParameter("@companyname",SqlDbType.VarChar,50);
        p[9].Value = this.companyname;

        p[10]=new SqlParameter("@medicalid",SqlDbType.VarChar,50);
        p[10].Value=this.medical;



        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "AddpolicyOnEmployee", p);

    }
    public static string  Getstatus(int eid)
    {
        SqlParameter[] p = new SqlParameter[2];
                 p[0]=new SqlParameter ("@eid", SqlDbType.Int);
                 p[0].Value = eid;
                 p[1] = new SqlParameter("@status", SqlDbType.VarChar, 10);
                 p[1].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpStatus", p);
        return p[1].Value.ToString();
    }
    public static DataSet  GetPolicyOnEmployee(int empno)
    {
       return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select PolicyName,PolicyId,Policyamount,pstartdate,  premium*datediff(Month,pstartdate,getdate()) as TotalAmount from policiesonemployees where empno="+empno);
       
    }
    public static DataSet GetPolicyOnEmployee(string designation)
    {
        SqlParameter p = new SqlParameter("@desig", SqlDbType.VarChar, 50);
        p.Value = designation;
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "GetPolicyOnEmp", p);
    }

    public static DataSet GetEmployeeOnPolicy(string designation)
    {
        SqlParameter p = new SqlParameter("@policyname", SqlDbType.VarChar, 50);
        p.Value = designation;
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpGetEmpByPolicy", p);
    }

    public static int getcoutnt(int empno)
    {
        return  (int)SqlHelper.ExecuteScalar(Connection.Con, CommandType.Text, "select count(*) from policiesonemployees where empno=" + empno);
    }

    public static int getPolicycount(int eno)
    {
        return (int)SqlHelper.ExecuteScalar(Connection.Con, CommandType.Text, "select count(*) from policiesonemployees where empno=" + eno);
    }

    public static int GetClaimAmountForAccident(int empno)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@EmpNo", SqlDbType.Int);
        p[0].Value = empno;

        p[1] = new SqlParameter("@ClaimAmount", SqlDbType.Money);
        p[1].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "CalCulateClaimForAcccident",p);
        return int.Parse (p[1].Value.ToString ());
    }

    public static int GetClaimAmountForDeath(int empno)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@EmpNo", SqlDbType.Int);
        p[0].Value = empno;

        p[1] = new SqlParameter("@ClaimAmount", SqlDbType.Int);
        p[1].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "CalCulateClaimForDeath", p);
        return int.Parse(p[1].Value.ToString());
    }


    public static int GetClaimAmountForComplePolicy(int empno)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@EmpNo", SqlDbType.Int);
        p[0].Value = empno;

        p[1] = new SqlParameter("@ClaimAmount", SqlDbType.Int);
        p[1].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "CalculateClaimComplete", p);
        return int.Parse(p[1].Value.ToString());
    }

    public static DataRow GetPolicyOnEmployeedetails(int empno)
    {
        DataRow dr = (DataRow)SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from policiesonemployees where empno=" + empno).Tables[0].Rows[0];
        if (dr != null)
            return dr;
        else
            return dr = null;
    }

 


    public static DataSet PolicyDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select policyname,policyid,policyamount,pstartdate, premium, medical from policiesonemployees where empno=" + empno);

    }

    public static DataSet ShowPolicyDetails()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpShowPolicyDetails");
    }

    


    public static DataSet getPolicyId()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select policyid from policiesonemployees");
    }

    public static DataSet ShowPolicyDetailsForClaim()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpShowPolicyDetailsForClaim");
    }


    public static DataRow getPolicyRequestDetails(int eno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select p.RequestId, p.PolicyId, p.Policyname, p.PolicyAmount,p.premium,p.RequestDate,p.CompanyId, p.CompanyName, e.empno, e.firstname,ph.medicalid from PolicyRequestDetails p inner join EmpRegister e on p.empno=e.empno  inner join policies ph on p.PolicyId= ph.policyid where p.empno=" + eno).Tables[0].Rows[0];
    }

    


    public void UpdatePolicyRequestStatus()
    {
        SqlParameter[] p = new SqlParameter[2];

        p[0] = new SqlParameter("@Empno", SqlDbType.Int);
        p[0].Value = this.empno;

        p[1] = new SqlParameter("@status", SqlDbType.VarChar,50);
        p[1].Value = this.status;

      SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdatePolicyStatus", p);

    }

    public void DeletePolicyRequest()
    {
        SqlParameter[] p = new SqlParameter[1];

        p[0] = new SqlParameter("@RequestId", SqlDbType.Int);
        p[0].Value = this.requestid;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpDeletePolicyRequest", p);

    }

    public static DataRow getemployeedob(string empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select dob from EmpRegister where empno=" + empno).Tables[0].Rows[0];
    }


    public void Insertpoliciesonemployees()
    {

        SqlParameter[] p = new SqlParameter[11];

        p[0] = new SqlParameter("@empno", SqlDbType.VarChar, 10);
        p[0].Value = this.empno;

        p[1] = new SqlParameter("@policyid", SqlDbType.Int);
        p[1].Value = this.policyid;

        p[2] = new SqlParameter("@policyname", SqlDbType.VarChar, 50);
        p[2].Value = this.policyname;

        p[3] = new SqlParameter("@policyamount", SqlDbType.Money);
        p[3].Value = this.policyamount;

        p[4] = new SqlParameter("@policyduration", SqlDbType.Decimal);
        p[4].Value = this.policyduration;

        p[5] = new SqlParameter("@premium", SqlDbType.Decimal);
        p[5].Value = this.premium;

        p[6] = new SqlParameter("@pstartdate", SqlDbType.DateTime);
        p[6].Value = this.pstartdate;

        p[7] = new SqlParameter("@penddate", SqlDbType.DateTime);
        p[7].Value = this.penddate;

        p[8] = new SqlParameter("@companyid", SqlDbType.Int);
        p[8].Value = this.companyid;

        p[9] = new SqlParameter("@companyname", SqlDbType.VarChar, 50);
        p[9].Value = this.companyname;

        p[10] = new SqlParameter("@medicalid", SqlDbType.VarChar, 50);
        p[10].Value = this.medical;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "Spaddpoliciesonemployee", p);


    }
   
}
