using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Profile;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_UserEdit : Page, IRequiresSessionState
{
    
    protected Label lb_username;
    protected Label lb_money;
	protected TextBox tb_username;
	protected TextBox tb_password;
	protected TextBox tb_passwordA;
	protected TextBox tb_tuijianren;
	protected TextBox tb_guanLiRen;
	protected TextBox tb_agencyName;
	protected DropDownList ddl_setMeal;
	protected DropDownList ddl_bankType;
	protected TextBox tb_bankName;
	protected TextBox tb_bankAccount;
	protected TextBox tb_bankAddress;
	protected TextBox tb_zfbName;
	protected TextBox tb_zfb;
	protected HtmlGenericControl temp;
	protected TextBox tb_mobile;
    protected TextBox tb_qq;
	protected Button bt_add;
	protected HtmlForm form1;
    protected Label  lb_jifen;
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
				if (base.Request["guanli"] != null && base.Request["guanli"].Trim().Length > 0)
				{
					this.BindData();
					return;
				}
				base.Response.Write("<script>history.go(-1);</script>");
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
        MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["adminId"].ToString()));
        
        this.lb_jifen.Text = memberInfo.JiFen.ToString();
		this.tb_guanLiRen.Text = base.Request["guanli"].Trim();
		this.tb_tuijianren.Text = this.Session["admin"].ToString();
		this.tb_agencyName.Text = this.Session["admin"].ToString();
		this.ddl_setMeal.DataSource = this.db.RunProcGetDataView("select * from setMeal order by id");
		this.ddl_setMeal.DataTextField = "name";
		this.ddl_setMeal.DataValueField = "id";
		this.ddl_setMeal.DataBind();
        this.lb_jifen.Text = "100";
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		if (this.tb_username.Text.Trim().Length == 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('用户名不能为空！');", true);
			return;
		}
		if (MemberInfo.ReadList(" where username='" + Utility.SQLString(this.tb_username.Text) + "'").Count > 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('用户名已经存在，请重新选择用户名！');", true);
			return;
		}
		if (this.tb_password.Text.Length == 0 || this.tb_passwordA.Text.Length == 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('一级密码与二级密码都不能为空！');", true);
			return;
		}
		if (this.tb_guanLiRen.Text.Trim().Length > 0)
		{
			IList<MemberInfo> list = MemberInfo.ReadList(" where username='" + Utility.SQLString(this.tb_guanLiRen.Text) + "'");
			if (list.Count == 1)
			{
				if (list[0].Status == 0 && MemberInfo.ReadList(" where guanliRen='" + Utility.SQLString(this.tb_guanLiRen.Text) + "'").Count > 0)
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('未审核会员只能发展一个分支！');", true);
					return;
				}
				if (MemberInfo.ReadList(string.Concat(new object[]
				{
					" where guanliRen='",
					Utility.SQLString(this.tb_guanLiRen.Text),
					"' and fenzhi=",
					int.Parse(base.Request["fenzhi"])
				})).Count > 0)
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('此管理人的分支已存在！');", true);
					return;
				}
				if (MemberInfo.ReadList(" where username='" + Utility.SQLString(this.tb_agencyName.Text.Trim()) + "'").Count == 1)
				{
					MemberInfo memberInfo = new MemberInfo(0, 
                        this.tb_username.Text, 
                        FormsAuthentication.HashPasswordForStoringInConfigFile(this.tb_password.Text.Trim(), "md5"), 
                        FormsAuthentication.HashPasswordForStoringInConfigFile(this.tb_passwordA.Text, "md5"), 
                        ((list[0].UserPath.Length > 0) ? (list[0].UserPath + ",") : "") + list[0].Id, 
              this.tb_tuijianren.Text, 
              this.tb_guanLiRen.Text,
              this.tb_agencyName.Text, 
              int.Parse(this.ddl_setMeal.SelectedValue),
              this.tb_bankName.Text,
              "",
              this.ddl_bankType.SelectedValue,
              this.tb_bankAddress.Text,
              this.tb_bankAccount.Text,
              "",
              "",
              this.tb_mobile.Text,
              this.tb_qq.Text,  
              int.Parse(base.Request["fenzhi"]),
              DateTime.Now, 
              0, 
              0.0,
              0,
              0,
              -20.0,
              0);
					memberInfo.Insert();
					base.Response.Redirect("UserListA.aspx");
					return;
				}
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('不存在此商务中心！');", true);
				return;
			}
			else
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('不存在此推荐人！');", true);
			}
		}
	}
}
