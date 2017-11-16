using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_NewsEdit : Page, IRequiresSessionState
{
	protected Label lb_t;
	protected HtmlSelect lei;
	protected HtmlInputText biaoti;
	protected CheckBox cb_titleRed;
	protected CheckBox cb_isTop;
	protected HtmlInputText content;
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
		this.lei.DataSource = this.db.RunProcGetDataView("select * from newsSort order by xuhao");
		this.lei.DataTextField = "sortName";
		this.lei.DataValueField = "id";
		this.lei.DataBind();
		if (base.Request.QueryString["id"] != null)
		{
			NewsInfo newsInfo = NewsInfo.Read(int.Parse(base.Request.QueryString["id"]));
			this.lei.Value = newsInfo.SortId.ToString();
			this.biaoti.Value = newsInfo.Title;
			this.cb_titleRed.Checked = (newsInfo.TitleRed == 1);
			this.cb_isTop.Checked = (newsInfo.IsTop == 1);
			this.content.Value = newsInfo.Conent;
			this.lb_t.Text = "修改文章";
			this.bt_add.Text = "提交修改";
		}
		if (base.Request.QueryString["id"] != null && base.Request.QueryString["action"] != null && base.Request.QueryString["action"] == "delete")
		{
			NewsInfo.Delete(int.Parse(base.Request["id"]));
			base.Response.Redirect("NewsList.aspx");
		}
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		if (base.Request.QueryString["id"] != null)
		{
			NewsInfo newsInfo = NewsInfo.Read(int.Parse(base.Request.QueryString["id"]));
			newsInfo.Title = this.biaoti.Value;
			newsInfo.TitleRed = (this.cb_titleRed.Checked ? 1 : 0);
			newsInfo.IsTop = (this.cb_isTop.Checked ? 1 : 0);
			newsInfo.Conent = this.content.Value;
			newsInfo.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功！');", true);
			return;
		}
		NewsInfo newsInfo2 = new NewsInfo(0, int.Parse(this.lei.Value), this.biaoti.Value, this.cb_titleRed.Checked ? 1 : 0, this.content.Value, DateTime.Now, this.cb_isTop.Checked ? 1 : 0);
		newsInfo2.Insert();
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('添加成功！');", true);
	}
}
