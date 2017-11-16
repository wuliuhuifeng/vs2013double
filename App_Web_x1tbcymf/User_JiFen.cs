using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_JiFen : Page, IRequiresSessionState
{
    protected Label lb_username;
    protected Label lb_money;
    protected Label lb_jifen;
    
    protected HtmlGenericControl temp;
    protected HtmlInputText tb_money;
    protected HtmlInputText tb_jifen;
    protected Button bt_jiangjin;
    protected Button bt_jifen;
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
        this.lb_jifen.Text = memberInfo.JiFen.ToString();
    }
    protected void bt_jifen_Click(object sender, EventArgs e)
    {
        MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
        double num = 0;
        if (!double.TryParse(this.tb_money.Value.Trim(), out num) || num <= 0)
        {
            this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换金额必须为正数！');", true);
            return;
        }
        base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
        if (memberInfo.JiangJin >= (double)num)
        {
            memberInfo.JiangJin -= (double)num;
            memberInfo.JiFen += (double)num;
            memberInfo.Update();
            this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换积分成功！');", true);
            this.lb_money.Text = memberInfo.JiangJin.ToString();
            this.lb_jifen.Text = memberInfo.JiFen.ToString();
            this.tb_money.Value = "";
            return;
        }
        base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
        this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换金额不能大于当前余额！');", true);
    }
    protected void bt_jiangjin_Click(object sender, EventArgs e)
    {
        
        MemberInfo memberInfo = MemberInfo.Read(int.Parse(this.Session["userId"].ToString()));
        double num = 0;
        if (!double.TryParse(this.tb_jifen.Value.Trim(), out num) || num <= 0)
        {
            this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换积分必须为正数！');", true);
            return;
        }
        else {
            base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
        }
        if (memberInfo.JiFen >= (double)num)
        {
            memberInfo.JiFen -= (double)num;
            memberInfo.JiangJin += (double)num;
            memberInfo.Update();
            base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
            this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换奖金成功！');", true);
            this.lb_money.Text = memberInfo.JiangJin.ToString();
            this.lb_jifen.Text = memberInfo.JiFen.ToString();
            this.tb_jifen.Value = "";
            return;
        }
        this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('兑换金额不能大于当前余额！');", true);
    }
}
