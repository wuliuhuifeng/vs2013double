using System;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
public class galaxy_ContentManage : Page, IRequiresSessionState
{
	protected HtmlForm form1;
	private Database db = new Database();
	private DataTable dt_cate = new DataTable();
	public StringBuilder sb = new StringBuilder();
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
		DataView defaultView = this.dt_cate.DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			if (defaultView[i]["sortType"].ToString() == "1")
			{
				this.sb.AppendLine(string.Concat(new string[]
				{
					"<tr><td height=20>",
					this.GetSpace(int.Parse(defaultView[i]["sortLevel"].ToString())),
					"<a href='InfoList.aspx?moduleId=",
					defaultView[i]["moduleId"].ToString(),
					"&sortId=",
					defaultView[i]["id"].ToString(),
					"'>",
					defaultView[i]["sortName"].ToString(),
					"</a> | <a href='InfoEdit.aspx?moduleId=",
					defaultView[i]["moduleId"].ToString(),
					"&sortId=",
					defaultView[i]["id"].ToString(),
					"'>添加</a></td></tr>"
				}));
			}
			if (defaultView[i]["sortType"].ToString() == "2")
			{
				this.sb.AppendLine(string.Concat(new string[]
				{
					"<tr><td height=20>",
					this.GetSpace(int.Parse(defaultView[i]["sortLevel"].ToString())),
					defaultView[i]["sortName"].ToString(),
					" | <a href='InfoEdit.aspx?moduleId=",
					defaultView[i]["moduleId"].ToString(),
					"&sortId=",
					defaultView[i]["id"].ToString(),
					"&sortType=2'>编辑</a></td></tr>"
				}));
			}
		}
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
}
