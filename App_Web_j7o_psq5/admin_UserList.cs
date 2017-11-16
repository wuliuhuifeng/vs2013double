using System;
using System.Data.OleDb;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class admin_UserList : Page, IRequiresSessionState
{
	protected GridView gridview1;
	protected Label lb_lastJieSuanDate;
	protected HiddenField hf_lastJieSuanId;
	protected TextBox newJieSuanDate;
	protected Button bt_jieSuan;
	protected HtmlForm form1;
	private Database db = new Database();
	public Pager pager = new Pager();
	public double allMoney;
	public double allJieSuan;
	public double biLi;
	public DateTime lastJieSuanDate = default(DateTime);
	public int lastQiShu;
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
		DateTime dateTime = default(DateTime);
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("Select * From JieSuanDate Order By Id Desc");
		if (mySqlDataReader.Read())
		{
			dateTime = DateTime.Parse(mySqlDataReader["AddDate"].ToString());
		}
		mySqlDataReader.Close();
		int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
		this.pager.CurrentPage = currentPage;
		this.pager.PageSize = 15;
		int recordConnt = 0;
		this.gridview1.DataSource = this.db.RunProcGetDataView(string.Concat(new string[]
		{
			"select userId, username,sum(duipengjiang) as duipengjiang,sum(jintie) as jintie,sum(allJiangjin) as allJiangjin from JiangJin where addDate>'",
			dateTime.ToString(),
			"' And addDate<='",
			dateTime.AddDays(1.0).ToString(),
			"' group by username,userId"
		}), (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.gridview1.DataBind();
		this.pager.UrlFormat = "?page={0}";
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
		MySqlDataReader mySqlDataReader2 = this.db.RunProcGetReader("select sum(price) as allMoney from(select B.money as price, A.* from member as A,setMeal as B where A.setMealId=B.id and A.status=1)");
		if (mySqlDataReader2.Read())
		{
			this.allMoney = double.Parse(mySqlDataReader2["allMoney"].ToString());
		}
		mySqlDataReader2.Close();
		MySqlDataReader mySqlDataReader3 = this.db.RunProcGetReader("select sum(shijiang) as allJieSuan from jiesuan");
		if (mySqlDataReader3.Read())
		{
			this.allJieSuan = 0.0;
			double.TryParse(mySqlDataReader3["allJieSuan"].ToString(), out this.allJieSuan);
		}
		mySqlDataReader3.Close();
		this.biLi = Math.Round(this.allJieSuan / this.allMoney * 100.0, 2);
        MySqlDataReader mySqlDataReader4 = this.db.RunProcGetReader("select * from JieSuanDate order by id desc limit 1");
		if (mySqlDataReader4.Read())
		{
			this.lastJieSuanDate = DateTime.Parse(mySqlDataReader4["addDate"].ToString());
			this.lb_lastJieSuanDate.Text = this.lastJieSuanDate.ToString();
			this.lastQiShu = int.Parse(mySqlDataReader4["JieSuanId"].ToString());
			this.newJieSuanDate.Text = this.lastJieSuanDate.AddDays(1.0).ToString();
			this.bt_jieSuan.Enabled = !(this.lastJieSuanDate.AddDays(1.0) > DateTime.Now);
			this.hf_lastJieSuanId.Value = mySqlDataReader4["JieSuanId"].ToString();
		}
		else
		{
			this.lastJieSuanDate = DateTime.Parse(string.Format("{0:yyyy-MM-dd 23:59:59}", DateTime.Now.AddDays(-1.0)));
			this.lastQiShu = 0;
			this.newJieSuanDate.Text = string.Format("{0:yyyy-MM-dd}", DateTime.Now) + " 23:59:59";
			this.hf_lastJieSuanId.Value = "0";
		}
		mySqlDataReader4.Close();
		this.db.Dispose();
	}
	protected void bt_jieSuan_Click(object sender, EventArgs e)
	{
		DateTime dateTime = DateTime.Parse(this.lb_lastJieSuanDate.Text);
		DateTime addDate = default(DateTime);
		int num = int.Parse(this.hf_lastJieSuanId.Value) + 1;
		if (DateTime.TryParse(this.newJieSuanDate.Text, out addDate))
		{
			this.db.RunNonQurey(string.Concat(new object[]
			{
				"insert into JieSuanDate(JieSuanId,AddDate)values(",
				num,
				",'",
				DateTime.Parse(this.newJieSuanDate.Text),
				"')"
			}));
			ConfigInfo configInfo = ConfigInfo.Read(1);
			MySqlDataReader mySqlDataReader = this.db.RunProcGetReader(string.Concat(new string[]
			{
				"select userId, username,sum(duipengjiang) as duipengjiang,sum(jintie) as jintie,sum(allJiangjin) as allJiangjin from JiangJin where addDate>'",
				dateTime.ToString(),
				"' And addDate<='",
				addDate.ToString(),
				"' group by username,userId"
			}));
			while (mySqlDataReader.Read())
			{
				double fenHong = Math.Round(double.Parse(mySqlDataReader["allJiangJin"].ToString()) * (double)configInfo.FenHong * 0.01, 2);
				double kouShui = Math.Round(double.Parse(mySqlDataReader["allJiangJin"].ToString()) * configInfo.KouShui * 0.01, 2);
				double num2 = Math.Round(this.GetShiJiang(mySqlDataReader["allJiangJin"].ToString(), mySqlDataReader["userId"].ToString()), 2);
				JieSuanInfo jieSuanInfo = new JieSuanInfo(0, int.Parse(mySqlDataReader["userId"].ToString()), mySqlDataReader["username"].ToString(), double.Parse(mySqlDataReader["duipengjiang"].ToString()), double.Parse(mySqlDataReader["jintie"].ToString()), double.Parse(mySqlDataReader["allJiangJin"].ToString()), fenHong, kouShui, num2, addDate, num);
				jieSuanInfo.Insert();
				MemberInfo memberInfo = MemberInfo.Read(int.Parse(mySqlDataReader["userId"].ToString()));
				memberInfo.JiangJin += num2;
				memberInfo.Update();
			}
			mySqlDataReader.Close();
			this.db.Dispose();
			this.BindData();
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "wrong", "alert('日期格式错误，请检查日期格式！');", true);
		this.BindData();
	}
	public double GetShiJiang(string allMoney, string userId)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(userId));
		SetMealInfo setMealInfo = SetMealInfo.Read(memberInfo.SetMealId);
		ConfigInfo configInfo = ConfigInfo.Read(1);
		double num = (double.Parse(allMoney) > setMealInfo.CappingAward) ? setMealInfo.CappingAward : double.Parse(allMoney);
		return num - num * (double)configInfo.FenHong * 0.01 - num * configInfo.KouShui * 0.01;
	}
}
