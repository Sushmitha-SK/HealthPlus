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
/// Summary description for EmpRegister
/// </summary>
public class EmpRegister
{
	public EmpRegister()
	{
	}
   int empno;

    public int Empno
    {
        get { return empno; }
        set { empno = value; }
    }
    string designation;

    public string Designation
    {
        get { return designation; }
        set { designation = value; }
    }
    string firstname;

    public string Firstname
    {
        get { return firstname; }
        set { firstname = value; }
    }
    string lastname;

    public string Lastname
    {
        get { return lastname; }
        set { lastname = value; }
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
    string contactno;

    public string Contactno
    {
        get { return contactno; }
        set { contactno = value; }
    }
    string state;

    public string State
    {
        get { return state; }
        set { state = value; }
    }
    string country;

    public string Country
    {
        get { return country; }
        set { country = value; }
    }
    string city;

    public string City
    {
        get { return city; }
        set { city = value; }
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
    DateTime joindate;
    public DateTime Joindate
    {
        get { return joindate; }
        set { joindate = value; }
    }
    decimal salary;
    public decimal Salary
    {
        get { return salary; }
        set { salary = value; }
    }
    public  void InsertEmpRegister()
    {
        SqlParameter[] p = new SqlParameter[12];
        p[0]=new SqlParameter("@designation",SqlDbType.VarChar,50);
        p[0].Value=this.designation;

         p[1]=new SqlParameter("@joindate",SqlDbType.DateTime);
        p[1].Value =this.joindate;

        p[2]=new SqlParameter("@firstname",SqlDbType.VarChar,50);
        p[2].Value=this.firstname;

         p[3]=new SqlParameter("@lastname",SqlDbType.VarChar,50);
        p[3].Value=this.lastname;

        p[4]=new SqlParameter("@username",SqlDbType.VarChar,50);
        p[4].Value=this.username;

         p[5]=new SqlParameter("@password",SqlDbType.VarChar,50);
        p[5].Value=this.password;

         p[6]=new SqlParameter("@address",SqlDbType.VarChar,150);
        p[6].Value=this.address;

         p[7]=new SqlParameter("@contactno",SqlDbType.VarChar,50);
        p[7].Value=this.contactno;

         p[8]=new SqlParameter("@state",SqlDbType.VarChar,50);
        p[8].Value=this.state;

         p[9]=new SqlParameter("@country",SqlDbType.VarChar,50);
        p[9].Value=this.country;

         p[10]=new SqlParameter("@city",SqlDbType.VarChar,50);
        p[10].Value=this.city;
        p[11] = new SqlParameter("@salary", SqlDbType.Money);
        p[11].Value = this.salary;
       
       
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpInsertEmpRegister", p);
                
    }
    public static string GETEmpLogin(string username, string password)
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p[0].Value = username;
        p[1] = new SqlParameter("@password", SqlDbType.VarChar, 50);
        p[1].Value = password;
        return Convert.ToString( SqlHelper.ExecuteScalar(Connection.Con, CommandType.StoredProcedure, "SpEmpLogin", p));

    }
    public static DataSet GetEmpOwnDetails(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from empregister where empno=" + empno);

    }
    public static DataSet getEmpDesignation()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select designation from empregister GROUP BY designation");

    }

    public static DataSet GetEmpOwnDetails()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from empregister");

    }

   

    public void UpdateEmpOwnDetails()
    {
        SqlParameter[] p = new SqlParameter[10];

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
        p[6] = new SqlParameter("@state", SqlDbType.VarChar, 50);
        p[6].Value = this.state;
        p[7] = new SqlParameter("@country", SqlDbType.VarChar, 50);
        p[7].Value = this.country;
        p[8] = new SqlParameter("@city", SqlDbType.VarChar, 50);
        p[8].Value = this.city;
        p[9] = new SqlParameter("@empno", SqlDbType.Int);
        p[9].Value = this.empno;
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpUpdateEmpRegister", p);
    }
    public static void ChangePassword(string password, int empno)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "update empregister set password='" + password + "' where empno=" + empno);
    }

    public static void DeleteEmp(int p)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "delete from empregister where empno=" + p);
    }

    public void ModifyempdetailsByAdmin()
    {
        SqlParameter[] p = new SqlParameter[6];

        p[0] = new SqlParameter("@empno", SqlDbType.Int);
        p[0].Value = this.empno;

        p[1] = new SqlParameter("@username", SqlDbType.VarChar, 50);
        p[1].Value = this.username;

        p[2] = new SqlParameter("@contactno", SqlDbType.VarChar, 50);
        p[2].Value = this.contactno;

        p[3] = new SqlParameter("@address", SqlDbType.VarChar, 150);
        p[3].Value = this.address;

        

        p[4] = new SqlParameter("@designation", SqlDbType.VarChar, 50);
        p[4].Value = this.designation;

        p[5] = new SqlParameter("@salary", SqlDbType.Money);
        p[5].Value = this.salary;
          
       
       
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.StoredProcedure, "SpEmpupdateByAdmin", p);
    }

    public int HospitalId { get; set; }

    public void ModifyHospitalDetailsByAdmin()
    {
        throw new NotImplementedException();
    }

    public string HospitalName { get; set; }

    public string PhoneNO { get; set; }

    public string Url { get; set; }

    public string Location { get; set; }


    public static DataSet getemployeename(int empno)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select firstname from EmpRegister where empno=" + empno);

    }

    public bool CheckEmpAvailability()
    {
        SqlParameter p = new SqlParameter("@UserName", username);
        p.SqlDbType = SqlDbType.VarChar;
        SqlDataReader dr;
        dr = SqlHelper.ExecuteReader(Connection.Con, CommandType.StoredProcedure, "spCheckUsername", p);
        dr.Read();
        if (dr.HasRows)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

}
