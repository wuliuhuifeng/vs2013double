using System;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_AdminEdit : Page, IRequiresSessionState
{
	protected HtmlInputText AdminName;
	protected HtmlInputPassword GetPwd;
	protected HtmlInputPassword AdminPwd;
	protected HtmlInputPassword AdminPwd2;
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
			if (this.Session["adminId"] != null)
			{
				this.BindData();
				return;
			}
			base.Response.Redirect("login.aspx");
		}
	}
	public void BindData()
	{
		AdminInfo adminInfo = AdminInfo.Read(int.Parse(this.Session["adminId"].ToString()));
		this.AdminName.Value = adminInfo.Name;
	}
	protected void bt_update_Click(object sender, EventArgs e)
	{
		if (this.AdminPwd.Value.Trim().Length <= 0 || !(this.AdminPwd.Value == this.AdminPwd2.Value))
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('新置密码不能为空或与确认新密码不一致！');", true);
			return;
		}
		string b = FormsAuthentication.HashPasswordForStoringInConfigFile(this.GetPwd.Value.Trim(), "md5").ToLower();
		AdminInfo adminInfo = AdminInfo.Read(int.Parse(this.Session["adminId"].ToString()));
		if (adminInfo.Password.ToLower() == b)
		{
			adminInfo.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(this.AdminPwd.Value.Trim(), "md5").ToLower();
			adminInfo.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功！');", true);
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('原密码错误！');", true);
	}
}
