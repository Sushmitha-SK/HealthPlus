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
/// Summary description for AdminLogin
/// </summary>
public class AdminLogin
{
	public AdminLogin()
	{
	}
    string _username;
    string _password;
    public string UserName
    {
        get { return _username; }
        set { _username = value; }
    }
    public string PassWord
    {
        get { return _password; }
        set {_password =value ;}
    }

    public global::InsurenceCompany InsurenceCompany
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public global::HospitalInfo HospitalInfo
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public global::AddPolicy AddPolicy
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public global::EmpRegister EmpRegister
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public global::DependentDetails DependentDetails
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public global::Manager Manager
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public global::AddPoliciesOnEmployees AddPoliciesOnEmployees
    {
        get
        {
            throw new System.NotImplementedException();
        }
        set
        {
        }
    }

    public static string AdminLogIn(string uname, string pword)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p[0].Value = uname;
        p[1] = new SqlParameter("@password", SqlDbType.VarChar, 50);
        p[1].Value = pword;
        return (string)SqlHelper.ExecuteScalar(Connection.Con, CommandType.StoredProcedure, "SpLoginAdmin", p);
        
     }

}
