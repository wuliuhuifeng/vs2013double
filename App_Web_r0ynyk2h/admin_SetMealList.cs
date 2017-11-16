using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_SetMealList : Page, IRequiresSessionState
{
	protected GridView gridview1;
	protected HtmlForm form1;
	private Database db = new Database();
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
		this.gridview1.DataSource = this.db.RunProcGetDataView("select * from goods order by id desc");
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
	}
	protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		try
		{
			GoodsInfo goodsInfo = GoodsInfo.Read((int)this.gridview1.DataKeys[e.RowIndex].Value);
			goodsInfo.Name = ((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("name")).Text;
			goodsInfo.Price = ((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("price")).Text;
			goodsInfo.Picture = ((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("picture")).Text;
			goodsInfo.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功');", true);
			this.BindData();
		}
		catch (Exception ex)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('" + ex.Message + "');", true);
		}
	}
	protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		GoodsInfo.Delete((int)this.gridview1.DataKeys[e.RowIndex].Value);
		this.BindData();
	}
}
