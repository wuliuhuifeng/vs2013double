using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class admin_ConfigSet : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected TextBox tb_fenHong;
	protected TextBox tb_kouShui;
	protected Button bt_update;
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
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("select * from config");
        if (mySqlDataReader.Read())
		{
            this.tb_fenHong.Text = double.Parse(mySqlDataReader["fenhong"].ToString()).ToString();
            this.tb_kouShui.Text = mySqlDataReader["koushui"].ToString();
		}
        mySqlDataReader.Close();
		this.db.Dispose();
	}
	protected void bt_update_Click(object sender, EventArgs e)
	{
		this.db.RunNonQurey(string.Concat(new object[]
		{
			"update config set fenhong=",
			double.Parse(this.tb_fenHong.Text),
			",koushui=",
			double.Parse(this.tb_kouShui.Text)
		}));
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "ok", "alert('修改成功');", true);
	}
}
