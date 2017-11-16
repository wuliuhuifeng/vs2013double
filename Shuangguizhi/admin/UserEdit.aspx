<%@ page language="C#" autoeventwireup="true" inherits="admin_UserEdit, App_Web_0p5kntrz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="Css/style.css" type="text/css" rel="Stylesheet" />
</head>
<body>
<form id=form1 runat=server>
<table width=100%>
<tr><td id=th colspan=2>会员注册</td></tr>
<tr><td width=20% id=tdr>会员号：</td><td><asp:TextBox ID=tb_username runat=server></asp:TextBox></td></tr>
<tr><td width=20% id=tdr>一级密码：</td><td><asp:TextBox ID=tb_password runat=server TextMode=Password></asp:TextBox></td></tr>
<tr><td width=20% id=tdr>二级密码：</td><td><asp:TextBox ID=tb_passwordA runat=server TextMode=Password></asp:TextBox></td></tr>
<tr><td id=tdr>推荐人：</td><td><asp:TextBox ID=tb_tuijianren runat=server ></asp:TextBox></td></tr>
<tr><td id=tdr>管理人：</td><td><asp:TextBox ID=tb_guanLiRen runat=server ReadOnly="true"></asp:TextBox></td></tr>
<tr><td id=tdr>服务中心：</td><td><asp:TextBox ID=tb_agencyName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>套餐类型：</td><td><asp:DropDownList ID=ddl_setMeal runat=server></asp:DropDownList><asp:Label ID="lb_jifen" runat="server" ></asp:Label></td></tr>
<%--<tr><td id=tdr>真实姓名：</td><td><asp:TextBox ID=tb_trueName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>身份证号：</td><td><asp:TextBox ID=tb_cardNo runat=server></asp:TextBox></td></tr>--%>
<tr><td id=tdr>开户银行：</td><td><asp:DropDownList ID=ddl_bankType runat=server>
<asp:ListItem>工商银行</asp:ListItem>
<asp:ListItem>邮政银行</asp:ListItem>
<asp:ListItem>建设银行</asp:ListItem>
<asp:ListItem>支付宝</asp:ListItem>
</asp:DropDownList></td></tr>
<tr><td id=tdr>开户姓名：</td><td><asp:TextBox ID=tb_bankName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>银行账号：</td><td><asp:TextBox ID=tb_bankAccount runat=server></asp:TextBox></td></tr>
<div id=temp runat=server visible=false>
<tr><td id=tdr>开户地址：</td><td><asp:TextBox ID=tb_bankAddress runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>支付宝姓名：</td><td><asp:TextBox ID=tb_zfbName runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>支付宝账号：</td><td><asp:TextBox ID=tb_zfb runat=server></asp:TextBox></td></tr>
</div>
<tr><td id=tdr>手机：</td><td><asp:TextBox ID=tb_mobile runat=server></asp:TextBox></td></tr>
<tr><td id=tdr>QQ：</td><td><asp:TextBox ID=tb_qq runat=server></asp:TextBox></td></tr>
<tr><td></td><td><asp:Button ID=bt_add runat=server Text=" 提交 " 
        onclick="bt_add_Click" /></td></tr>
</table>
</form>
</body>
</html>
