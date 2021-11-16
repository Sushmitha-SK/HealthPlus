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
/// Summary description for ClaimRequestDetails
/// </summary>
public class ClaimRequestDetails
{
    public ClaimRequestDetails()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    int eno;

    public int Empno
    {
        get { return eno; }
        set { eno = value; }
    }

    int managerid;

    public int ManagerID
    {
        get { return managerid; }
        set { managerid = value; }
    }

    string employeename;

    public string EmpName
    {
        get { return employeename; }
        set { employeename = value; }
    }

    int claimid;

    public int ClaimId
    {
        get { return claimid; }
        set { claimid = value; }
    }

    int policyid;

    public int PolicyId
    {
        get { return policyid; }
        set { policyid = value; }
    }

    string policyname;

    public string PolicyName
    {
        get { return policyname; }
        set { policyname = value; }
    }

    decimal policyamount;

    public decimal PolicyAmount
    {
        get { return policyamount; }
        set { policyamount = value; }
    }

    DateTime policysdate;

    public DateTime PolicySDate
    {
        get { return policysdate; }
        set { policysdate = value; }

    }

    DateTime policyedate;

    public DateTime PolicyEDate
    {
        get { return policyedate; }
        set { policyedate = value; }
    }

    int companyid;

    public int CompanyId
    {
        get { return companyid; }
        set { companyid = value; }
    }

    string companyname;

    public string CompanyName
    {
        get { return companyname; }
        set { companyname = value; }
    }


    int hospitalid;

    public int HospitalId
    {
        get { return hospitalid; }
        set { hospitalid = value; }
    }

    string hospitalname;

    public string HospitalName
    {
        get { return hospitalname; }
        set { hospitalname = value; }

    }

    string reason;

    public string Reason
    {
        get { return reason; }
        set { reason = value; }
    }

    decimal reqclmamt;

    public decimal ReqClaimAmt
    {
        get { return reqclmamt; }
        set { reqclmamt = value; }
    }

    decimal appclmamt;

    public decimal AppClaimAmt
    {
        get { return appclmamt; }
        set { appclmamt = value; }
    }

    DateTime requestdate;

    public DateTime RequestDate
    {
        get { return requestdate; }
        set { requestdate = DateTime.Today; }
    }


    string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }






    //public static DataSet GetClaimRequestDetails()
    //{
    //    return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from ApplyClaimRequest where status='Processing'");
    //}

    public static DataSet GetClaimRequestDetails(int ManagerID)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "Select a.* from ApplyClaimRequest a inner join policies p on a.policyid = p.policyid inner join CompanyDetails c on c.CompanyId= p.companyid inner join Manager m on c.CompanyId=m.comapnyid where m.managerid="+ManagerID+" and status='Processing'");
    }



    public static DataSet getClaimReqDetails()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from ApplyClaimRequest where status='Inactive'");

    }


    public static DataSet GetClaimStatus(int eno)
    {

        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "ClaimStatus");
    }




    public static DataRow GetClaimDetails(int eno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select p.empno, p.claimno, p.policyid, p.policyname,p.policyamount,p.pstartdate,p.penddate,p.claimamount, p.claimamtapproved, p.reason, e.firstname, c.CompanyId, c.CompanyName, h.HospitalId, h.HospitalName from ApplyClaimRequest p inner join EmpRegister e on p.empno=e.empno inner join policies po on p.policyid=po.policyid inner join CompanyDetails c on po.companyid = c.CompanyId inner join HospitalInfo h on po.medicalid = h.HospitalId where p.empno=" + eno).Tables[0].Rows[0];

    }


    public static DataRow getTotalAmount(int eno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select premium*datediff(Month,pstartdate,getdate()) as TotalAmount from policiesonemployees where empno=" + eno).Tables[0].Rows[0];

    }


    public static DataRow DeleteClaimRequest(int eno)
    {
        throw new NotImplementedException();
    }


    public static DataSet getEmpClaimReqDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "SELECT claimno, empno,policyid, policyname, policyamount,status FROM ApplyClaimRequest WHERE empno ="+empno);

    }

    


    public static int GetAccidentClaimAmt(int empno)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@EmpNo", SqlDbType.Int);
        p[0].Value = empno;

        p[1] = new SqlParameter("@ClaimAmount", SqlDbType.Int);
        p[1].Direction = ParameterDirection.Output;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "AccClaim", p);


        return int.Parse(p[1].Value.ToString());


    }

    public static int GetComplitedClaimAmt(int eno)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@EmpNo", SqlDbType.Int);
        p[0].Value = eno;

        p[1] = new SqlParameter("@ClaimAmount", SqlDbType.Int);
        p[1].Direction = ParameterDirection.Output;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "CClaim", p);


        return int.Parse(p[1].Value.ToString());
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


    public void ApproveClaimDetails()
    {
        SqlParameter[] p = new SqlParameter[17];

        p[0] = new SqlParameter("@empno", SqlDbType.Int);
        p[0].Value = this.eno;

        p[1] = new SqlParameter("@empname", SqlDbType.VarChar, 50);
        p[1].Value = this.employeename;

        p[2] = new SqlParameter("@claimno", SqlDbType.Int);
        p[2].Value = this.claimid;

        p[3] = new SqlParameter("@policyid", SqlDbType.Int);
        p[3].Value = this.policyid;

        p[4] = new SqlParameter("@policyname", SqlDbType.VarChar, 50);
        p[4].Value = this.policyname;

        p[5] = new SqlParameter("@pstartdate", SqlDbType.DateTime);
        p[5].Value = this.policysdate;

        p[6] = new SqlParameter("@penddate", SqlDbType.DateTime);
        p[6].Value = this.policyedate;

        p[7] = new SqlParameter("@requestdate", SqlDbType.DateTime);
        p[7].Value = this.requestdate;

        p[8] = new SqlParameter("@policyamount", SqlDbType.Decimal);
        p[8].Value = this.policyamount;

        p[9] = new SqlParameter("@claimamount", SqlDbType.Decimal);
        p[9].Value = this.reqclmamt;

        p[10] = new SqlParameter("@reason", SqlDbType.VarChar, 50);
        p[10].Value = this.reason;

        p[11] = new SqlParameter("@approvedclaimamount", SqlDbType.Decimal);
        p[11].Value = this.appclmamt;

        p[12] = new SqlParameter("@companyid", SqlDbType.Int);
        p[12].Value = this.companyid;

        p[13] = new SqlParameter("@companyname", SqlDbType.VarChar, 50);
        p[13].Value = this.companyname;

        p[14] = new SqlParameter("@hospitalid", SqlDbType.Int);
        p[14].Value = this.hospitalid;

        p[15] = new SqlParameter("@hospitalname", SqlDbType.VarChar, 50);
        p[15].Value = this.hospitalname;

        p[16] = new SqlParameter("@status", SqlDbType.VarChar, 50);
        p[16].Value = this.status;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "ClaimRequestApproval", p);

    }


    public void ClaimRequest_Delete()
    {
        SqlParameter[] p = new SqlParameter[1];

        p[0] = new SqlParameter("@claimno", SqlDbType.Int);
        p[0].Value = this.claimid;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpDeleteClaimRequest", p);
    }


    public void changeStatus()
    {
        SqlParameter[] p = new SqlParameter[1];
        p[0] = new SqlParameter("@empno", SqlDbType.Int);
        p[0].Value = this.Empno;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpchangeClaimStatus", p);
    }

    //public static DataRow AccClmAmt(int eno)
    //{
    //    return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select PolicyName,PolicyId,Policyamount,pstartdate,  premium*datediff(Month,pstartdate,getdate())*2.5 as TotalAmount from policiesonemployees where empno=" + eno).Tables[0].Rows[0];

    //}

    public static DataSet getClaimStatus(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select status from ClaimApprovalDetails where empno=" + empno);

    }

    public static DataSet ClaimApprovalNotification(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select policyname from ClaimApprovalDetails where status='InActive' and empno=" + empno);

    }


}