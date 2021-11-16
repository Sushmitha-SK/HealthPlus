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
/// Summary description for CompanyDeatails
/// </summary>
public class CompanyDeatails
{
	public CompanyDeatails()
	{
	}
    public static DataRow  GetCompanyDetails(string cid)
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from companydetails where companyid='"+cid+"'").Tables[0].Rows[0];
    }
    public static DataSet getcomanyid()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select *from  companydetails");

    }

}
