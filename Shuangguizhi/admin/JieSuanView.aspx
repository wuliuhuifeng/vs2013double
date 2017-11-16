<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_r0ynyk2h" %>
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
    <td id=th>结 算 记 录</td>
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
    <asp:TemplateField HeaderText="碰对奖">
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
    <asp:TemplateField HeaderText="结算时间">
    <ItemTemplate><%# Eval("addDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
<EmptyDataTemplate>
<font color=red>没有结算记录</font>
</EmptyDataTemplate>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>

<table width=100%>
  <tr>
    <td id=th>提 现 记 录</td>
    </tr>
</table>
<asp:GridView ID=gridview2 runat=server AutoGenerateColumns=false Width=100%>
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id")%></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
         <asp:TemplateField HeaderText="申请时间">
    <ItemTemplate><%# Eval("addDate")%></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="申请人">
    <ItemTemplate><%# Eval("username")%></ItemTemplate>
    <ItemStyle Width=8% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="开户银行">
    <ItemTemplate><%# Eval("BankType")%></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="开户账号">
    <ItemTemplate><%# Eval("BankAccount")%></ItemTemplate>
    <ItemStyle Width=15%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="开户姓名">
    <ItemTemplate><%# Eval("trueName")%></ItemTemplate>
    <ItemStyle Width=8%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="提取金额">
    <ItemTemplate><%# Eval("money")%></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="状态">
    <ItemTemplate>
    <%# Eval("status").ToString()=="1"?"提现完成":"<font color=red>待审核中</font>" %>
    </ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
</asp:GridView>
</form>
</body>
</html>

