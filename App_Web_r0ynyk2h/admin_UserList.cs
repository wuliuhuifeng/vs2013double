using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_UserList : Page, IRequiresSessionState
{
	private Database db = new Database();
	public Pager pager = new Pager();
	public double pengDuiJiang;
	public double fuwuJiang;
	public double zongJinE;
	public double shiJiang;
	protected GridView gridview1;
	protected GridView gridview2;
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
		this.gridview1.DataSource = this.db.RunProcGetDataView("select B.truename as truename, B.kaihuAccount as bankAccount, A.* from JieSuan as A,Member as B where A.userId=B.Id and A.userId=" + int.Parse(base.Request["userId"]) + " order by A.id desc", (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
		this.pager.UrlFormat = "?page={0}&userId=" + int.Parse(base.Request["userId"]);
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
		this.gridview2.DataSource = this.db.RunProcGetDataView("select * from tixian where userId=" + int.Parse(base.Request["userId"]) + " order by id desc");
		this.gridview2.DataBind();
	}
}
