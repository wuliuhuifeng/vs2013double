using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_TiXian : Page, IRequiresSessionState
{
	protected Label lb_username;
	protected Label lb_money;
	protected HtmlInputText kaihuhang;
	protected HtmlInputText kaihuname;
	protected HtmlInputText yinhang;
	protected HtmlInputText zfbName;
	protected HtmlInputText zfb;
	protected HtmlGenericControl temp;
	protected HtmlInputText tb_money;
	protected HtmlInputText shijian;
	protected Button bt_submit;
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
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		this.lb_username.Text = memberInfo.UserName;
		this.lb_money.Text = memberInfo.JiangJin.ToString();
		this.kaihuhang.Value = memberInfo.KaiHuBank;
		this.yinhang.Value = memberInfo.KaiHuAccount;
		this.zfbName.Value = memberInfo.ZhiFuBaoName;
		this.zfb.Value = memberInfo.ZhiFuBao;
		this.shijian.Value = string.Format("{0:yyyy-MM-dd hh-mm-ss}", DateTime.Now);
	}
	protected void bt_submit_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		int num = 0;
		if (!int.TryParse(this.tb_money.Value.Trim(), out num) || num <= 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('提现金额必须为正整数！');", true);
			return;
		}
        base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
		if (num % 100 != 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('提现金额必须为100的整数倍！');", true);
            base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
			return;
		}
        base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
		if (memberInfo.JiangJin >= (double)num)
		{
			TiXianInfo tiXianInfo = new TiXianInfo(0, memberInfo.Id, memberInfo.UserName, this.kaihuname.Value, memberInfo.KaiHuBank, memberInfo.KaiHuAccount, this.zfbName.Value, this.zfb.Value, num, DateTime.Now, 0);
			tiXianInfo.Insert();
			memberInfo.JiangJin -= (double)num;
			memberInfo.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('提现成功！');", true);
			return;
		}
        base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('提现金额不能大于当前余额！');", true);
	}
}
