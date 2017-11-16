using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class admin_UserList : Page, IRequiresSessionState
{
	protected Label lb_title;
	protected GridView gridview1;
	protected Repeater repeater1;
	protected HtmlForm form1;
	private Database db = new Database();
	public Pager pager = new Pager();
	public double pengDuiJiang;
	public double fuwuJiang;
	public double zongJinE;
	public double shiJiang;
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
		int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
		this.pager.CurrentPage = currentPage;
		this.pager.PageSize = 15;
		int recordConnt = 0;
		string text;
		if (base.Request["AddDate"] != null && base.Request["AddDate"].Trim().Length > 0)
		{
			this.lb_title.Text = string.Concat(new string[]
			{
				"(第 <font color=red>",
				(base.Request["id"] != null) ? base.Request["id"] : "",
				"</font> 期 结算时间为:",
				(base.Request["AddDate"] != null) ? base.Request["AddDate"] : "",
				")"
			});
			text = "select B.truename as truename, B.kaihuAccount as bankAccount, A.* from JieSuan as A,Member as B where A.userid=B.id and A.addDate=#" + base.Request["AddDate"] + "# order by A.id desc";
			this.gridview1.DataSource = this.db.RunProcGetDataView(text, (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		}
		else
		{
			text = "select B.truename as truename, B.kaihuAccount as bankAccount, A.* from JieSuan as A,Member as B where A.userId=B.Id order by A.id desc";
			this.gridview1.DataSource = this.db.RunProcGetDataView(text, (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		}
		try
		{
			MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("select sum(duipengjiang),sum(jintie),sum(allMoney),sum(shijiang) from(" + text + ")");
			if (mySqlDataReader.Read())
			{
				this.pengDuiJiang = double.Parse(mySqlDataReader.GetValue(0).ToString());
				this.fuwuJiang = double.Parse(mySqlDataReader.GetValue(1).ToString());
				this.zongJinE = double.Parse(mySqlDataReader.GetValue(2).ToString());
				this.shiJiang = double.Parse(mySqlDataReader.GetValue(3).ToString());
			}
			mySqlDataReader.Close();
			this.db.Dispose();
		}
		catch
		{
		}
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
		this.pager.UrlFormat = "?page={0}&kaishi=" + ((base.Request["kaishi"] != null) ? base.Request["kaishi"] : "") + "&id=" + ((base.Request["id"] != null) ? base.Request["id"] : "");
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
		this.repeater1.DataSource = this.db.RunProcGetDataView("select * from JieSuanDate order by id");
		this.repeater1.DataBind();
	}
}
