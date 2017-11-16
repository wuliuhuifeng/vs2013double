using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class galaxy_InfoCateList : Page, IRequiresSessionState
{
	protected Label lb_moduleName;
	protected GridView gv_catelist;
	protected HiddenField hf_id;
	protected TextBox tb_fieldInfo;
	protected TextBox tb_fieldName;
	protected TextBox tb_fieldInfoA;
	protected TextBox tb_fieldOrder;
	protected RadioButtonList rbl_fieldDataType;
	protected RadioButtonList rbl_htmlType;
	protected TextBox tb_defaultValue;
	protected TextBox tb_width;
	protected TextBox tb_height;
	protected CheckBox cb_isShow;
	protected TextBox tb_listWidth;
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
		if (base.Request.QueryString["id"] != null && base.Request.QueryString["id"] != "")
		{
			ModuleListInfo moduleListInfo = ModuleListInfo.Read(int.Parse(base.Request.QueryString["id"]));
			this.lb_moduleName.Text = "<font color=red>&lt;&lt; " + moduleListInfo.ModuleName + " &gt;&gt</font> 字段列表";
			this.gv_catelist.DataSource = this.db.RunProcGetDataView("select * from [ModuleField] where ModuleId=" + int.Parse(base.Request.QueryString["id"]) + " order by FieldOrder");
			this.gv_catelist.DataKeyNames = new string[]
			{
				"id"
			};
			this.gv_catelist.DataBind();
		}
	}
	protected void gv_catelist_RowDataBound(object sender, GridViewRowEventArgs e)
	{
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		if (this.hf_id.Value == "-1")
		{
			ModuleListInfo moduleListInfo = ModuleListInfo.Read(int.Parse(base.Request.QueryString["id"]));
			try
			{
				this.db.RunNonQurey(string.Concat(new string[]
				{
					"alter TABLE ",
					moduleListInfo.ModuleTableName,
					" add column ",
					this.tb_fieldName.Text,
					" ",
					this.rbl_fieldDataType.Text
				}));
				ModuleFieldInfo moduleFieldInfo = new ModuleFieldInfo(0, int.Parse(base.Request.QueryString["id"]), this.tb_fieldInfo.Text, this.tb_fieldName.Text, this.tb_fieldInfoA.Text, int.Parse(this.tb_fieldOrder.Text), this.rbl_fieldDataType.Text, int.Parse(this.rbl_htmlType.SelectedValue), this.tb_defaultValue.Text, this.tb_width.Text, this.tb_height.Text, this.cb_isShow.Checked ? 1 : 0, this.tb_listWidth.Text, DateTime.Now);
				moduleFieldInfo.Insert();
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('添加成功！');", true);
				this.BindData();
				return;
			}
			catch (Exception ex)
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('" + ex.Message + "');", true);
				return;
			}
		}
		ModuleFieldInfo moduleFieldInfo2 = ModuleFieldInfo.Read(int.Parse(this.hf_id.Value));
		moduleFieldInfo2.FieldInfo = this.tb_fieldInfo.Text;
		moduleFieldInfo2.FieldInfoA = this.tb_fieldInfoA.Text;
		moduleFieldInfo2.FieldOrder = int.Parse(this.tb_fieldOrder.Text);
		moduleFieldInfo2.HtmlType = int.Parse(this.rbl_htmlType.SelectedValue);
		moduleFieldInfo2.DefaultValue = this.tb_defaultValue.Text;
		moduleFieldInfo2.Width = this.tb_width.Text;
		moduleFieldInfo2.Height = this.tb_height.Text;
		moduleFieldInfo2.IsShow = (this.cb_isShow.Checked ? 1 : 0);
		moduleFieldInfo2.ListWidth = this.tb_listWidth.Text;
		moduleFieldInfo2.Update();
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功！');", true);
		this.BindData();
	}
	protected void gv_catelist_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		try
		{
			ModuleListInfo moduleListInfo = ModuleListInfo.Read(int.Parse(base.Request.QueryString["id"]));
			string text = ((TextBox)this.gv_catelist.Rows[e.RowIndex].FindControl("fieldName")).Text;
			this.db.RunNonQurey("alter table " + moduleListInfo.ModuleTableName + " drop " + text);
			ModuleFieldInfo.Delete((int)this.gv_catelist.DataKeys[e.RowIndex].Value);
		}
		catch (Exception ex)
		{
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('" + ex.Message + "');", true);
		}
		this.BindData();
	}
	protected void gv_catelist_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
	}
	protected void gv_catelist_RowEditing(object sender, GridViewEditEventArgs e)
	{
		for (int i = 0; i < this.gv_catelist.Rows.Count; i++)
		{
			if (i == e.NewEditIndex)
			{
				this.gv_catelist.Rows[i].CssClass = "select";
			}
			else
			{
				this.gv_catelist.Rows[i].CssClass = "select_no";
			}
		}
		ModuleFieldInfo moduleFieldInfo = ModuleFieldInfo.Read((int)this.gv_catelist.DataKeys[e.NewEditIndex].Value);
		this.hf_id.Value = moduleFieldInfo.Id.ToString();
		this.tb_fieldInfo.Text = moduleFieldInfo.FieldInfo;
		this.tb_fieldName.Text = moduleFieldInfo.FieldName;
		this.tb_fieldInfoA.Text = moduleFieldInfo.FieldInfoA;
		this.tb_fieldOrder.Text = moduleFieldInfo.FieldOrder.ToString();
		this.rbl_fieldDataType.SelectedValue = moduleFieldInfo.FieldDataType.ToString();
		this.rbl_htmlType.SelectedValue = moduleFieldInfo.HtmlType.ToString();
		this.tb_defaultValue.Text = moduleFieldInfo.DefaultValue;
		this.tb_width.Text = moduleFieldInfo.Width.ToString();
		this.tb_height.Text = moduleFieldInfo.Height.ToString();
		if (moduleFieldInfo.IsShow == 1)
		{
			this.cb_isShow.Checked = true;
		}
		this.tb_listWidth.Text = moduleFieldInfo.ListWidth.ToString();
		this.bt_add.Text = " 修改 ";
	}
}
