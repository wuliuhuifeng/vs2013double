using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_NewsView : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected Label lb_newscate;
	protected Label lb_newsTitle;
	protected Label lb_newsDate;
	protected Label lb_newsContent;
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
			if (this.Session["userId"] != null)
			{
				if (base.Request.QueryString["id"] != null)
				{
					this.BindData();
					return;
				}
			}
			else
			{
				base.Response.Redirect("login.aspx");
			}
		}
	}
	public void BindData()
	{
		NewsInfo newsInfo = NewsInfo.Read(int.Parse(base.Request["id"]));
		this.lb_newsTitle.Text = newsInfo.Title;
		this.lb_newsDate.Text = newsInfo.AddDate.ToString();
		this.lb_newsContent.Text = newsInfo.Conent;
		NewsSortInfo newsSortInfo = NewsSortInfo.Read(newsInfo.SortId);
		this.lb_newscate.Text = newsSortInfo.SortName;
	}
}
