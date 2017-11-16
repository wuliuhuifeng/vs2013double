using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_NewsList : Page, IRequiresSessionState
{
	protected Repeater rp_newslist;
	protected HtmlForm form1;
	private Database db = new Database();
	public Pager pager = new Pager();
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
			this.BindData();
			return;
		}
		base.Response.Redirect("login.aspx");
	}
	public void BindData()
	{
		int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
		this.pager.CurrentPage = currentPage;
		this.pager.PageSize = 15;
		int recordConnt = 0;
		this.rp_newslist.DataSource = this.db.RunProcGetDataView("select B.sortname as sortName, A.* from news as A,newsSort as B where A.sortId=B.id order by A.id desc", (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.rp_newslist.DataBind();
		this.pager.UrlFormat = "?page={0}";
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
	}
}
