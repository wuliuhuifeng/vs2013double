using System;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_Password : Page, IRequiresSessionState
{
	protected HtmlInputText UserName;
	protected HtmlInputPassword pwd;
	protected Button bt_login;
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
		if (!base.IsPostBack)
		{
			if (this.Session["userId"] != null)
			{
				this.BindData();
				return;
			}
			base.Response.Redirect("login.aspx");
		}
	}
	public void BindData()
	{
		this.UserName.Value = this.Session["user"].ToString();
	}
	protected void bt_login_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		if (this.pwd.Value.Length <= 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('密码不能为空！');", true);
			return;
		}
		if (FormsAuthentication.HashPasswordForStoringInConfigFile(this.pwd.Value, "md5").ToLower() == memberInfo.PasswordA.ToLower())
		{
			this.Session["password"] = memberInfo.PasswordA;
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('登陆成功！');location.href='" + base.Request["url"] + "';", true);
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('密码错误！');", true);
	}
}
