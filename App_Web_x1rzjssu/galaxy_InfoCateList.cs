using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class galaxy_InfoCateList : Page, IRequiresSessionState
{
	protected GridView gv_catelist;
	protected TextBox tb_name;
	protected TextBox tb_tableName;
	protected TextBox tb_description;
	protected Button bt_add;
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
		this.gv_catelist.DataSource = this.db.RunProcGetDataView("select * from [ModuleList] order by id");
		this.gv_catelist.DataKeyNames = new string[]
		{
			"id"
		};
		this.gv_catelist.DataBind();
	}
	protected void gv_catelist_RowDataBound(object sender, GridViewRowEventArgs e)
	{
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		ModuleListInfo moduleListInfo = new ModuleListInfo(0, this.tb_name.Text, this.tb_tableName.Text, this.tb_description.Text, DateTime.Now);
		moduleListInfo.Insert();
		this.db.RunNonQurey("Create TABLE " + this.tb_tableName.Text + "(Id AutoIncrement primary key,SortId int not null default 0)");
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('添加成功！');", true);
		this.BindData();
	}
	protected void gv_catelist_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		ModuleListInfo.Delete((int)this.gv_catelist.DataKeys[e.RowIndex].Value);
		try
		{
			string text = ((TextBox)this.gv_catelist.Rows[e.RowIndex].FindControl("tb_tableName")).Text;
			this.db.RunNonQurey("drop table " + text);
		}
		catch
		{
		}
		this.BindData();
	}
	protected void gv_catelist_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		ModuleListInfo moduleListInfo = ModuleListInfo.Read((int)this.gv_catelist.DataKeys[e.RowIndex].Value);
		moduleListInfo.ModuleName = ((TextBox)this.gv_catelist.Rows[e.RowIndex].FindControl("tb_name")).Text;
		moduleListInfo.ModuleInfo = ((TextBox)this.gv_catelist.Rows[e.RowIndex].FindControl("tb_description")).Text;
		moduleListInfo.Update();
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功！');", true);
		this.BindData();
	}
	protected void bt_delete_Click(object sender, EventArgs e)
	{
	}
	protected void bt_save_Click(object sender, EventArgs e)
	{
	}
	protected void gv_catelist_RowEditing(object sender, GridViewEditEventArgs e)
	{
	}
}
