<%@ page language="C#" autoeventwireup="true" inherits="admin_ConfigSet, App_Web_jivjg7cu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
<table width=100%>
<tr><td colspan=2 id=th>发送产品信息</td></tr>
<tr><td width=20% id=tdr>收货人</td><td id=tdl><asp:TextBox ID=tb_username runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>产品名称</td><td id=tdl><asp:TextBox ID=tb_name runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>产品价格</td><td id=tdl><asp:TextBox ID=tb_price runat=server Width=60px></asp:TextBox></td></tr>
<%--<tr><td id=tdr>手机号码</td><td id=tdl><asp:TextBox ID=tb_mobile runat=server></asp:TextBox></td></tr>--%>
<tr><td id=tdr>产品信息：<br />（请在这里填写卡号密码）
</td><td id=tdl>
<input id=content runat=server style="display:none" />
<iframe ID="eWebEditor1" src="../editor/ewebeditor.htm?id=content&style=standard650" frameborder="0" scrolling="no" width="100%" HEIGHT="200"></iframe>
</td></tr>
<tr><td></td><td><asp:Button ID=bt_update runat=server Text=" 修 改 " 
        onclick="bt_update_Click" /></td></tr>
</table>
    </form>
</body>
</html>
