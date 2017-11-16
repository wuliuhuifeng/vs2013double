<%@ page language="C#" autoeventwireup="true" inherits="admin_UserList, App_Web_0p5kntrz" %>
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
    <td id=th>汇款通知</td>
    </tr>
</table>
<asp:GridView ID=gridview1 runat=server AutoGenerateColumns=false Width=100% 
        onrowupdating="gridview1_RowUpdating" >
    <Columns>
    <asp:TemplateField HeaderText="编号">
    <ItemTemplate><%# Eval("Id") %></ItemTemplate>
    <ItemStyle Width=5% HorizontalAlign=Center />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="用户名">
    <ItemTemplate><%# Eval("username") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="姓名">
    <ItemTemplate><%# Eval("truename") %></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="金额">
    <ItemTemplate><%# Eval("jine") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
        <asp:TemplateField HeaderText="汇款时间">
    <ItemTemplate><%# Eval("liushuihao") %></ItemTemplate>
    <ItemStyle Width=15%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="汇款银行">
    <ItemTemplate><%# Eval("fangshi") %></ItemTemplate>
    <ItemStyle Width=10%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="银行账号">
    <ItemTemplate><%# Eval("kaihuhao") %></ItemTemplate>
    <ItemStyle Width=20%  HorizontalAlign=Center />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="操作">
    <ItemTemplate><asp:LinkButton ID=update CommandName=update runat=server Text='<%# Eval("status").ToString()=="0"?"<font color=red>未充值</font>":"已充值" %>' Enabled='<%# Eval("status").ToString()=="0"?true:false%>'></asp:LinkButton></ItemTemplate>
    <ItemStyle Width=10% HorizontalAlign=Center />
    </asp:TemplateField>
</Columns>
</asp:GridView>
<div id=pager><%=pager.CreaterHtml() %></div>
</form>
</body>
</html>

