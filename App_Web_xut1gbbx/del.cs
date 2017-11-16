using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
public class del : Page, IRequiresSessionState
{
	protected HtmlForm form1;
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
		Database database = new Database();
		database.RunNonQurey("delete from [member] where username='gg1' or username='gg2' or username='gg3' or username='gg4' or username='hh1'");
		base.Response.Write(DateTime.Now);
	}
}
