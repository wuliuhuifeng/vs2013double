using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using MySql.Data.MySqlClient;
public class galaxy_InfoEdit : Page, IRequiresSessionState
{
	private Database db = new Database();
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
				if (base.Request.QueryString["moduleId"] != null)
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
		if (base.Request["action"] == null && base.Request["infoId"] == null)
		{
			ModuleListInfo moduleListInfo = ModuleListInfo.Read(int.Parse(base.Request.QueryString["moduleId"]));
			if (base.Request["sortType"] != null && base.Request["sortType"] == "2")
			{
				MySqlDataReader mySqlDataReader = this.db.RunProcGetReader(string.Concat(new object[]
				{
					"select * from [",
					moduleListInfo.ModuleTableName,
					"] where sortId=",
					int.Parse(base.Request["sortId"].Trim()),
					" order by id limit 1"
				}));
				if (mySqlDataReader.Read())
				{
					this.sb.AppendLine("<tr><Th colspan=2>" + moduleListInfo.ModuleName + "</th></tr>");
					List<ModuleFieldInfo> list = ModuleFieldInfo.ReadList(" where ModuleId=" + moduleListInfo.Id + " order by FieldOrder");
					for (int i = 0; i < list.Count; i++)
					{
						this.sb.AppendLine(string.Concat(new string[]
						{
							"<tr><Td width=18% id=tdr>",
							list[i].FieldInfo,
							"</td><td id=tdl>",
							this.GetHtmlStr(list[i].FieldName, list[i].HtmlType, list[i].DefaultValue, list[i].Width, list[i].Height, base.Server.HtmlEncode(mySqlDataReader[list[i].FieldName].ToString())),
							" ",
							list[i].FieldInfoA,
							" </td></tr>"
						}));
					}
					this.sb.AppendLine(string.Concat(new string[]
					{
						"<tr><td></td><td id=tdl><input type=\"submit\" id=\"s_add\" name=\"s_add\" value=\" 修 改 \" onclick=\"form.action='?moduleId=",
						base.Request["moduleId"],
						"&sortId=",
						base.Request["sortId"],
						"&action=edit&sortType=",
						base.Request["sortType"],
						"&infoId=",
						mySqlDataReader["id"].ToString(),
						"';\" /></td></tr>"
					}));
				}
				else
				{
					this.sb.AppendLine("<tr><Th colspan=2>" + moduleListInfo.ModuleName + "</th></tr>");
					List<ModuleFieldInfo> list2 = ModuleFieldInfo.ReadList(" where ModuleId=" + moduleListInfo.Id + " order by FieldOrder");
					for (int j = 0; j < list2.Count; j++)
					{
						this.sb.AppendLine(string.Concat(new string[]
						{
							"<tr><Td width=18% id=tdr>",
							list2[j].FieldInfo,
							"</td><td id=tdl>",
							this.GetHtmlStr(list2[j].FieldName, list2[j].HtmlType, list2[j].DefaultValue, list2[j].Width, list2[j].Height, ""),
							" ",
							list2[j].FieldInfoA,
							" </td></tr>"
						}));
					}
					this.sb.AppendLine(string.Concat(new string[]
					{
						"<tr><td></td><td id=tdl><input type=\"submit\" id=\"s_add\" name=\"s_add\" value=\" 修 改 \" onclick=\"form.action='?moduleId=",
						base.Request["moduleId"],
						"&sortId=",
						base.Request["sortId"],
						"&action=add&sortType=",
						base.Request["sortType"],
						"';\" /></td></tr>"
					}));
				}
				mySqlDataReader.Close();
				this.db.Dispose();
			}
			else
			{
				this.sb.AppendLine("<tr><Th colspan=2>" + moduleListInfo.ModuleName + "</th></tr>");
				List<ModuleFieldInfo> list3 = ModuleFieldInfo.ReadList(" where ModuleId=" + moduleListInfo.Id + " order by FieldOrder");
				for (int k = 0; k < list3.Count; k++)
				{
					string readValue = (list3[k].FieldDataType.ToLower() == "date") ? DateTime.Now.ToString() : "";
					this.sb.AppendLine(string.Concat(new string[]
					{
						"<tr><Td width=18% id=tdr>",
						list3[k].FieldInfo,
						"</td><td id=tdl>",
						this.GetHtmlStr(list3[k].FieldName, list3[k].HtmlType, list3[k].DefaultValue, list3[k].Width, list3[k].Height, readValue),
						" ",
						list3[k].FieldInfoA,
						" </td></tr>"
					}));
				}
				this.sb.AppendLine(string.Concat(new string[]
				{
					"<tr><td></td><td id=tdl><input type=\"submit\" id=\"s_add\" name=\"s_add\" value=\" 添 加 \" onclick=\"form.action='?moduleId=",
					base.Request["moduleId"],
					"&sortId=",
					base.Request["sortId"],
					"&action=add';\" /></td></tr>"
				}));
			}
		}
		if (base.Request["action"] == null && base.Request["infoId"] != null && base.Request["infoId"].Length > 0)
		{
			ModuleListInfo moduleListInfo2 = ModuleListInfo.Read(int.Parse(base.Request.QueryString["moduleId"]));
			MySqlDataReader mySqlDataReader2 = this.db.RunProcGetReader(string.Concat(new object[]
			{
				"select * from [",
				moduleListInfo2.ModuleTableName,
				"] where id=",
				int.Parse(base.Request["infoId"])
			}));
			if (mySqlDataReader2.Read())
			{
				this.sb.AppendLine("<tr><Th colspan=2>" + moduleListInfo2.ModuleName + "</th></tr>");
				List<ModuleFieldInfo> list4 = ModuleFieldInfo.ReadList(" where ModuleId=" + moduleListInfo2.Id + " order by FieldOrder");
				for (int l = 0; l < list4.Count; l++)
				{
					this.sb.AppendLine(string.Concat(new string[]
					{
						"<tr><Td width=18% id=tdr>",
						list4[l].FieldInfo,
						"</td><td id=tdl>",
						this.GetHtmlStr(list4[l].FieldName, list4[l].HtmlType, list4[l].DefaultValue, list4[l].Width, list4[l].Height, base.Server.HtmlEncode(mySqlDataReader2[list4[l].FieldName].ToString())),
						" ",
						list4[l].FieldInfoA,
						" </td></tr>"
					}));
				}
				this.sb.AppendLine(string.Concat(new string[]
				{
					"<tr><td></td><td id=tdl><input type=\"submit\" id=\"s_add\" name=\"s_add\" value=\" 修改 \" onclick=\"form.action='?moduleId=",
					base.Request["moduleId"],
					"&sortId=",
					base.Request["sortId"],
					"&action=edit&infoId=",
					base.Request["infoId"],
					"';\" /></td></tr>"
				}));
			}
			mySqlDataReader2.Close();
			this.db.Dispose();
		}
		if (base.Request["action"] != null && base.Request.QueryString["action"].Trim() == "add")
		{
			ModuleListInfo moduleListInfo3 = ModuleListInfo.Read(int.Parse(base.Request.QueryString["moduleId"]));
			List<ModuleFieldInfo> list5 = ModuleFieldInfo.ReadList(" where ModuleId=" + moduleListInfo3.Id + " order by FieldOrder");
			string text = "";
			string text2 = "";
			for (int m = 0; m < list5.Count; m++)
			{
				text = text + "[" + list5[m].FieldName + "],";
				text2 = text2 + "@" + list5[m].FieldName + ",";
			}
			text = text.Trim().TrimEnd(new char[]
			{
				','
			});
			text2 = text2.Trim().TrimEnd(new char[]
			{
				','
			});
			MySqlCommand mySqlCommand = this.db.CreateCmd(string.Concat(new string[]
			{
				"insert into [",
				moduleListInfo3.ModuleTableName,
				"]([sortId],",
				text,
				")values(@sortId,",
				text2,
				")"
			}));
			mySqlCommand.Parameters.Add("@sortId", MySqlDbType.Int16).Value = int.Parse(base.Request["sortId"].Trim());
			for (int n = 0; n < list5.Count; n++)
			{
				mySqlCommand.Parameters.Add("@" + list5[n].FieldName, this.GetDbType(list5[n].FieldDataType)).Value = base.Request["g_" + list5[n].FieldName].ToString();
			}
			mySqlCommand.ExecuteNonQuery();
			this.db.Dispose();
			base.Response.Write(string.Concat(new string[]
			{
				"<script>alert('添加成功');location.href='InfoEdit.aspx?moduleId=",
				base.Request["moduleId"],
				"&sortId=",
				base.Request["sortId"],
				"&sortType=",
				base.Request["sortType"],
				"';</script>"
			}));
		}
		if (base.Request["action"] != null && base.Request.QueryString["action"].Trim() == "edit" && base.Request["infoId"] != null && base.Request["infoId"].Trim().Length > 0)
		{
			ModuleListInfo moduleListInfo4 = ModuleListInfo.Read(int.Parse(base.Request.QueryString["moduleId"]));
			List<ModuleFieldInfo> list6 = ModuleFieldInfo.ReadList(" where ModuleId=" + moduleListInfo4.Id + " order by FieldOrder");
			string text3 = "";
			for (int num = 0; num < list6.Count; num++)
			{
				string text4 = text3;
				text3 = string.Concat(new string[]
				{
					text4,
					"[",
					list6[num].FieldName,
					"]=@",
					list6[num].FieldName,
					","
				});
			}
			text3 = text3.Trim().TrimEnd(new char[]
			{
				','
			});
			MySqlCommand mySqlCommand2 = this.db.CreateCmd(string.Concat(new object[]
			{
				"update [",
				moduleListInfo4.ModuleTableName,
				"] set ",
				text3,
				" where id=",
				int.Parse(base.Request["infoId"].Trim())
			}));
			for (int num2 = 0; num2 < list6.Count; num2++)
			{
				mySqlCommand2.Parameters.Add("@" + list6[num2].FieldName, this.GetDbType(list6[num2].FieldDataType)).Value = base.Request["g_" + list6[num2].FieldName].ToString();
			}
			mySqlCommand2.ExecuteNonQuery();
			this.db.Dispose();
			base.Response.Write(string.Concat(new string[]
			{
				"<script>alert('修改成功');location.href='InfoEdit.aspx?moduleId=",
				base.Request["moduleId"],
				"&infoId=",
				base.Request["infoId"].Trim(),
				"';</script>"
			}));
		}
	}
	public string GetHtmlStr(string fieldName, int htmlType, string defaultValue, string width, string height, string readValue)
	{
		string result;
		switch (htmlType)
		{
		case 1:
			result = string.Concat(new string[]
			{
				"<input name=\"g_",
				fieldName,
				"\" type=\"text\" id=\"g_",
				fieldName,
				"\" style=\"width:",
				(width == "0") ? "" : width,
				";height:",
				(height == "0") ? "" : height,
				";\" value=\"",
				(readValue.Length > 0) ? readValue : defaultValue,
				"\" />"
			});
			break;
		case 2:
			result = string.Concat(new string[]
			{
				"<textarea name=\"g_",
				fieldName,
				"\" id=\"g_",
				fieldName,
				"\" style=\"width:",
				(width == "0") ? "" : width,
				";height:",
				(height == "0") ? "" : height,
				";\" >",
				(readValue.Length > 0) ? readValue : defaultValue,
				"</textarea>"
			});
			break;
		case 3:
			result = string.Concat(new string[]
			{
				"<input name=\"g_",
				fieldName,
				"\" type=\"text\" id=\"g_",
				fieldName,
				"\" style=\"display:none\" value=\"",
				readValue,
				"\" /><iframe ID=\"eWebEditor1\" src=\"../editor/ewebeditor.htm?id=g_",
				fieldName,
				"&style=standard650\" frameborder=\"0\" scrolling=\"no\" style=\"width:",
				(width == "0") ? "" : width,
				";height:",
				height,
				";\"></iframe>"
			});
			break;
		case 4:
			result = this.GetCheckboxStr(fieldName, defaultValue, readValue);
			break;
		case 5:
			result = this.GetRadioStr(fieldName, defaultValue, readValue);
			break;
		case 6:
			result = this.GetDropDownListStr(fieldName, defaultValue, readValue);
			break;
		case 7:
			result = string.Concat(new string[]
			{
				"<input name=\"g_",
				fieldName,
				"\" type=\"text\" id=\"g_",
				fieldName,
				"\" style=\"width:",
				(width == "0") ? "" : width,
				";height:",
				(height == "0") ? "" : height,
				";\" value=\"",
				readValue,
				"\" /> <iframe src=\"UploadFile.aspx?id=g_",
				fieldName,
				"\" scrolling=\"no\" topmargin=\"0\" width=\"300\" height=\"24\" marginwidth=\"0\" marginheight=\"0\" frameborder=\"0\" align=\"center\"></iframe>"
			});
			break;
		default:
			result = string.Concat(new string[]
			{
				"<input name=\"g_",
				fieldName,
				"\" type=\"text\" id=\"g_",
				fieldName,
				"\" style=\"width:",
				(width == "0") ? "" : width,
				";height=",
				height,
				";\" />"
			});
			break;
		}
		return result;
	}
	public string GetRadioStr(string radioName, string defaultValue, string readValue)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (defaultValue.Length > 0)
		{
			string[] array = defaultValue.Split(new char[]
			{
				'|'
			});
			for (int i = 0; i < array.Length; i++)
			{
				if (readValue.Length == 0)
				{
					stringBuilder.Append(string.Concat(new string[]
					{
						"<input id=\"g_",
						radioName,
						"\" type=\"radio\" name=\"g_",
						radioName,
						"\" value=\"",
						array[i].Split(new char[]
						{
							','
						})[1],
						"\" ",
						(i == 0) ? "checked" : "",
						" />",
						array[i].Split(new char[]
						{
							','
						})[0],
						"&nbsp;"
					}));
				}
				else
				{
					stringBuilder.Append(string.Concat(new string[]
					{
						"<input id=\"g_",
						radioName,
						"\" type=\"radio\" name=\"g_",
						radioName,
						"\" value=\"",
						array[i].Split(new char[]
						{
							','
						})[1],
						"\" ",
						(array[i].Split(new char[]
						{
							','
						})[1] == readValue) ? "checked" : "",
						" />",
						array[i].Split(new char[]
						{
							','
						})[0],
						"&nbsp;"
					}));
				}
			}
		}
		return stringBuilder.ToString();
	}
	public string GetCheckboxStr(string checkboxName, string defaultValue, string readValue)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (defaultValue.Length > 0)
		{
			string[] array = defaultValue.Split(new char[]
			{
				'|'
			});
			for (int i = 0; i < array.Length; i++)
			{
				if (readValue.Length == 0)
				{
					stringBuilder.Append(string.Concat(new string[]
					{
						"<input id=\"g_",
						checkboxName,
						"\" type=\"checkbox\" name=\"g_",
						checkboxName,
						"\" value=\"",
						array[i].Split(new char[]
						{
							','
						})[1],
						"\" ",
						(i == 0) ? "checked" : "",
						" />",
						array[i].Split(new char[]
						{
							','
						})[0],
						"&nbsp;"
					}));
				}
				else
				{
					stringBuilder.Append(string.Concat(new string[]
					{
						"<input id=\"g_",
						checkboxName,
						"\" type=\"checkbox\" name=\"g_",
						checkboxName,
						"\" value=\"",
						array[i].Split(new char[]
						{
							','
						})[1],
						"\" ",
						(array[i].Split(new char[]
						{
							','
						})[1] == readValue) ? "checked" : "",
						" />",
						array[i].Split(new char[]
						{
							','
						})[0],
						"&nbsp;"
					}));
				}
			}
		}
		return stringBuilder.ToString();
	}
	public string GetDropDownListStr(string dropDownListName, string defaultValue, string readValue)
	{
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.AppendLine(string.Concat(new string[]
		{
			"<select name=\"g_",
			dropDownListName,
			"\" id=\"g_",
			dropDownListName,
			"\">"
		}));
		if (defaultValue.Length > 0)
		{
			string[] array = defaultValue.Split(new char[]
			{
				'|'
			});
			for (int i = 0; i < array.Length; i++)
			{
				if (readValue.Length == 0)
				{
					stringBuilder.Append(string.Concat(new string[]
					{
						"<option value=\"",
						array[i].Split(new char[]
						{
							','
						})[1],
						"\" ",
						(i == 0) ? "selected=\"selected\"" : "",
						">",
						array[i].Split(new char[]
						{
							','
						})[0],
						"</option>"
					}));
				}
				else
				{
					stringBuilder.Append(string.Concat(new string[]
					{
						"<option value=\"",
						array[i].Split(new char[]
						{
							','
						})[1],
						"\" ",
						(array[i].Split(new char[]
						{
							','
						})[1] == readValue) ? "selected=\"selected\"" : "",
						">",
						array[i].Split(new char[]
						{
							','
						})[0],
						"</option>"
					}));
				}
			}
		}
		stringBuilder.AppendLine("</select>");
		return stringBuilder.ToString();
	}
	public MySqlDbType GetDbType(string dbType)
	{
		string a;
		MySqlDbType result;
		if ((a = dbType.ToLower()) != null)
		{
			if (a == "text(255)")
			{
				result = MySqlDbType.VarChar;
				return result;
			}
			if (a == "memo")
			{
				result = MySqlDbType.VarChar;
				return result;
			}
			if (a == "date")
			{
				result = MySqlDbType.Date;
				return result;
			}
			if (a == "int")
			{
				result = MySqlDbType.Int16;
				return result;
			}
			if (a == "double")
			{
				result = MySqlDbType.Double;
				return result;
			}
		}
		result = MySqlDbType.VarChar;
		return result;
	}
}
