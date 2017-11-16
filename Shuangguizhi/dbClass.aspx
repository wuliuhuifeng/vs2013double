<%@ page language="C#" autoeventwireup="true" inherits="dbClass, App_Web_xut1gbbx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>无标题页</title>
</head>
<body>
<form id="form1" runat="server">
<pre>
using System;
using System.Data;
using System.Data.OleDb;
using System.Collections;
using System.Collections.Generic;
public class <%=dbClassName %>
{
<%
    StringBuilder sb_f = new StringBuilder();
    StringBuilder sb_fc = new StringBuilder();
    StringBuilder sb_read = new StringBuilder();
    StringBuilder sb_insert = new StringBuilder();
    StringBuilder sb_insert2 = new StringBuilder();
    StringBuilder sb_insert3 = new StringBuilder();
    StringBuilder sb_update = new StringBuilder();
    StringBuilder sb_update2 = new StringBuilder();
    StringBuilder sb_update3 = new StringBuilder();
for (int i = 0; i < dt.Columns.Count; i++)
{
    sb_f.Append(dt.Columns[i].DataType.Name.Replace("Int32","int")+" "+Utility.FirstToLower(dt.Columns[i].ColumnName)+",");
    sb_fc.AppendLine("this._" + Utility.FirstToLower(dt.Columns[i].ColumnName) + "=" + Utility.FirstToLower(dt.Columns[i].ColumnName) + ";");
    sb_read.Append((dt.Columns[i].DataType.Name == "String" ? "dr.GetValue(" + i + ").ToString()": dt.Columns[i].DataType.Name.Replace("Int32", "int") + ".Parse(dr.GetValue(" + i + ").ToString())")+",");
    if (i != 0)
    {
        sb_insert.Append("[" + Utility.FirstToLower(dt.Columns[i].ColumnName) + "],");
        sb_insert2.Append("@" + Utility.FirstToLower(dt.Columns[i].ColumnName) + ",");
        sb_insert3.AppendLine("cmd.Parameters.Add(\"@" + Utility.FirstToLower(dt.Columns[i].ColumnName) + "\", MySqlDbType." + GetDataType(dt.Columns[i].DataType.Name.Replace("Int32", "int")) + ").Value = this." + Utility.FirstToUpper(dt.Columns[i].ColumnName) + ";");
        sb_update.Append("[" + Utility.FirstToLower(dt.Columns[i].ColumnName) + "]=@" + Utility.FirstToLower(dt.Columns[i].ColumnName) + ",");
    }
%>
    private <%=dt.Columns[i].DataType.Name.Replace("Int32","int") %> _<%=Utility.FirstToLower(dt.Columns[i].ColumnName) %>;
    public <%=dt.Columns[i].DataType.Name.Replace("Int32", "int")%> <%=Utility.FirstToUpper(dt.Columns[i].ColumnName) %>
    {
        set { _<%=Utility.FirstToLower(dt.Columns[i].ColumnName) %>= value; }
        get { return _<%=Utility.FirstToLower(dt.Columns[i].ColumnName) %>; }
    }
<%
        
}
    
%>
    public <%=dbClassName %>(<%=sb_f.ToString().TrimEnd(',') %>)
	{
		<%=sb_fc.ToString() %>
	}

	public static <%=dbClassName %> Read(int id)
	{
		<%=dbClassName %> <%=Utility.FirstToLower(dbClassName) %>=null;
		Database db = new Database();
		OleDbDataReader dr = db.RunProcGetReader("select * from [<%=dbClassN %>] where id=" + id);
		while (dr.Read())
		{
			<%=Utility.FirstToLower(dbClassName) %> = new <%=dbClassName %>(<%=sb_read.ToString().TrimEnd(',') %>);
		}
		dr.Close();
		db.Dispose();
		return <%=Utility.FirstToLower(dbClassName) %>;
	}

	public void Insert()
	{
		Database db=new Database();
		OleDbCommand cmd = db.CreateCmd("insert into <%=dbClassN %>(<%=sb_insert.ToString().Trim(',') %>) values(<%=sb_insert2.ToString().Trim(',') %>)");
		<%=sb_insert3.ToString() %>
		cmd.ExecuteNonQuery();
		db.Dispose();
		}

	public static void Delete(int id)
	{
		Database db = new Database();
		db.RunNonQurey("delete from [<%=dbClassN %>] where id="+id);
	}

	public void Update()
	{
		Database db = new Database();
		OleDbCommand cmd = db.CreateCmd("update [<%=dbClassN %>] set <%=sb_update.ToString().Trim(',') %> where id="+this.Id);
		<%=sb_insert3.ToString() %>
		cmd.ExecuteNonQuery();
		db.Dispose();
	}
	public static List&lt;<%=dbClassName %>&gt; ReadList(string whereStr)
	{
		List&lt;<%=dbClassName %>&gt; list = new List&lt;<%=dbClassName %>&gt;();
		Database db = new Database();
		DataView dv = db.RunProc("select * from [<%=dbClassN %>] " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < dv.Count; i++)
		{
			list.Add(<%=dbClassName %>.Read(int.Parse(dv[i]["id"].ToString())));
		}
		db.Dispose();
		return list;
	}
}
</pre>
</form>
</body>
</html>
