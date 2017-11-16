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
			sql = "select B.name as setMealName,B.money as price,C.mobile as mobile,A.* from productOrder as A,setMeal as B,member as C where A.userId= C.Id and C.setMealId=B.id and A.productType=1 and A.username like '%" + Utility.SQLString(this.tb_username.Text) + "%' order by A.id desc";
		}
		else
		{
			sql = "select B.name as setMealName,B.money as price,C.mobile as mobile,A.* from productOrder as A,setMeal as B,member as C where A.userId= C.Id and C.setMealId=B.id and A.productType=1 order by A.id desc";
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
	protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		ProductOrderInfo productOrderInfo = ProductOrderInfo.Read((int)this.gridview1.DataKeys[e.RowIndex].Value);
		productOrderInfo.Content = "";
		productOrderInfo.Status = 0;
		productOrderInfo.Update();
		this.BindData();
	}
	protected void bt_search_Click(object sender, EventArgs e)
	{
		this.BindData();
	}
}
