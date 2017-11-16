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

		{
			this.Session.Clear();
			base.Response.Cookies["user"].Value = "";
			base.Response.Cookies["password"].Value = "";
			base.Response.Write("<script>parent.top.location.href='../default.aspx';</script>");
		}
	}
}
