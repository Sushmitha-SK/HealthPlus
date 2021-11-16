using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Medicalsupport
/// </summary>
public class Medicalsupport
{
	public Medicalsupport()
	{
	}


    string hospitalid;
    string hospitalname;
    string location;
    public string Hospitalid
    {
        get { return hospitalid; }
        set { hospitalid = value; }
    }
    public string Hospitalname
    {
        get { return hospitalname; }
        set { hospitalname= value; }
    }
    public string Location
    {
        get { return location ; }
        set { location = value; }
    }


    public static DataSet  GetInfo()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from hospitalinfo");
    }
}
