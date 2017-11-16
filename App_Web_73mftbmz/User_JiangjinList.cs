using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
public class User_JiangjinList : Page, IRequiresSessionState
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
		if (!base.IsPostBack)
		{
			if (this.Session["userId"] != null)
			{
				if (this.Session["password"] != null)
				{
					this.BindData();
					return;
				}
				base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
				return;
			}
			else
			{
				base.Response.Redirect("login.aspx");
			}
		}
	}
	public void BindData()
	{
		this.repeater1.DataSource = this.db.RunProcGetDataView("select * from JieSuan where userId=" + int.Parse(this.Session["userId"].ToString()) + " order by id desc");
		this.repeater1.DataBind();
	}
}
