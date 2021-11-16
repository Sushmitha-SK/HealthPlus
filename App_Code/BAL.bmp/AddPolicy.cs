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
/// Summary description for AddPolicy
/// </summary>
public class AddPolicy
{
    public AddPolicy()
    {
    }
    int _PtypeId;
    string _PtypeName;
    string _Pdesc;
    int _CompanyId;
    public int PtypeId
    {
        get { return _PtypeId; }
        set { _PtypeId = value; }
    }
    public string Ptypename
    {
        get { return _PtypeName; }
        set { _PtypeName = value; }
    }
    public string Pdesc
    {
        get { return _Pdesc; }
        set { _Pdesc = value; }
    }
    public int CompanyId
    {
        get { return _CompanyId; }
        set { _CompanyId = value; }
    }
    string medicalid;
    public string Medicalid
    {
        get { return medicalid; }
        set { medicalid = value; }
    }

    public static void InsertPolicy(string pname, string pdesc, decimal pamount, decimal premium, int cid, string medicalid)
    {
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@policyname", SqlDbType.VarChar, 50);
        p[0].Value = pname;
        p[1] = new SqlParameter("@policydesc", SqlDbType.VarChar, 150);
        p[1].Value = pdesc;
        p[2] = new SqlParameter("@amount", SqlDbType.Money);
        p[2].Value = pamount;
        p[3] = new SqlParameter("@premium", SqlDbType.Money);
        p[3].Value = premium;
        p[4] = new SqlParameter("@companyid", SqlDbType.Int);
        p[4].Value = cid;
        p[5] = new SqlParameter("@medicalid", SqlDbType.VarChar, 50);
        p[5].Value = medicalid;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpInsertPolicy", p);
    }
    public static DataSet Getpolicies()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select p.Policyid,p.policyname,p.amount,p.medicalid, p.companyid, c.CompanyName from policies p inner join CompanyDetails c on p.companyid= c.CompanyId");
    }
    public static DataRow GetPolicyDetails(int pid)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from Policies where Policyid='" + pid + "'").Tables[0].Rows[0];
    }
    public static DataSet ShowPolicies()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpShowPolicies");
    }

    public static DataSet GetSupportingPolicy(string Medical)
    {
        SqlParameter p = new SqlParameter("@medical", SqlDbType.VarChar, 50);
        p.Value = Medical;
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.StoredProcedure, "SpGetSupportPolicy", p);

    }

    public global::Policies Policies
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public void ModifyPolicyDetails()
    {
        SqlParameter[] p = new SqlParameter[6];

        p[0] = new SqlParameter("@policyid", SqlDbType.Int);
        p[0].Value = this.PtypeId;

        p[1] = new SqlParameter("@policyname", SqlDbType.VarChar, 50);
        p[1].Value = this.Ptypename;

        p[2] = new SqlParameter("@amount", SqlDbType.Money);
        p[2].Value = this.pamount;

        p[3] = new SqlParameter("@companyid", SqlDbType.Int);
        p[3].Value = this.CompanyId;


        p[4] = new SqlParameter("@medicalid", SqlDbType.Int);
        p[4].Value = this.medicalid;

        p[5] = new SqlParameter("@policydesc", SqlDbType.VarChar, 200);
        p[5].Value = this.Pdesc;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdatePolicyDetails", p);
    }



    public string pamount { get; set; }
}
