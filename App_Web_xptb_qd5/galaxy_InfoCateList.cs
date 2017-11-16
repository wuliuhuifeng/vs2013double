using System;
using System.Data;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class galaxy_InfoCateList : Page, IRequiresSessionState
{
	protected GridView gv_catelist;
	protected Button bt_delete;
	protected Button bt_save;
	protected DropDownList ddl_module;
	protected HiddenField hf_id;
	protected DropDownList ddl_cate;
	protected DropDownList ddl_sortType;
	protected TextBox tb_sortname;
	protected TextBox tb_sortUrl;
	protected TextBox tb_sortOrder;
	protected TextBox tb_sortPath;
	protected TextBox tb_sortFileName;
	protected TextBox tb_sortTitle;
	protected TextBox tb_keywords;
	protected TextBox tb_description;
	protected Button bt_add;
	protected HtmlForm form1;
	private Database db = new Database();
	private DataTable dt_cate = new DataTable();
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
		DataTable dataTable = this.db.RunProc("select * from infosort order by sortOrder,id").Tables[0];
		this.dt_cate = dataTable.Copy();
		this.dt_cate.Rows.Clear();
		this.GetTreeNode(dataTable, 0);
		this.gv_catelist.DataSource = this.dt_cate.DefaultView;
		this.gv_catelist.DataKeyNames = new string[]
		{
			"id"
		};
		this.gv_catelist.DataBind();
		this.ddl_cate.Items.Clear();
		this.ddl_cate.Items.Add(new ListItem("顶级分类", "0"));
		for (int i = 0; i < this.dt_cate.Rows.Count; i++)
		{
			this.ddl_cate.Items.Add(new ListItem(base.Server.HtmlDecode("&nbsp;&nbsp;" + this.GetSpace(int.Parse(this.dt_cate.Rows[i]["sortlevel"].ToString())) + this.dt_cate.Rows[i]["sortname"].ToString()), this.dt_cate.Rows[i]["id"].ToString()));
		}
		this.ddl_module.DataSource = this.db.RunProcGetDataView("select * from moduleList order by id");
		this.ddl_module.DataTextField = "moduleName";
		this.ddl_module.DataValueField = "Id";
		this.ddl_module.DataBind();
	}
	public void GetTreeNode(DataTable dt, int pid)
	{
		DataRow[] array = dt.Select("pid=" + pid);
		DataRow[] array2 = array;
		for (int i = 0; i < array2.Length; i++)
		{
			DataRow dataRow = array2[i];
			this.dt_cate.Rows.Add(dataRow.ItemArray);
			this.GetTreeNode(dt, int.Parse(dataRow["id"].ToString()));
		}
	}
	public string GetSpace(int level)
	{
		string text = "";
		for (int i = 0; i < level; i++)
		{
			text += "&nbsp;&nbsp;";
		}
		if (level > 0)
		{
			text += "┣";
		}
		return text;
	}
	protected void gv_catelist_RowDataBound(object sender, GridViewRowEventArgs e)
	{
		if (e.Row.RowType == DataControlRowType.DataRow)
		{
			DropDownList dropDownList = (DropDownList)e.Row.FindControl("ddl_sortType");
			dropDownList.SelectedValue = ((HiddenField)e.Row.FindControl("hf_sortType")).Value;
			DropDownList dropDownList2 = (DropDownList)e.Row.FindControl("ddl_module");
			dropDownList2.DataSource = this.db.RunProcGetDataView("select * from moduleList");
			dropDownList2.DataTextField = "moduleName";
			dropDownList2.DataValueField = "id";
			dropDownList2.DataBind();
			dropDownList2.SelectedValue = ((HiddenField)e.Row.FindControl("hf_ModuleId")).Value;
		}
	}
	protected void bt_add_Click(object sender, EventArgs e)
	{
		if (this.hf_id.Value == "0")
		{
			int sortLevel = 0;
			if (this.ddl_cate.SelectedValue != "0")
			{
				InfoSortInfo infoSortInfo = InfoSortInfo.Read(int.Parse(this.ddl_cate.SelectedValue));
				sortLevel = infoSortInfo.SortLevel + 1;
			}
			InfoSortInfo infoSortInfo2 = new InfoSortInfo(0, int.Parse(this.ddl_module.SelectedValue), sortLevel, int.Parse(this.ddl_cate.SelectedValue), this.tb_sortname.Text, int.Parse(this.ddl_sortType.Text), this.tb_sortUrl.Text, int.Parse(this.tb_sortOrder.Text), "", "", "", "", "", DateTime.Now, 1);
			infoSortInfo2.Insert();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('添加成功！');", true);
		}
		else
		{
			InfoSortInfo infoSortInfo3 = InfoSortInfo.Read(int.Parse(this.hf_id.Value));
			infoSortInfo3.ModuleId = int.Parse(this.ddl_module.SelectedValue);
			if (infoSortInfo3.Id.ToString() != this.ddl_cate.SelectedValue)
			{
				infoSortInfo3.Pid = int.Parse(this.ddl_cate.SelectedValue);
			}
			if (this.ddl_cate.SelectedValue != "0")
			{
				infoSortInfo3.SortLevel = InfoSortInfo.Read(int.Parse(this.ddl_cate.SelectedValue)).SortLevel + 1;
			}
			else
			{
				infoSortInfo3.SortLevel = 0;
			}
			infoSortInfo3.SortType = int.Parse(this.ddl_sortType.SelectedValue);
			infoSortInfo3.SortName = this.tb_sortname.Text;
			infoSortInfo3.SortUrl = this.tb_sortUrl.Text;
			infoSortInfo3.SortOrder = int.Parse(this.tb_sortOrder.Text);
			infoSortInfo3.SortPath = this.tb_sortPath.Text;
			infoSortInfo3.SortFileName = this.tb_sortFileName.Text;
			infoSortInfo3.SortTitle = this.tb_sortTitle.Text;
			infoSortInfo3.Keywords = this.tb_keywords.Text;
			infoSortInfo3.Description = this.tb_description.Text;
			infoSortInfo3.Update();
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('修改成功！');", true);
		}
		this.BindData();
	}
	protected void gv_catelist_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		InfoSortInfo.Delete((int)this.gv_catelist.DataKeys[e.RowIndex].Value);
		this.BindData();
	}
	protected void gv_catelist_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		InfoSortInfo infoSortInfo = InfoSortInfo.Read((int)this.gv_catelist.DataKeys[e.RowIndex].Value);
		if (infoSortInfo.SortStatus == 1)
		{
			infoSortInfo.SortStatus = 0;
		}
		else
		{
			infoSortInfo.SortStatus = 1;
		}
		infoSortInfo.Update();
		this.BindData();
	}
	protected void bt_delete_Click(object sender, EventArgs e)
	{
		for (int i = 0; i < this.gv_catelist.Rows.Count; i++)
		{
			CheckBox checkBox = this.gv_catelist.Rows[i].FindControl("checkbox1") as CheckBox;
			if (checkBox.Checked)
			{
				InfoSortInfo.Delete((int)this.gv_catelist.DataKeys[i].Value);
			}
		}
		this.BindData();
	}
	protected void bt_save_Click(object sender, EventArgs e)
	{
		for (int i = 0; i < this.gv_catelist.Rows.Count; i++)
		{
			CheckBox checkBox = this.gv_catelist.Rows[i].FindControl("checkbox1") as CheckBox;
			if (checkBox.Checked)
			{
				InfoSortInfo infoSortInfo = InfoSortInfo.Read((int)this.gv_catelist.DataKeys[i].Value);
				infoSortInfo.SortName = ((TextBox)this.gv_catelist.Rows[i].FindControl("tb_sortname")).Text;
				infoSortInfo.SortUrl = ((TextBox)this.gv_catelist.Rows[i].FindControl("tb_sortUrl")).Text;
				infoSortInfo.SortType = int.Parse(((DropDownList)this.gv_catelist.Rows[i].FindControl("ddl_sortType")).SelectedValue);
				infoSortInfo.SortOrder = int.Parse(((TextBox)this.gv_catelist.Rows[i].FindControl("tb_sortOrder")).Text);
				infoSortInfo.Update();
			}
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('保存成功！');", true);
		this.BindData();
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
		InfoSortInfo infoSortInfo = InfoSortInfo.Read((int)this.gv_catelist.DataKeys[e.NewEditIndex].Value);
		this.hf_id.Value = infoSortInfo.Id.ToString();
		this.ddl_module.SelectedValue = infoSortInfo.ModuleId.ToString();
		this.ddl_cate.SelectedValue = infoSortInfo.Pid.ToString();
		this.tb_sortname.Text = infoSortInfo.SortName;
		this.tb_sortUrl.Text = infoSortInfo.SortUrl;
		this.tb_sortOrder.Text = infoSortInfo.SortOrder.ToString();
		this.tb_sortPath.Text = infoSortInfo.SortPath;
		this.tb_sortFileName.Text = infoSortInfo.SortFileName;
		this.tb_sortTitle.Text = infoSortInfo.SortTitle;
		this.tb_keywords.Text = infoSortInfo.Keywords;
		this.tb_description.Text = infoSortInfo.Description;
		this.bt_add.Text = " 修改 ";
	}
}
