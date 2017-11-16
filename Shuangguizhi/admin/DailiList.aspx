<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_-affu90p" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>无标题页</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width=100%>
<tr>
<td id=th>会员信息综合管理</td>
</tr>
<tr>
<td>
会 员 号：<asp:TextBox ID=tb_username runat=server></asp:TextBox> 
    <asp:Button ID=search runat=server Text=" 查 询 " onclick="search_Click" />
</td>
</tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% >
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="会员号">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="管理人">
    <ItemTemplate><%# Eval("GuanLiRen") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="推荐人">
    <ItemTemplate><%# Eval("TuiJianRen") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="套餐类型">
    <ItemTemplate><%# Eval("SetMealName") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="直推奖">
    <ItemTemplate><%# Eval("JiangJin") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="对碰奖">
    <ItemTemplate><%# Eval("DuiPengJiang") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="单数">
    <ItemTemplate><%# Eval("point") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="注册时间">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
<EmptyDataTemplate>
<font color=red>没有找到此会员记录</font>
</EmptyDataTemplate>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>

