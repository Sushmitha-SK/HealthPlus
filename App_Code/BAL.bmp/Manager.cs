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
/// Summary description for Manager
/// </summary>
public class Manager
{
	public Manager()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    int managerid;

    public int ManagerId
    {
        get { return managerid; }
        set { managerid = value; }

    }

    string username;

    public string Username
    {
        get { return username; }
        set { username = value; }
    }
    string password;


    public string Password
    {
        get { return password; }
        set { password = value; }
    }
    string address;

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    string firstname;

    public string FirstName
    {
        get { return firstname; }
        set { firstname = value; }
    }


    string lastname;
    public string LastName
    {
        get { return lastname; }
        set { lastname = value; }
    }

    string contactno;
    public string ContactNo
    {
        get { return contactno; }
        set { contactno = value; }
    }

    string designation;
    public string Designation
    {
        get { return designation; }
        set { designation = value; }
    }

    public static string GETManagerLogin(string username, string password)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p[0].Value = username;
        p[1] = new SqlParameter("@password", SqlDbType.VarChar, 50);
        p[1].Value = password;
        return Convert.ToString(SqlHelper.ExecuteScalar(Connection.Con, CommandType.StoredProcedure, "SpManagerLogin", p));

    }



    public static DataSet GetCompanyId()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select CompanyId from CompanyDetails");
    }

    public static DataSet GetCompanyName()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select CompanyName from CompanyDetails");
    }


    public static DataSet getManagerOwnDetails(int managerid)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from Manager where managerid=" + managerid);

    }

    public void UpdateManagerDetails()
    {
        SqlParameter[] p = new SqlParameter[7];

        p[0] = new SqlParameter("@firstname", SqlDbType.VarChar, 50);
        p[0].Value = this.firstname;
        p[1] = new SqlParameter("@lastname", SqlDbType.VarChar, 50);
        p[1].Value = this.lastname;
        p[2] = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p[2].Value = this.username;
        p[3] = new SqlParameter("@password", SqlDbType.VarChar, 50);
        p[3].Value = this.password;
        p[4] = new SqlParameter("@address", SqlDbType.VarChar, 150);
        p[4].Value = this.address;
        p[5] = new SqlParameter("@contactno", SqlDbType.VarChar, 50);
        p[5].Value = this.contactno;
        p[6] = new SqlParameter("@managerid", SqlDbType.Int);
        p[6].Value = this.managerid;

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdateManagerDetails", p);
    }

    public static void ManagerChangePassword(string password, int managerid)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "update Manager set password='" + password + "' where managerid=" + managerid);
    }

    public static DataSet getmanagername(int managerid)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select firstname from Manager where managerid=" +managerid);

    }

    public static DataSet getManagerDetails()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from Manager");

    }

    public static void DeleteManagerDetails(int p)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "delete from Manager where managerid=" + p);
    }


    public void ModifyManagerDetails()
    {
        SqlParameter[] p = new SqlParameter[8];

        p[0] = new SqlParameter("@managerid", SqlDbType.Int);
        p[0].Value = this.managerid;

        p[1] = new SqlParameter("@designation", SqlDbType.VarChar, 50);
        p[1].Value = this.designation;

        p[2] = new SqlParameter("@firstname", SqlDbType.VarChar, 50);
        p[2].Value = this.firstname;

        p[3] = new SqlParameter("@lastname", SqlDbType.VarChar, 150);
        p[3].Value = this.lastname;

        p[4] = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p[4].Value = this.username;

        p[5] = new SqlParameter("@password", SqlDbType.VarChar,50);
        p[5].Value = this.password;

        p[6] = new SqlParameter("@address", SqlDbType.VarChar,200);
        p[6].Value = this.address;

        p[7] = new SqlParameter("@contactno", SqlDbType.VarChar,50);
        p[7].Value = this.contactno;
       

        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdateManager", p);
    }

  
}