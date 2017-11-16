using System;
using System.Data;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
public class dbClass : Page, IRequiresSessionState
{
	protected HtmlForm form1;
	public DataTable dt = new DataTable();
	public string dbClassN = "News";
	public string dbClassName = "NewsInfo";
	protected DefaultProfile Profile
	{
		get
		{
			return (DefaultProfile)this.Context.Profile;
		}
	}
	protected HttpApplication ApplicationInstance
	{
		get
		{
			return this.Context.ApplicationInstance;
		}
	}
	protected void Page_Load(object sender, EventArgs e)
	{
		this.dbClassN = base.Request.QueryString["name"];
		this.dbClassName = base.Request.QueryString["name"] + "Info";
		Database database = new Database();
		this.dt = database.RunProc("Select top 1 * from " + this.dbClassN).Tables[0];
	}
	public string GetDataType(string type)
	{
		string a;
		string result;
		if ((a = type.ToLower()) != null)
		{
			if (a == "int")
			{
				result = "Integer";
				return result;
			}
			if (a == "date")
			{
				result = "Date";
				return result;
			}
		}
		result = "VarChar";
		return result;
	}
}
