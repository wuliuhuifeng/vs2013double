using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_webconfig : Page, IRequiresSessionState
{
	protected TextBox name;
	protected HtmlInputText gonggao;
	protected HtmlInputText chengnuo;
	protected HtmlInputText contact;
	protected HtmlInputText jianjie;
	protected HtmlInputText foot;
	protected Button Button1;
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
	protected void BindData()
	{
		WebconfigInfo webconfigInfo = WebconfigInfo.Read(1);
		this.name.Text = webconfigInfo.Name;
		this.gonggao.Value = webconfigInfo.Gonggao;
		this.chengnuo.Value = webconfigInfo.Chengnuo;
		this.contact.Value = webconfigInfo.Contact;
		this.jianjie.Value = webconfigInfo.Jianjie;
		this.foot.Value = webconfigInfo.Foot;
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		WebconfigInfo webconfigInfo = WebconfigInfo.Read(1);
		webconfigInfo.Name = this.name.Text;
		webconfigInfo.Gonggao = this.gonggao.Value;
		webconfigInfo.Chengnuo = this.chengnuo.Value;
		webconfigInfo.Contact = this.contact.Value;
		webconfigInfo.Foot = this.foot.Value;
		webconfigInfo.Jianjie = this.jianjie.Value;
		webconfigInfo.Update();
		base.Response.Write("<script>alert('修改成功！');location.href='" + base.Request.RawUrl + "';</script>");
	}
}
