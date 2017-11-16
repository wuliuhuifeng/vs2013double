using System;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
public class _Default : Page, IRequiresSessionState
{
	protected Repeater repeater1;
	protected Repeater repeater2;
	protected Repeater repeater3;
	public WebconfigInfo webconfig;
	private Database db = new Database();
	public StringBuilder sb_pic = new StringBuilder();
	public StringBuilder sb_link = new StringBuilder();
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
			this.BindData();
		}
	}
	public void BindData()
	{
		this.webconfig = WebconfigInfo.Read(1);
		//this.repeater1.DataSource = this.db.RunProcGetDataView("select * from ChanPin limit 10");
		//this.repeater1.DataBind();
        //this.repeater2.DataSource = this.db.RunProcGetDataView("select * from Article where sortId=26 limit 5");
		//this.repeater2.DataBind();
       // this.repeater3.DataSource = this.db.RunProcGetDataView("select * from Article where sortId=27 limit 5");
		//this.repeater3.DataBind();
        DataView dataView = this.db.RunProcGetDataView("select * from ChanPin limit 10");
		for (int i = 0; i < dataView.Count; i++)
		{
			this.sb_pic.Append(dataView[i]["picture"].ToString() + "|");
			this.sb_link.Append("ProductView.aspx?id=" + dataView[i]["id"].ToString() + "|");
		}
		this.db.Dispose();
	}
}
