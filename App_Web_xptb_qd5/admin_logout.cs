using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
public class admin_logout : Page, IRequiresSessionState
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
		this.Session.Abandon();
		base.Response.Cookies["username"].Value = "";
		base.Response.Cookies["adminId"].Value = "";
		base.Response.Cookies["password"].Value = "";
		base.Response.Redirect("login.aspx");
	}
}
