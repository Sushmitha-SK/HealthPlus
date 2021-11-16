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
/// Summary description for InsurenceCompany
/// </summary>
public class InsurenceCompany
{
    public InsurenceCompany()
    {

    }
    int cid;
    public int Cid
    {
        get { return cid; }
        set { cid = value; }
    }

    string cname;
    public string Cname
    {
        get { return cname; }
        set { cname = value; }

    }

    string address;
    public string Address
    {
        get { return address; }
        set { address = value; }

    }

    string url;
    public string Url
    {
        get { return url; }
        set { url = value; }

    }

    string phone;
    public string Phone
    {
        get { return phone; }
        set { phone = value; }
    }

    public void InsertCompanydetails()
    {
        SqlParameter[] p = new SqlParameter[4];
        p[0] = new SqlParameter("@cname", SqlDbType.VarChar, 50);
        p[0].Value = this.cname;
        p[1] = new SqlParameter("@address", SqlDbType.VarChar, 150);
        p[1].Value = this.address;
        p[2] = new SqlParameter("@phone", SqlDbType.VarChar, 20);
        p[2].Value = this.phone;
        p[3] = new SqlParameter("@url", SqlDbType.VarChar, 50);
        p[3].Value = this.url;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "InsertCompanydetails", p);
    }
    public static DataSet Getcompanies()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from companydetails");
    }
    public static DataSet Getcompanies(int cid)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from companydetails where companyid="+cid);
    }

    public static DataSet GetInsuranceCompanyInfo()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from CompanyDetails");

    }


    public void ModifyInsuranceCompanyDetails()
    {
        SqlParameter[] p = new SqlParameter[5];

        p[0] = new SqlParameter("@CompanyId", SqlDbType.Int);
        p[0].Value = this.cid;

        p[1] = new SqlParameter("@CompanyName", SqlDbType.VarChar, 50);
        p[1].Value = this.cname;

        p[2] = new SqlParameter("@Address", SqlDbType.VarChar,500);
        p[2].Value = this.address;

        p[3] = new SqlParameter("@Phone", SqlDbType.VarChar,50);
        p[3].Value = this.phone;

        p[4] = new SqlParameter("@CompanyURL", SqlDbType.VarChar,100);
        p[4].Value = this.url;

       

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdateInsuranceCompanyDetails", p);
    }
}