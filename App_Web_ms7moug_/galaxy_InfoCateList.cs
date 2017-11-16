using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
public class galaxy_InfoCateList : Page, IRequiresSessionState
{
	private Database db = new Database();
	public Pager pager = new Pager();
	public StringBuilder sb = new StringBuilder();
	public int moduleId;
	public int sortId;
	public int page;
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
				if (base.Request["moduleId"] != null && base.Request["sortId"] != null)
				{
					this.BindData();
					return;
				}
			}
			else
			{
				base.Response.Redirect("login.aspx");
			}
		}
	}
	public void BindData()
	{
		int recordConnt = 0;
		int num = this.page = ((base.Request["page"] != null) ? int.Parse(base.Request.QueryString["page"]) : 1);
		this.moduleId = int.Parse(base.Request["moduleId"]);
		this.sortId = int.Parse(base.Request["sortId"]);
		ModuleListInfo moduleListInfo = ModuleListInfo.Read(this.moduleId);
		this.pager.PageSize = 15;
		DataView dataView = this.db.RunProcGetDataView(string.Concat(new object[]
		{
			"select * from [",
			moduleListInfo.ModuleTableName,
			"] where sortId=",
			this.sortId,
			" order by id desc"
		}), (num - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		List<ModuleFieldInfo> list = ModuleFieldInfo.ReadList("where moduleId=" + this.moduleId + " and isShow=1 order by fieldOrder");
		this.sb.AppendLine("<table width=100% border=1><tr>");
		this.sb.AppendLine("<th width=60>编号</th>");
		for (int i = 0; i < list.Count; i++)
		{
			this.sb.AppendLine(string.Concat(new string[]
			{
				"<th width=",
				list[i].ListWidth,
				">",
				list[i].FieldInfo,
				"</th>"
			}));
		}
		this.sb.AppendLine("<th width=120>查看</th>");
		this.sb.AppendLine("<th width=60>选择</th>");
		this.sb.AppendLine("</tr>");
		for (int j = 0; j < dataView.Count; j++)
		{
			this.sb.AppendLine("<tr>");
			this.sb.AppendLine("<td align=center>" + dataView[j]["id"].ToString() + "</td>");
			for (int k = 0; k < list.Count; k++)
			{
				this.sb.AppendLine("<td align=center>" + this.GetFieldStr(dataView[j][list[k].FieldName].ToString(), list[k].DefaultValue, list[k].HtmlType) + "</td>");
			}
			this.sb.AppendLine(string.Concat(new object[]
			{
				"<td align=center><a href='InfoEdit.aspx?moduleId=",
				this.moduleId,
				"&infoId=",
				dataView[j]["id"].ToString(),
				"'>查看详细</a></td><td align=center><input id=\"selectId\" type=\"checkbox\" name=\"selectId\" value=\"",
				dataView[j]["id"].ToString(),
				"\" /></td>"
			}));
			this.sb.AppendLine("</tr>");
		}
		this.sb.AppendLine("</table>");
		this.pager.RecordConnt = recordConnt;
		this.pager.CurrentPage = num;
		this.pager.UrlFormat = string.Concat(new object[]
		{
			"InfoList.aspx?moduleId=",
			this.moduleId,
			"&sortId=",
			this.sortId,
			"&page={0}"
		});
		this.sb.AppendLine("<table width=100%><Tr><Td id=pager> " + this.pager.CreaterHtml() + "</td>");
		this.sb.AppendLine("<td align=right width=183><input id=\"CheckAll\" type=\"checkbox\" onClick=\"mm()\" /> 全选 <input type=\"submit\" name=\"bt_delete\" value=\" 删除选中 \" onclick=\"return confirm('确定要删除吗');\" id=\"bt_delete\" /> </td></tr></table>");
		if (base.Request["action"] != null && base.Request["action"] == "delete")
		{
			if (base.Request["selectId"] != null && base.Request["selectId"].Trim().Length > 0)
			{
				this.db.RunNonQurey(string.Concat(new string[]
				{
					"delete from [",
					moduleListInfo.ModuleTableName,
					"] where id in(",
					base.Request["selectId"].Trim().Replace("'", "").Replace("\"", ""),
					")"
				}));
				this.db.Dispose();
			}
			base.Response.Redirect(string.Concat(new object[]
			{
				"InfoList.aspx?moduleId=",
				this.moduleId,
				"&sortId=",
				this.sortId,
				"&page=",
				this.page
			}));
		}
	}
	public string GetFieldStr(string readValue, string defaultValue, int htmlType)
	{
		string result;
		switch (htmlType)
		{
		case 5:
			result = this.GetDropDownListValue(readValue, defaultValue);
			break;
		case 6:
			result = this.GetDropDownListValue(readValue, defaultValue);
			break;
		case 7:
			result = "<img src='" + readValue + "' width=30 height=30>";
			break;
		default:
			result = readValue;
			break;
		}
		return result;
	}
	public string GetDropDownListValue(string readValue, string defaultValue)
	{
		string result = "";
		string[] array = defaultValue.Split(new char[]
		{
			'|'
		});
		for (int i = 0; i < array.Length; i++)
		{
			if (array[i].Split(new char[]
			{
				','
			})[1] == readValue)
			{
				result = array[i].Split(new char[]
				{
					','
				})[0];
			}
		}
		return result;
	}
}
