using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Policies
/// </summary>
public class Policies
{
	public Policies()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataSet GetPolicyInfo()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from policies");

    }

    
}