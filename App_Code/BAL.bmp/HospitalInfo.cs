using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for HospitalInfo
/// </summary>
public class HospitalInfo
{
	public HospitalInfo()
	{
		//
		// TODO: Add constructor logic here
		//
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

    string address;

    public string Address
    {
        get { return address; }
        set { address = value; }
    }

    string phooneno;

    public string PhoneNO
    {
        get { return phooneno; }
        set { phooneno = value; }
    }

    string location;

    public string Location
    {
        get { return location; }
        set { location = value; }
    }

    string url;

    public string Url
    {
        get { return url; }
        set { url = value; }
    }

    public static DataSet GetHospitalInfo()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from HospitalInfo");

    }

    public static void DeleteHospital(int p)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "delete from HospitalInfo where HospitalId=" + p);
    }


    public void ModifyHospitaldetailsByAdmin()
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "update HospitalInfo SET HospitalName='"+hospitalname+"', Address='"+address+"', PhoneNO='"+phooneno+"',Location='"+location+"',Url='"+url+"' where HospitalId="+hospitalid+"");
    }

    //////////////////////////////////
  /*  UPDATE [Medical].[dbo].[HospitalInfo]
   SET [HospitalName] = <HospitalName, varchar(50),>
      ,[Address] = <Address, varchar(50),>
      ,[PhoneNO] = <PhoneNO, varchar(50),>
      ,[Location] = <Location, varchar(50),>
      ,[Url] = <Url, varchar(50),>
 WHERE <Search Conditions,,>*/
     ////////////////////////////////////








}