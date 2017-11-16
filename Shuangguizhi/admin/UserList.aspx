<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_crgpnism" %>
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
<td id=th colspan=3>会员信息综合管理</td>
</tr>
<tr><td  Width=120px><asp:TextBox ID=tb_username runat=server></asp:TextBox></td>
<td width=180px>
<asp:RadioButtonList ID=rbl_select runat=server RepeatDirection=Horizontal BorderWidth=0 CellSpacing=0>
<asp:ListItem Value="username" Selected=True>会员号</asp:ListItem>
<asp:ListItem Value="mobile">手机</asp:ListItem>
<asp:ListItem Value="QQ">QQ号</asp:ListItem>
</asp:RadioButtonList>
</td>
<td><asp:Button ID=bt_search runat=server Text="搜索" onclick="bt_search_Click" /></td>
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
    <asp:TemplateField HeaderText="注册时间">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态">
    <ItemTemplate><%# Eval("status").ToString()=="1"?"已审核":"<font color=red>未审核</font>" %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="货币记录">
    <ItemTemplate><a href="CaiWuView.aspx?userId=<%# Eval("Id") %>">货币记录</a></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>    
    <asp:TemplateField HeaderText="奖金记录">
    <ItemTemplate><a href="JieSuanView.aspx?userId=<%# Eval("Id") %>">奖金记录</a></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>    
    <asp:TemplateField HeaderText="管理">
    <ItemTemplate><a href='UserEditA.aspx?id=<%# Eval("id") %>'>管理</a></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>

