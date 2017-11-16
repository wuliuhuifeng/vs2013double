using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class User_NewsView : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected Label lb_title;
	protected Label lb_content;
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
				if (base.Request.QueryString["id"] != null)
				{
					this.BindData();
					return;
				}
			}
			else
			{
				base.Response.Redirect("login.aspx");
			}
		}
	}
	public void BindData()
	{
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("select * from news where sortId=" + int.Parse(base.Request["id"].ToString()));
		if (mySqlDataReader.Read())
		{
			this.lb_title.Text = mySqlDataReader["title"].ToString();
			this.lb_content.Text = mySqlDataReader["conent"].ToString();
		}
		mySqlDataReader.Close();
		this.db.Dispose();
	}
}
