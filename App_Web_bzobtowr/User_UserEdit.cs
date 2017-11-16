using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_UserEdit : Page, IRequiresSessionState
{
	protected Label lb_username;
	protected Label lb_truename;
	protected Label lb_tuijianRen;
	protected Label lb_bankAccount;
	protected Label lb_guanliRen;
	protected Label lb_bankType;
	protected Label lb_setMealName;
	protected Label lb_addDate;
	protected Label lb_zfbName;
	protected Label lb_zfb;
	protected HtmlGenericControl temp;
	protected Label lb_agencyName;
	protected TextBox tb_mobile;
	protected Label lb_Mondy;
	protected TextBox tb_qq;
	protected Button bt_update;
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
			if (this.Session["user"] != null)
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
		SetMealInfo setMealInfo = SetMealInfo.Read(memberInfo.SetMealId);
		this.lb_username.Text = memberInfo.UserName;
		this.lb_truename.Text = memberInfo.TrueName;
		this.lb_tuijianRen.Text = memberInfo.TuiJianRen;
		this.lb_guanliRen.Text = memberInfo.GuanLiRen;
		this.lb_bankType.Text = memberInfo.KaiHuBank;
		this.lb_bankAccount.Text = memberInfo.KaiHuAccount;
		this.lb_setMealName.Text = setMealInfo.Name;
		this.lb_addDate.Text = memberInfo.AddDate.ToString();
		this.lb_agencyName.Text = memberInfo.AgencyName;
		this.lb_Mondy.Text = memberInfo.Money.ToString();
		this.tb_mobile.Text = memberInfo.Mobile;
		this.tb_qq.Text = memberInfo.QQ;
		this.lb_zfb.Text = memberInfo.ZhiFuBao;
		this.lb_zfbName.Text = memberInfo.ZhiFuBaoName;
	}
	protected void bt_update_Click(object sender, EventArgs e)
	{
		MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
		memberInfo.Mobile = this.tb_mobile.Text;
		memberInfo.Update();
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功！');", true);
		this.BindData();
	}
}
