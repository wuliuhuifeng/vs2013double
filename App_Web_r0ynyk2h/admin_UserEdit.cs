using System;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_UserEdit : Page, IRequiresSessionState
{
	private Database db = new Database();
	protected TextBox tb_username;
	protected Label lb_jiangjin;
    protected Label lb_jifen;
	protected TextBox tb_tuiJianRen;
	protected TextBox tb_truename;
	protected TextBox tb_guanLiRen;
	protected TextBox tb_bankAccount;
	protected DropDownList ddl_setMealId;
	protected DropDownList ddl_bankType;
	protected TextBox tb_zfbName;
	protected TextBox tb_zfb;
	protected HtmlGenericControl temp;
	protected TextBox tb_password;
	protected TextBox tb_passwordA;
	protected Label lb_left;
	protected Label lb_right;
	protected TextBox tb_qq;
	protected TextBox tb_mobile;
	protected TextBox tb_agenctname;
	protected Button bt_add;
	protected Label lb_money;
	protected TextBox tb_money;
    protected Button bt_chongzhi;
    protected TextBox tb_jiangjin;
    protected Button bt_jifen;
    protected TextBox tb_jifen;
    protected Button bt_jiangjin;
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
		this.ddl_setMealId.DataSource = this.db.RunProcGetDataView("select * from setMeal");
		this.ddl_setMealId.DataTextField = "name";
		this.ddl_setMealId.DataValueField = "id";
		this.ddl_setMealId.DataBind();
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(base.Request["id"]));
		this.tb_username.Text = memberInfo.UserName;
		this.tb_truename.Text = memberInfo.TrueName;
		this.tb_tuiJianRen.Text = memberInfo.TuiJianRen;
		this.lb_jiangjin.Text = "<font color=red><b>" + memberInfo.JiangJin + "</b></font>";
        this.lb_jifen.Text = "<font color=red><b>" + memberInfo.Money + "</b></font>";
		this.tb_guanLiRen.Text = memberInfo.GuanLiRen;
		this.tb_bankAccount.Text = memberInfo.KaiHuAccount;
		this.ddl_setMealId.SelectedValue = memberInfo.SetMealId.ToString();
		this.ddl_bankType.SelectedValue = memberInfo.KaiHuBank;
		this.lb_left.Text = memberInfo.ZuoQu.ToString();
		this.lb_right.Text = memberInfo.YouQu.ToString();
		this.tb_qq.Text = memberInfo.QQ;
		this.tb_mobile.Text = memberInfo.Mobile;
		this.tb_agenctname.Text = memberInfo.AgencyName;
		this.lb_money.Text = memberInfo.Money.ToString();
		this.tb_zfbName.Text = memberInfo.ZhiFuBaoName;
		this.tb_zfb.Text = memberInfo.ZhiFuBao;
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(base.Request["id"]));
		memberInfo.TuiJianRen = this.tb_tuiJianRen.Text;
		memberInfo.TrueName = this.tb_truename.Text;
		memberInfo.KaiHuAccount = this.tb_bankAccount.Text;
		memberInfo.KaiHuBank = this.ddl_bankType.SelectedValue;
		memberInfo.SetMealId = int.Parse(this.ddl_setMealId.SelectedValue);
		if (this.tb_password.Text.Trim().Length > 0)
		{
			memberInfo.Password = FormsAuthentication.HashPasswordForStoringInConfigFile(this.tb_password.Text.Trim(), "md5");
		}
		if (this.tb_passwordA.Text.Trim().Length > 0)
		{
			memberInfo.PasswordA = FormsAuthentication.HashPasswordForStoringInConfigFile(this.tb_passwordA.Text.Trim(), "md5");
		}
		memberInfo.QQ = this.tb_qq.Text;
		memberInfo.Mobile = this.tb_mobile.Text;
		memberInfo.AgencyName = this.tb_agenctname.Text;
		memberInfo.ZhiFuBaoName = this.tb_zfbName.Text;
		memberInfo.ZhiFuBao = this.tb_zfb.Text;
		memberInfo.Update();
	}
	protected void bt_chongzhi_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(base.Request["id"]));
		memberInfo.Money += double.Parse(this.tb_money.Text);
		memberInfo.Update();
		CaiwuInfo caiwuInfo = new CaiwuInfo(0, this.Session["admin"].ToString(), memberInfo.Id, memberInfo.UserName,
            double.Parse(this.tb_money.Text),memberInfo.Money, "充值" + this.tb_money.Text, DateTime.Now);

		caiwuInfo.Insert();
		this.BindData();
	}
    protected void bt_jifen_Click(object sender, EventArgs e)
    {
        MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
        double num = 0;
        if (!double.TryParse(this.lb_jiangjin.Text.Trim(), out num) || num <= 0)
        {
            this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换金额必须为正数！');", true);
            return;
        }
        if (memberInfo.JiangJin >= (double)num)
        {
            memberInfo.JiangJin -= (double)num;
            memberInfo.JiFen += (double)num;
            memberInfo.Update();
            this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换积分成功！');", true);
            this.tb_jiangjin.Text = "<font color=red><b>" + memberInfo.JiangJin + "</b></font>";
            this.lb_jifen.Text = "<font color=red><b>" + memberInfo.JiFen + "</b></font>";
            //this.tb_money.Text = "";
            return;
        }
        this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换金额不能大于当前余额！');", true);
    }
 

}
