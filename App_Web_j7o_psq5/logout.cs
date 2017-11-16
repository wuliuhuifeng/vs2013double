using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
public class logout : Page, IRequiresSessionState
{
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
		if (!base.IsPostBack)
		{
			this.Session.Clear();
			base.Response.Cookies["admin"].Value = "";
			base.Response.Cookies["adminPWD"].Value = "";
			base.Response.Write("<script>parent.top.location.href='login.aspx';</script>");
		}
	}
}
