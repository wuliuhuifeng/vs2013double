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
		if (this.Session["adminId"] == null && base.Request.Cookies["admin"] != null && base.Request.Cookies["adminPWD"] != null)
		{
			Database database = new Database();
			MySqlCommand mySqlCommand = database.CreateCmd("select * from Admin where name=@username and password=@password");
			mySqlCommand.Parameters.Add("@username", MySqlDbType.VarChar).Value = base.Request.Cookies["admin"].Value.Replace("'", "");
			mySqlCommand.Parameters.Add("@password", MySqlDbType.VarChar).Value = base.Request.Cookies["adminPWD"].Value.Replace("'", "");
			MySqlDataReader mySqlDataReader = mySqlCommand.ExecuteReader();
			if (mySqlDataReader.Read())
			{
				this.Session["admin"] = mySqlDataReader["name"].ToString();
				this.Session["adminId"] = mySqlDataReader["id"].ToString();
				base.Response.Cookies["admin"].Value = mySqlDataReader["name"].ToString();
				base.Response.Cookies["adminPWD"].Value = mySqlDataReader["password"].ToString();
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
