using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_UserList : Page, IRequiresSessionState
{
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
		this.gridview1.DataSource = this.db.RunProcGetDataView("select * from tixian order by id desc", (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
		this.pager.UrlFormat = "?page={0}";
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
	}
	protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		this.db.RunNonQurey("delete from tixian where id=" + this.gridview1.DataKeys[e.RowIndex].Value.ToString());
		this.BindData();
	}
	protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		int num = int.Parse(((DropDownList)this.gridview1.Rows[e.RowIndex].FindControl("status")).SelectedValue);
		this.db.RunNonQurey(string.Concat(new object[]
		{
			"update tixian set status=",
			num,
			" where id=",
			this.gridview1.DataKeys[e.RowIndex].Value.ToString()
		}));
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "ok", "alert('修改成功！');", true);
		this.BindData();
	}
}
