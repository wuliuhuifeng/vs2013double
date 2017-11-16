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
	protected TextBox tb_guanliRen;
	protected TextBox tb_agencyName;
	protected DropDownList ddl_setMeal;
	protected DropDownList ddl_bankType;
	protected TextBox tb_bankName;
	protected TextBox tb_bankAccount;
	protected TextBox tb_zfbName;
	protected TextBox tb_zfb;
	protected HtmlGenericControl temp;
	protected TextBox tb_mobile;
	protected TextBox tb_qq;
    protected Label  lb_jifen;
	protected Button bt_add;
	protected HtmlForm form1;
    protected TextBox setMealdb;
    protected TextBox ddlvalhidden;
    protected int strval1;
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
				if (base.Request["user"] != null && base.Request["user"].Trim().Length > 0)
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
        MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
        //this.tb_username.Text = memberInfo.UserName.ToString();
        //this.lb_money.Text = memberInfo.JiangJin.ToString();
        //this.tb_password.Text = memberInfo.Password.ToString();
        //this.tb_passwordA.Text = memberInfo.PasswordA.ToString();
		this.tb_guanliRen.Text = base.Server.UrlDecode(base.Request["guanli"].Trim());
		this.tb_tuijianren.Text = this.Session["user"].ToString();
		this.tb_agencyName.Text = this.Session["user"].ToString();
		this.ddl_setMeal.DataSource = this.db.RunProcGetDataView("select * from setMeal order by id");
        this.ddl_setMeal.DataTextField = "name";
		this.ddl_setMeal.DataValueField = "id";
		this.ddl_setMeal.DataBind();
        this.lb_jifen.Text = memberInfo.JiFen.ToString();
        this.tb_bankName.Text = memberInfo.KaiHuBank.ToString();
        this.tb_bankAccount.Text = memberInfo.KaiHuAccount.ToString();
        this.tb_mobile.Text = memberInfo.Mobile.ToString();
        this.tb_qq.Text = memberInfo.QQ.ToString();
        //this.lb_jifen.Text = this.Session["lb_jifen"].ToString(); ;
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
        MemberInfo memberInfo1 = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
        

            if (this.tb_password.Text.Length == 0 || this.tb_passwordA.Text.Length == 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('一级密码与二级密码都不能为空！');", true);
			return;
		}
		if (this.tb_guanliRen.Text.Trim().Length > 0)
		{
			IList<MemberInfo> list = MemberInfo.ReadList(" where username='" + Utility.SQLString(this.tb_guanliRen.Text) + "'");
			if (list.Count == 1)
			{
				if (list[0].Status == 0 && MemberInfo.ReadList(" where guanliRen='" + Utility.SQLString(this.tb_guanliRen.Text) + "'").Count > 0)
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('未审核会员只能发展一个分支！');", true);
					return;
				}
				if (MemberInfo.ReadList(string.Concat(new object[]
				{
				" where guanliRen='",Utility.SQLString(this.tb_guanliRen.Text),"' and fenzhi=",int.Parse(base.Request["fenzhi"])})).Count > 0)
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('此管理人的分支已存在！');", true);
					return;
				}
				if (MemberInfo.ReadList(" where username='" + Utility.SQLString(this.tb_agencyName.Text.Trim()) + "'").Count == 1)
				{
                    MemberInfo memberInfo = new MemberInfo(
                        0,this.tb_username.Text,                   
                        FormsAuthentication.HashPasswordForStoringInConfigFile(this.tb_password.Text.Trim(), "md5"), FormsAuthentication.HashPasswordForStoringInConfigFile(this.tb_passwordA.Text, "md5"), 
                        ((list[0].UserPath.Length > 0) ? (list[0].UserPath + ",") : "") + list[0].Id,
                        this.tb_tuijianren.Text, 
                        this.tb_guanliRen.Text, 
                        this.tb_agencyName.Text, 
                        int.Parse(this.ddl_setMeal.SelectedValue), 
                        this.tb_bankName.Text,
                        "",
                        this.ddl_bankType.SelectedValue,
                        "",  
                        this.tb_bankAccount.Text,
                        this.tb_zfbName.Text,
                        this.tb_zfb.Text,
                        this.tb_mobile.Text,
                        this.tb_qq.Text,
                        int.Parse(base.Request["fenzhi"]), 
                        DateTime.Now,
                        0,
                        0.0,
                        0,
                        0,
                        -20.0,0);
                    this.ddlvalhidden.Style.Add("style", "display:none");
                    //this.tb_guanLiRen.Style.Add("style", "display:none");
                    strval1 = int.Parse(this.ddlvalhidden.Text); 
                    double num = 0;
                    if (strval1==1)
                    {
                        num=1200;
                    }
                    else if (strval1==2){
                        num=3600;
                    }
                    else if(strval1==3){
                        num=8400;
                    }
                    
                        
                        var list1=MemberInfo.ReadList(" where userName='" + Utility.SQLString(this.tb_tuijianren.Text.Trim()) + "'");
                        if (list1 != null && list.Count > 0) 
                          list1[0].Money -= num;
                          list1[0].Update();
                          memberInfo.Money = num;
					     memberInfo.Insert();
                        
					base.Response.Redirect("NetworkList.aspx");
					return;
				}
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('不存在此商务中心！');", true);
				return;
			}
			else
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('不存在此管理人！');", true);
			}
		}
       // if (this.tb_username.Text.Trim().Length>0 and this.tb_password.Text.Trim().Length>0 and this.tb_passwordA.Text.Trim().Length>0
         //   and this.tb_tuijianren.Text.Trim().Length>0 and this.tb_guanliRen.Text.Trim().Length>0)
        //{
        //    this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('是否要消耗积分为此用户注册！');", true);
       //     return;
        //}
	}
}  
