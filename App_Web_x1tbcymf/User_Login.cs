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
public class User_Login : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected HtmlInputText UserName;
	protected HtmlInputPassword UserPwd;
	protected HtmlInputText GetCode;
	protected ImageButton ib_login;
    protected Button ib_login1;
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
		if (!base.IsPostBack && this.Session["user"] != null)
		{
			base.Response.Redirect("default.aspx");
		}
	}
    
   
	protected void ib_login_Click(object sender, ImageClickEventArgs e)
	{
		if (this.Session["checkcode"] == null || this.GetCode==null || !(this.GetCode.Value.ToUpper() == this.Session["checkcode"].ToString().ToUpper()))
		{
			base.Response.Write("<script>alert('验证码错误！');location.href='login.aspx';</script>");
			return;
		}
		if (this.UserName.Value.Trim().Length != 0 || this.UserPwd.Value.Trim().Length != 0)
		{
            MySqlCommand mySqlCommand = this.db.CreateCmd("select * from Member where username=@name and status=1");
            mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.UserName.Value;
            MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
			if (mySqlDataReader.Read())
			{
				string text = this.UserPwd.Value.Trim();
				text = FormsAuthentication.HashPasswordForStoringInConfigFile(text, "md5");
				if (mySqlDataReader["password"].ToString().ToLower() == text.ToLower())
				{
					this.Session["user"] = mySqlDataReader["username"].ToString();
					this.Session["userId"] = mySqlDataReader["id"].ToString();
					base.Response.Cookies["user"].Value = mySqlDataReader["username"].ToString();
					base.Response.Cookies["password"].Value = mySqlDataReader["password"].ToString();
					base.Response.Write("<script>top.parent.location.href='default.aspx';</script>");
				}
				else
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('密码错误！');", true);
				}
			}
			else
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('不存在此用户或此用户还未通过审核！');", true);
			}
			mySqlDataReader.Close();
			this.db.Dispose();
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('用户名或密码不能为空！');", true);
	}
}
