using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
public class User_NewsList : Page, IRequiresSessionState
{
	private Database db = new Database();
	public Pager pager = new Pager();
	protected Repeater rp_newslist;
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
		string sql;
		if (base.Request["id"] != null && base.Request["id"].Trim().Length > 0)
		{
			sql = "select B.sortname as sortName, A.* from news as A,newsSort as B where A.sortId=B.id and A.sortId=" + int.Parse(base.Request["id"]) + " order by A.istop desc, A.id desc";
		}
		else
		{
			sql = "select B.sortname as sortName, A.* from news as A,newsSort as B where A.sortId=B.id order by A.istop desc A.id desc";
		}
		this.rp_newslist.DataSource = this.db.RunProcGetDataView(sql, (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.rp_newslist.DataBind();
		this.pager.UrlFormat = "?page={0}&id=" + base.Request["id"].Trim();
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
	}
}
