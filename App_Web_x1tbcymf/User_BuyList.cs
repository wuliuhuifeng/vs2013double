using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class User_BuyList : Page, IRequiresSessionState
{
	protected Label lb_name;
	protected DropDownList ddl_money;
	protected Button bt_buy;
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
			if (this.Session["userId"] != null)
			{
				if (this.Session["password"] != null)
				{
					this.BindData();
					return;
				}
				base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
				return;
			}
			else
			{
				base.Response.Redirect("login.aspx");
			}
		}
	}
	public void BindData()
	{
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("select * from goods where id=" + int.Parse(base.Request["id"]));
		if (mySqlDataReader.Read())
		{
			this.lb_name.Text = mySqlDataReader["name"].ToString();
			string[] array = mySqlDataReader["price"].ToString().Split(new char[]
			{
				'|'
			});
			for (int i = 0; i < array.Length; i++)
			{
				this.ddl_money.Items.Add(array[i]);
			}
		}
		mySqlDataReader.Close();
		this.db.Dispose();
	}
	protected void bt_buy_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		if (memberInfo.Money >= double.Parse(this.ddl_money.SelectedValue))
		{
			memberInfo.Money -= double.Parse(this.ddl_money.SelectedValue);
			memberInfo.Update();
			ProductOrderInfo productOrderInfo = new ProductOrderInfo(0, 2, int.Parse(this.Session["userId"].ToString()), this.Session["user"].ToString(), "充值卡", "", double.Parse(this.ddl_money.SelectedValue), "", DateTime.Now, 0);
			productOrderInfo.Insert();
			//CaiwuInfo caiwuInfo = new CaiwuInfo(0, this.Session["user"].ToString(), memberInfo.Id, memberInfo.UserName, -double.Parse(this.ddl_money.SelectedValue), memberInfo.Money, "购物", DateTime.Now);
			//caiwuInfo.Insert();
			//this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('购买成功！');", true);
			//return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('货币不足！');", true);
	}
}
