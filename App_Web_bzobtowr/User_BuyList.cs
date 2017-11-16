using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
public class User_BuyList : Page, IRequiresSessionState
{
	protected Repeater repeater1;
	private Database db = new Database();
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
		if (this.Session["userid"] == null)
		{
			base.Response.Redirect("login.aspx");
			return;
		}
		if (this.Session["password"] != null)
		{
			this.BindData();
			return;
		}
		base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
	}
	public void BindData()
	{
		this.repeater1.DataSource = this.db.RunProcGetDataView("select * from goods order by id");
		this.repeater1.DataBind();
	}
}
