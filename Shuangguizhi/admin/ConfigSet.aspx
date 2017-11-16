<%@ page language="C#" autoeventwireup="true" inherits="admin_ConfigSet, App_Web_0p5kntrz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<table width=100%>
<tr><td colspan=2 id=th>网站参数设置</td></tr>
<tr><td width=20% id=tdr>扣分红基金</td><td id=tdl><asp:TextBox ID=tb_fenHong runat=server Width=50px></asp:TextBox>%</td></tr>
<tr><td id=tdr>结算扣税</td><td id=tdl><asp:TextBox ID=tb_kouShui runat=server Width=50px></asp:TextBox>%</td></tr>
<tr><td></td><td><asp:Button ID=bt_update runat=server Text=" 修 改 " 
        onclick="bt_update_Click" /></td></tr>
</table>
    </form>
</body>
</html>
