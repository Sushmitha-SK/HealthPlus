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


public class DependentDetails
{

    int dependentid;
    public int DependentID
    {
        get { return dependentid; }
        set { dependentid = value; }
    }

    int employeeid;
    public int EmployeeID
    {
        get { return employeeid; }
        set { employeeid = value; }
    }

    string employeename;
    public string EmployeeName
    {
        get { return employeename; }
        set { employeename = value; }
    }

    string dependentname;
    public string DependentName
    {
        get { return dependentname; }
        set { dependentname = value; }
    }

    string relationship;
    public string Relationship
    {
        get { return relationship; }
        set { relationship = value; }
    }

    string address;
    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    string phoneno;
    public string PhoneNo
    {
        get { return phoneno; }
        set { phoneno = value; }
    }

    string emailid;
    public string EmailID
    {
        get { return emailid; }
        set { emailid = value; }
    }

    DateTime dob;
    public DateTime DOB
    {
        get { return dob; }
        set { dob = value; }
    }
    public static DataSet ShowEmployeeID()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpShowEmployeeID");
    }

    public void InsertDependentDetails()
    {
        SqlParameter[] p = new SqlParameter[8];

        p[0] = new SqlParameter("@EmployeeId", SqlDbType.Int);
        p[0].Value = this.employeeid;

        p[1] = new SqlParameter("@EmployeeName ", SqlDbType.VarChar, 50);
        p[1].Value = this.employeename;

        p[2] = new SqlParameter("@DependentName ", SqlDbType.VarChar, 50);
        p[2].Value = this.dependentname;

        p[3] = new SqlParameter("@Relationship ", SqlDbType.VarChar, 50);
        p[3].Value = this.relationship;

        p[4] = new SqlParameter("@Address ", SqlDbType.VarChar, 150);
        p[4].Value = this.address;

        p[5] = new SqlParameter("@PhoneNo ", SqlDbType.VarChar, 50);
        p[5].Value = this.phoneno;

        p[6] = new SqlParameter("@EmailID ", SqlDbType.VarChar, 50);
        p[6].Value = this.emailid;

        p[7] = new SqlParameter("@DOB ", SqlDbType.DateTime);
        p[7].Value = this.dob;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpInsertDependentDetails", p);

    }

    public static DataSet getDependentDetails()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from DependentDetails");

    }
    public static void DeleteDependent(int p)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "delete from DependentDetails where DependentId=" + p);
    }

    public void ModifyDependentDetails()
    {
        SqlParameter[] p = new SqlParameter[9];

        p[0] = new SqlParameter("@DependentID", SqlDbType.Int);
        p[0].Value = this.dependentid;

        p[1] = new SqlParameter("@EmployeeId", SqlDbType.Int);
        p[1].Value = this.employeeid;

        p[2] = new SqlParameter("@EmployeeName", SqlDbType.VarChar, 50);
        p[2].Value = this.employeename;

        p[3] = new SqlParameter("@DependentName", SqlDbType.VarChar, 50);
        p[3].Value = this.dependentname;

        p[4] = new SqlParameter("@Relationship", SqlDbType.VarChar, 50);
        p[4].Value = this.relationship;

        p[5] = new SqlParameter("@Address", SqlDbType.VarChar,250);
        p[5].Value = this.address;

        p[6] = new SqlParameter("@PhoneNo", SqlDbType.VarChar,50);
        p[6].Value = this.phoneno;

        p[7] = new SqlParameter("@EmailID", SqlDbType.VarChar,50);
        p[7].Value = this.emailid;

        p[8] = new SqlParameter("@DOB", SqlDbType.DateTime);
        p[8].Value = this.dob;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdateDependentDetails", p);
    }

}