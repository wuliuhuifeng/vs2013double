using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class User_BaoBiao : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected Label lb_left;
	protected Label lb_right;
	protected Label lb_leftA;
	protected Label lb_rightA;
	protected Label lb_leftB;
	protected Label lb_rightB;
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
		if (!base.IsPostBack && this.Session["userId"] != null)
		{
			if (this.Session["password"] != null)
			{
				this.BindData();
				return;
			}
			base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
		}
	}
	public void BindData()
	{
		string text = string.Format("{0:yyyy-MM-dd 23:59:59}", DateTime.Now);
		string text2 = string.Format("{0:yyyy-MM-dd 23:59:59}", DateTime.Now.AddDays(-1.0));
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader(string.Concat(new object[]
		{
			"select sum(pengzuo) as zuo,sum(pengyou) as you from duipeng where userid=",
			int.Parse(this.Session["userId"].ToString()),
			" and adddate<'",
			text,
			"' group by userid,username"
		}));
		if (mySqlDataReader.Read())
		{
			this.lb_leftA.Text = mySqlDataReader["zuo"].ToString();
			this.lb_rightA.Text = mySqlDataReader["you"].ToString();
		}
		mySqlDataReader.Close();
        MySqlDataReader mySqlDataReader2 = this.db.RunProcGetReader(string.Concat(new object[]
		{
			"select sum(pengzuo) as zuo,sum(pengyou) as you from duipeng where userid=",
			int.Parse(this.Session["userId"].ToString()),
			" and adddate<'",
			text2,
			"' group by userid,username"
		}));
		if (mySqlDataReader2.Read())
		{
			this.lb_left.Text = mySqlDataReader2["zuo"].ToString();
			this.lb_right.Text = mySqlDataReader2["you"].ToString();
		}
		mySqlDataReader2.Close();
        MySqlDataReader mySqlDataReader3 = this.db.RunProcGetReader(string.Concat(new object[]
		{
			"select sum(pengzuo) as zuo,sum(pengyou) as you from duipeng where userid=",
			int.Parse(this.Session["userId"].ToString()),
			" and adddate>'",
			text2,
			"' and addDate<'",
			text,
			"' group by userid,username"
		}));
		if (mySqlDataReader3.Read())
		{
			this.lb_leftB.Text = mySqlDataReader3["zuo"].ToString();
			this.lb_rightB.Text = mySqlDataReader3["you"].ToString();
		}
		mySqlDataReader3.Close();
	}
}
