using System;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_UserPwd : Page, IRequiresSessionState
{
	protected HtmlInputText UserName;
	protected HtmlInputPassword password;
	protected HtmlInputPassword newPassword;
	protected HtmlInputPassword passwordA;
	protected HtmlInputPassword newPasswordA;
	protected Button bt_update;
	protected HtmlForm form1;
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
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		this.UserName.Value = memberInfo.UserName;
	}
	protected void bt_update_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		if (this.password.Value.Trim().Length > 0)
		{
			if (this.newPassword.Value.Length <= 0)
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('新一级密码不能为空！');", true);
				return;
			}
			string a = FormsAuthentication.HashPasswordForStoringInConfigFile(this.password.Value.Trim(), "md5").ToLower();
			string text = FormsAuthentication.HashPasswordForStoringInConfigFile(this.newPassword.Value, "md5").ToLower();
			if (!(a == memberInfo.Password.ToLower()))
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('原一级密码错误！');", true);
				return;
			}
			memberInfo.Password = text;
		}
		if (this.passwordA.Value.Trim().Length > 0)
		{
			if (this.newPasswordA.Value.Length <= 0)
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('新二级密码不能为空！');", true);
				return;
			}
			string a2 = FormsAuthentication.HashPasswordForStoringInConfigFile(this.passwordA.Value.Trim(), "md5").ToLower();
			string text2 = FormsAuthentication.HashPasswordForStoringInConfigFile(this.newPasswordA.Value, "md5").ToLower();
			if (!(a2 == memberInfo.PasswordA.ToLower()))
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('原一级密码错误！');", true);
				return;
			}
			memberInfo.PasswordA = text2;
		}
		memberInfo.Update();
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改密码成功！');", true);
	}
}
