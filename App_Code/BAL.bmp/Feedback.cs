using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Feedback
/// </summary>
public class Feedback
{
	public Feedback()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static DataSet getFeedbackDetails()
    {
        return SqlHelper.ExecuteDataset(Connection.Con, CommandType.Text, "select * from Feedback");

    }
    public static void DeleteFeedback(int p)
    {
        SqlHelper.ExecuteNonQuery(Connection.Con, CommandType.Text, "delete from Feedback where SlNo=" + p);
    }

}