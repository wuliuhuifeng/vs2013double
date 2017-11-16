<%@ page language="C#" autoeventwireup="true" inherits="admin_TiXianList, App_Web_ukgnqdzt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>无标题页</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Js/My97DatePicker/WdatePicker.js" defer="defer"></script>
</head>
<body>
<form id="form1" runat="server">
<table width=100%>
<tr>
<td id=th colspan=3>提现记录</td>
</tr>
<tr>
<td width=400px>
申请时间：
<asp:TextBox ID="tb_AddDateBegin" runat="server" MaxLength="20" lass="Wdate" onFocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm:ss'})"></asp:TextBox>-
<asp:TextBox ID="tb_AddDateEnd" runat="server" MaxLength="20" lass="Wdate" onFocus="WdatePicker({lang:'zh-cn',dateFmt:'yyyy-MM-dd HH:mm:ss'})"></asp:TextBox>
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
    <asp:TemplateField HeaderText="申请时间">
    <ItemTemplate><%# Eval("AddDate") %></ItemTemplate>
    <ItemStyle Width=15% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="申请人">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="提现金额">
    <ItemTemplate><%# Eval("Money")%></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="提现方式">
    <ItemTemplate><%# Eval("BankType")%></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>    
    <asp:TemplateField HeaderText="提现账号">
    <ItemTemplate><%# Eval("BankAccount")%></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="开户姓名">
    <ItemTemplate><%# Eval("TrueName") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <%--<asp:TemplateField HeaderText="状态">
    <ItemTemplate><%# Eval("status").ToString()=="1"?"未审核":"<font color=red>已审核</font>" %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>--%>
</Columns>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>

