using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI.HtmlControls;
public class test : BasePage, IRequiresSessionState
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
		base.Response.Write("load<Br>");
	}
	protected void Page_Init(object sender, EventArgs e)
	{
		base.Response.Write("子类<Br>");
	}
}
