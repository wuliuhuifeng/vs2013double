using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_ConfigSet : Page, IRequiresSessionState
{
	protected TextBox tb_username;
	protected TextBox tb_name;
	protected TextBox tb_price;
	protected HtmlInputText content;
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
		if (base.Request["id"] != null)
		{
			ProductOrderInfo productOrderInfo = ProductOrderInfo.Read(int.Parse(base.Request["id"]));
			this.tb_name.Text = productOrderInfo.Name;
			this.tb_price.Text = productOrderInfo.Price.ToString();
			this.tb_username.Text = productOrderInfo.UserName;
			this.content.Value = productOrderInfo.Content;
			return;
		}
		this.bt_update.Text = "发送产品";
	}
	protected void bt_update_Click(object sender, EventArgs e)
	{
		if (base.Request["id"] != null)
		{
			ProductOrderInfo productOrderInfo = ProductOrderInfo.Read(int.Parse(base.Request["id"]));
			if (this.content.Value.Length > 0)
			{
				productOrderInfo.Content = this.content.Value;
				productOrderInfo.Status = 1;
			}
			productOrderInfo.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('发送成功！');", true);
			return;
		}
		if (this.tb_name.Text.Length <= 0)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('收货人不能为空！');", true);
			return;
		}
		List<MemberInfo> list = MemberInfo.ReadList("where username='" + this.tb_username.Text + "'");
		if (list.Count == 1)
		{
			ProductOrderInfo productOrderInfo2 = new ProductOrderInfo(0, 2, list[0].Id, list[0].UserName, this.tb_name.Text, "", 0.0, this.content.Value, DateTime.Now, 1);
			productOrderInfo2.Insert();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('发送成功！');", true);
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('没有找到此收货人！');", true);
	}
}
