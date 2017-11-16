using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
public class User_Default : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected Label lb_userName;
	protected Label lb_setMealName;
	protected Label lb_money;
	protected Label lb_money1;
    protected Label lb_jifen;
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
			if (this.Session["user"] == null)
			{
				base.Response.Redirect("login.aspx");
				return;
			}
			this.BindData();
		}
	}
	public void BindData()
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		this.lb_userName.Text = memberInfo.UserName;
		this.lb_money.Text = memberInfo.Money.ToString();
        this.lb_jifen.Text = memberInfo.JiFen.ToString();
		SetMealInfo setMealInfo = SetMealInfo.Read(memberInfo.SetMealId);
		this.lb_setMealName.Text = setMealInfo.Name;
	}
}
