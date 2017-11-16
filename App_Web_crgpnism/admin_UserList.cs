using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_UserList : Page, IRequiresSessionState
{
	protected TextBox tb_username;
	protected RadioButtonList rbl_select;
	protected Button bt_search;
	protected GridView gridview1;
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
		string sql;
		if (this.tb_username.Text.Trim().Length > 0)
		{
			sql = string.Concat(new string[]
			{
				"select B.name as setMealName,  A.* from Member as A,setMeal as B where A.setMealId=B.id and A.",
				Utility.SQLString(this.rbl_select.SelectedValue),
				" like '%",
				Utility.SQLString(this.tb_username.Text),
				"%' order by A.id"
			});
		}
		else
		{
			sql = "select B.name as setMealName,  A.* from Member as A,setMeal as B where A.setMealId=B.id order by A.id";
		}
		this.gridview1.DataSource = this.db.RunProcGetDataView(sql, (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
		this.pager.UrlFormat = "?page={0}";
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
	}
	protected void bt_search_Click(object sender, EventArgs e)
	{
		this.BindData();
	}
}
