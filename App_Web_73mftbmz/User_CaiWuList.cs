using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
public class User_CaiWuList : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected Repeater repeater1;
	protected Label lb_user;
	protected Label lb_money;
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
			if (this.Session["user"] != null)
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
		this.repeater1.DataSource = this.db.RunProcGetDataView("select * from Caiwu where username='" + this.Session["user"].ToString() + "' order by id desc");
		this.repeater1.DataBind();
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		this.lb_user.Text = memberInfo.UserName + "," + memberInfo.TrueName;
		this.lb_money.Text = memberInfo.Money.ToString();
	}
}
