using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using MySql.Data.MySqlClient;
public class admin_updatesession : Page, IRequiresSessionState
{
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
		if (this.Session["userid"] == null && base.Request.Cookies["user"] != null && base.Request.Cookies["password"] != null)
		{
			Database database = new Database();
			MySqlCommand mySqlCommand = database.CreateCmd("select * from Member where username=@username and password=@password");
            mySqlCommand.Parameters.Add("@username", MySqlDbType.VarChar).Value = base.Request.Cookies["user"].Value.Replace("'", "");
            mySqlCommand.Parameters.Add("@password", MySqlDbType.VarChar).Value = base.Request.Cookies["password"].Value.Replace("'", "");
            MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
			if (mySqlDataReader.Read())
			{
				this.Session["userId"] = mySqlDataReader["id"].ToString();
				this.Session["user"] = mySqlDataReader["username"].ToString();
				base.Response.Cookies["user"].Value = mySqlDataReader["username"].ToString();
				base.Response.Cookies["password"].Value = base.Request.Cookies["password"].Value.Replace("'", "");
			}
			else
			{
				base.ClientScript.RegisterStartupScript(base.GetType(), "wrongCode", "alert('用户名或密码错误，请确认您的用户名和密码是否正确');", true);
			}
			mySqlDataReader.Close();
			database.Dispose();
		}
	}
}
