using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_SetMealList : Page, IRequiresSessionState
{
	protected GridView gridview1;
	protected CheckBox cb_isAgency;
	protected TextBox name;
	protected TextBox money;
	protected TextBox point;
	protected TextBox cappingAward;
	protected TextBox touchAward;
	protected TextBox serviceAward;
    protected TextBox rapidAward;
    protected TextBox jiandianAward;
	protected Button bt_add;
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
		this.gridview1.DataSource = this.db.RunProcGetDataView("select * from SetMeal order by id asc");
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
	}
	protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		try
		{
			SetMealInfo setMealInfo = SetMealInfo.Read((int)this.gridview1.DataKeys[e.RowIndex].Value);
			setMealInfo.Name = ((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("name")).Text;
			setMealInfo.Money = double.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("money")).Text);
			setMealInfo.Point = int.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("point")).Text);
			setMealInfo.CappingAward = double.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("cappingAward")).Text);
			setMealInfo.TouchAward = double.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("touchAward")).Text);
			setMealInfo.ServiceAward = double.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("serviceAward")).Text);
            setMealInfo.rapidAward = double.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("rapidAward")).Text);
            setMealInfo.jiandianAward = double.Parse(((TextBox)this.gridview1.Rows[e.RowIndex].FindControl("jiandianAward")).Text);
			setMealInfo.IsAgency = (((CheckBox)this.gridview1.Rows[e.RowIndex].FindControl("isAgency")).Checked ? 1 : 0);
			setMealInfo.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功');", true);
			this.BindData();
		}
		catch (Exception ex)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('" + ex.Message + "');", true);
		}
	}
	protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		SetMealInfo.Delete((int)this.gridview1.DataKeys[e.RowIndex].Value);
		this.BindData();
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		try
		{
			//SetMealInfo setMealInfo = new SetMealInfo(0, this.name.Text, double.Parse(this.money.Text), int.Parse(this.point.Text), double.Parse(this.cappingAward.Text), double.Parse(this.touchAward.Text), double.Parse(this.serviceAward.Text), DateTime.Now, this.cb_isAgency.Checked ? 1 : 0);
            SetMealInfo setMealInfo = new SetMealInfo(0, this.name.Text, double.Parse(this.money.Text), int.Parse(this.point.Text), double.Parse(this.cappingAward.Text), double.Parse(this.rapidAward.Text), double.Parse(this.jiandianAward.Text), 0, 0, DateTime.Now, this.cb_isAgency.Checked ? 1 : 0);
            setMealInfo.Insert();
			this.BindData();
		}
		catch (Exception ex)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('" + ex.Message + "');", true);
		}
	}
}
