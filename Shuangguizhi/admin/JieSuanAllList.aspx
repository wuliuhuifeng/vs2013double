<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_etxj2abt" %>
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
    <td id=th>系统总帐记录 <asp:Label ID=lb_title runat=server Text="全部帐单"></asp:Label></td>
    </tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% >
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="会员号">
    <ItemTemplate><a href="UserEditA.aspx?id=<%# Eval("userid") %>"><%# Eval("username") %></a></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="开户名">
    <ItemTemplate><%# Eval("trueName") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="银行卡号">
    <ItemTemplate><%# Eval("BankAccount") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="对碰奖">
    <ItemTemplate><%# Eval("duiPengJiang").ToString() %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="服务奖">
    <ItemTemplate><%# Eval("JinTie").ToString() %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="总金额">
    <ItemTemplate><%# Eval("allMoney").ToString()%></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="实得总奖金">
    <ItemTemplate><%# double.Parse(Eval("shijiang").ToString()) %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
<%--    <asp:TemplateField HeaderText="详细">
    <ItemTemplate><a href='JiSuanJiluView.aspx?userId=<%# Eval("userId") %>&addDate=<%# Eval("addDate") %>'>查看</a></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>--%>
</Columns>
<EmptyDataTemplate>
<font color=red>本期没有结算记录</font>
</EmptyDataTemplate>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
<table width=100%>
<tr><td id=th>
本期 碰对奖总额：<%=pengDuiJiang %>元 服务奖总额<%=fuwuJiang %>元  总金额<%=zongJinE %>元  实得总奖金<%=shiJiang %>元
</td></tr>
<tr><td>
查看结算周期详情：
<asp:Repeater ID=repeater1 runat=server>
<ItemTemplate>
<a href="?id=<%# Eval("JieSuanId") %>&addDate=<%# Eval("addDate") %>"><%# Eval("JieSuanId") %></a>&nbsp;
</ItemTemplate>
</asp:Repeater>
</td></tr>
</table>
</form>
</body>
</html>

