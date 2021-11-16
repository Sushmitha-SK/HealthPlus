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
/// Summary description for ApplyClaim
/// </summary>
public class ApplyClaim
{
	public ApplyClaim()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //public int empno
    //{
    //    get { return empno; }
    //    set { empno = value; }
    //}


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


    string policyname;

    public string Policyname
    {
        get { return policyname;}
        set { policyname = value;}
    }

    DateTime pstartdate;

    public DateTime Pstartdate
    {
        get
        {
            return pstartdate;}
        set
        {
            pstartdate = value;}
    }

    DateTime penddate;

    public DateTime Penddate
    {
        get {return penddate;}
        set {penddate = value;} 
    }

    Decimal policyamount;

    public Decimal Policyamount
    {
        get
        {
            return policyamount;}
        set
        {
            policyamount = value;}
    }

    Decimal premium;

    public Decimal Premium
    {
        get { return premium; }
        set { premium = value; }

    }

    string nameofclaimant;

    public string Nameofclaimant
    {
        get
        {
            return nameofclaimant;}
        set
        {
            nameofclaimant = value;}
    }

    string relationship;

    public string Relationship
    {
        get
        {
            return relationship;}
        set
        {
            relationship = value;}
    }

    int hospitalid;

    public int Hospitalid
    {
        get
        {
            return hospitalid;}
        set
        {
            hospitalid = value;}
    }

  /*  public string hospitalname
    {
        get { return hospitalname; }
        set { hospitalname = value; }

    }*/

    string reason;

    public string Reason
    {
        get { return reason; }
        set { reason = value; }
    }

    DateTime dateofadmit;

    public DateTime Dateofadmit
    {
        get
        {
            return dateofadmit;}
        set
        {
            dateofadmit = value;}
    }

    DateTime dateofdischarge;

    public DateTime Dateofdischarge
    {
        get { return dateofdischarge; }
        set { dateofdischarge = value; }
    }


    Decimal claimamount;

    public Decimal Claimamount
    {
        get { return claimamount; }
        set { claimamount = value; }
    }


    Decimal claimamountapproved;

    public Decimal Claimamountapproved
    {
        get { return claimamountapproved; }
        set { claimamountapproved = value; }
    }

    string status;

    public string Status
    {
        get { return status; }
        set { status = value; }
    }

    string bill;
    
    public string Bill
    {
        get { return bill; }
        set { bill = value; }
    }
    

    public void ClaimRequest()
    {
        SqlParameter[] p=new SqlParameter[16];
        p[0]=new SqlParameter("@empno",SqlDbType.Int);
        p[0].Value=this.empno;

        p[1] = new SqlParameter("@policyid", SqlDbType.Int);
        p[1].Value = this.policyid;

        p[2] = new SqlParameter("@policyname", SqlDbType.VarChar);
        p[2].Value = this.Policyname;

        p[3] = new SqlParameter("@pstartdate", SqlDbType.DateTime);
        p[3].Value = this.pstartdate;

        p[4] = new SqlParameter("@penddate", SqlDbType.DateTime);
        p[4].Value = this.penddate;

        p[5] = new SqlParameter("@policyamount", SqlDbType.Money);
        p[5].Value = this.policyamount;

        p[6] = new SqlParameter("@premium", SqlDbType.Money);
        p[6].Value = this.premium;

        p[7] = new SqlParameter("@nameofclaimant", SqlDbType.VarChar);
        p[7].Value = this.nameofclaimant;

        p[8] = new SqlParameter("@relationship", SqlDbType.VarChar);
        p[8].Value = this.relationship;

        p[9] = new SqlParameter("@hospitalid", SqlDbType.Int);
        p[9].Value = this.hospitalid;

       /* p[10] = new SqlParameter("@hospitalname", SqlDbType.VarChar);
        p[10].Value = this.hospitalname;*/

        p[10] = new SqlParameter("@reason", SqlDbType.VarChar);
        p[10].Value = this.reason;

        p[11] = new SqlParameter("@dateofadmit", SqlDbType.DateTime);
        p[11].Value = this.dateofadmit;

        p[12] = new SqlParameter("@dateofdischarge", SqlDbType.DateTime);
        p[12].Value = this.dateofdischarge;

        p[13] = new SqlParameter("@claimamount", SqlDbType.Money);
        p[13].Value = this.claimamount;

        p[14] = new SqlParameter("@status", SqlDbType.VarChar);
        p[14].Value = this.status;

        p[15] = new SqlParameter("@claimamtapproved", SqlDbType.Money);
        p[15].Value = this.claimamountapproved;

        //p[16] = new SqlParameter("@document", SqlDbType.VarBinary);
        //p[16].Value = this.bill;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "ApplyClaim", p);

    }

   

    public static DataSet ShowPolicyId()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpShowPolicyid");
    }



   
    public static DataSet getPolicydetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select policyname, policyid, policyamount, pstartdate, penddate, premium, medical, premium*datediff(Month,pstartdate,getdate()) as TotalAmount from policiesonemployees where empno=" + empno);

    }


    public static DataSet getHospitalDetails(int hospitalid)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select HospitalName from HospitalInfo where HospitalId=" + hospitalid);
    }


    public static DataSet getClaimDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select policyname,policyid,policyamount,hospitalid from ApplyClaimRequest where empno=" + empno);

    }

    public static DataSet  getDependentDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "SELECT DependentName as DepDetails from DependentDetails where EmployeeId="+empno+" UNION SELECT EmployeeName FROM DependentDetails where EmployeeId=" + empno);

    }



    
}










   
   

