using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_login : Page, IRequiresSessionState
{
	protected TextBox username;
	protected TextBox password;
	protected TextBox checkcode;
	protected Button Button1;
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
		if (!base.IsPostBack && this.Session["adminId"] != null)
		{
			base.Response.Write("<script>top.parent.location.href='default.aspx';</script>");
		}
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		if (this.Session["checkcode"] != null && this.checkcode.Text.ToUpper() != this.Session["checkcode"].ToString().ToUpper())
		{
			base.Response.Write("<script>alert('验证码错误，请输入正确的验证码');parent.location.href='login.aspx';</script>");
			return;
		}
		IList<AdminInfo> list = AdminInfo.ReadList(string.Concat(new string[]
		{
			"where name='",
			this.username.Text.Replace("'", "").Replace("\"", ""),
			"' and password='",
			FormsAuthentication.HashPasswordForStoringInConfigFile(this.password.Text, "md5"),
			"'"
		}));
		if (list.Count == 1)
		{
			this.Session["admin"] = list[0].Name;
			this.Session["adminId"] = list[0].Id;
			base.Response.Write("<script>top.parent.location.href='default.aspx';</script>");
			return;
		}
		base.Response.Write("<script>alert('用户名或密码错误，请确认您的用户名和密码是否正确');location.href='login.aspx';</script>");
	}
}
