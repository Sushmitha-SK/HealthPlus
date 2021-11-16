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
/// Summary description for Connection
/// </summary>
public class Connection
{
	public Connection()
	{
	}
    private static string _con;

    public static string Con
    {
        get { return Connection._con = ConfigurationManager.ConnectionStrings["MedicalConnectionString"].ConnectionString; }
        
    }


   
}
