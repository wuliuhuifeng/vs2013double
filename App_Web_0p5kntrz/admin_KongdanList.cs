using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class admin_KongdanList : Page, IRequiresSessionState
{
	private Database db = new Database();
	public int allPoint;
	private Pager pager = new Pager();
	protected Repeater repeater1;
	protected Repeater repeater2;
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
		this.repeater1.DataSource = this.db.RunProcGetDataView("select * from JieSuanDate order by id");
		this.repeater1.DataBind();
		if (base.Request["id"] != null && base.Request["id"].Trim() != "")
		{
			DateTime dateTime = DateTime.Now;
            MySqlDataReader oleDbDataReader = this.db.RunProcGetReader("select * from JieSuanDate where JieSuanId=" + int.Parse(base.Request["id"]));
			if (oleDbDataReader.Read())
			{
				dateTime = DateTime.Parse(oleDbDataReader["addDate"].ToString());
			}
			oleDbDataReader.Close();
			string text = string.Concat(new string[]
			{
				"select B.Point as Point,A.* from Member as A,setMeal as B where A.setMealId=B.id and A.status=1 and A.adddate>'",
				dateTime.AddDays(-1.0).ToString(),
				"' and A.addDate<'",
				dateTime.ToString(),
				"' order by A.id"
			});
			this.repeater2.DataSource = this.db.RunProcGetDataView(text);
			this.repeater2.DataBind();
			this.allPoint = this.db.RunProcGetCount("select sum(point) from (" + text + ")");
			return;
		}
		int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
		this.pager.CurrentPage = currentPage;
		this.pager.PageSize = 15;
		int recordConnt = 0;
		string text2 = string.Concat(new string[]
		{
			"select B.Point as Point,A.* from Member as A,setMeal as B where A.setMealId=B.id and A.status=1 and A.adddate>'",
			string.Format("{0:yyyy-MM-dd 23:59:59}", DateTime.Now.AddDays(-1.0)),
			"' and A.addDate<'",
			string.Format("{0:yyyy-MM-dd 23:59:59}", DateTime.Now),
			"' order by A.id"
		});
		this.repeater2.DataSource = this.db.RunProcGetDataView(text2, (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.repeater2.DataBind();
		this.pager.UrlFormat = "?page={0}";
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
		this.allPoint = this.db.RunProcGetCount("select sum(point) from (" + text2 + ")");
	}
}
