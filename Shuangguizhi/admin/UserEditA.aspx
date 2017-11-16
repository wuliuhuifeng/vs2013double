<%@ page language="C#" autoeventwireup="true" inherits="admin_UserEdit, App_Web_r0ynyk2h" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>会员信息管理</title>
    <link href="Css/style.css" type="text/css" rel="Stylesheet" />
</head>
<body>
<form id=form1 runat=server>
<table width=100%>
<tr><td id=th colspan=4>会 员 信 息 管 理</td></tr>

<tr><td id=tdr width=15%>推荐人</td><td width=35%><asp:TextBox ID="tb_tuiJianRen" runat="server"></asp:TextBox></td><td id=tdr width=15%>开户名</td><td width=35%><asp:TextBox ID=tb_truename runat=server></asp:TextBox></td></tr>
    <tr><td id=tdr width=15%>手  机</td><td width=35%><asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox></td><td id=tdr width=15%>服务中心：</td><td width=35%><asp:TextBox ID="tb_agenctname" runat="server"></asp:TextBox></td></tr>
<tr><td id=tdr width=15%>商务中心</td><td width=35%><asp:TextBox ID=tb_guanLiRen runat=server></asp:TextBox></td><td id=tdr width=15%>开户帐号</td><td width=35%><asp:TextBox ID=tb_bankAccount runat=server></asp:TextBox></td></tr>
<tr><td id=tdr width=15%>会员类型</td><td width=35%><asp:DropDownList ID=ddl_setMealId runat=server></asp:DropDownList></td><td id=tdr width=15%>开户银行</td><td width=35%><asp:DropDownList ID=ddl_bankType runat=server>
<asp:ListItem>工商银行</asp:ListItem>
<asp:ListItem>邮政银行</asp:ListItem>
<asp:ListItem>建设银行</asp:ListItem>
<asp:ListItem>支付宝</asp:ListItem>
</asp:DropDownList></td></tr>
<div id=temp runat="server" visible=false>
<tr><td id=tdr width=15%>支付宝姓名</td><td width=35%><asp:TextBox ID=tb_zfbName runat=server></asp:TextBox></td><td id=tdr width=15%>支付宝账号：</td><td width=35%><asp:TextBox ID=tb_zfb runat=server></asp:TextBox></td></tr>
</div>
<tr><td id=tdr width=15%>用户密码</td><td width=35%><asp:TextBox ID=tb_password runat=server TextMode=Password></asp:TextBox> 不修改留空</td><td id=tdr width=15%>二级密码</td><td width=35%><asp:TextBox ID=tb_passwordA runat=server TextMode=Password></asp:TextBox> 不修改留空</td></tr>
<tr><td id=tdr width=15%>单数累积</td><td width=35%>左区：<asp:Label ID="lb_left" runat="server"></asp:Label>&nbsp;&nbsp;右区：<asp:Label ID=lb_right runat=server></asp:Label></td><td id=tdr width=15%>Q Q：</td><td width=35%><asp:TextBox ID=tb_qq runat=server></asp:TextBox></td></tr>
    <tr><td id=tdr width=15%>注册积分</td><td width="35%"><asp:Label ID="lb_jifen" runat="server"></asp:Label></td><td id=tdr width=15%>奖金</td><td width=35%><asp:Label ID="lb_jiangjin" runat="server"></asp:Label></td></tr>

<tr><td id=tdr width=15%>会员号</td><td width=35%><asp:TextBox ID="tb_username" runat="server"></asp:TextBox></td><td id=tdr width=15%></td><td width=35%></td></tr>
<tr><td colspan=4 align=center><asp:Button ID=bt_add runat=server Text=" 提交 " onclick="bt_add_Click" /></td></tr>
</table><br />
<table width=100%>
<tr><td align=center>会员注册积分:<asp:Label ID=lb_money runat=server></asp:Label>&nbsp;<asp:TextBox ID=tb_money runat=server Width=80px></asp:TextBox> 
    <asp:Button ID=bt_chongzhi runat=server Text="确定充值" onclick="bt_chongzhi_Click" /></td></tr>
<tr><td align=center>奖金兑换旅游积分:&nbsp;<asp:TextBox ID=tb_jiangjin runat=server Width=80px></asp:TextBox> 
    <asp:Button ID=bt_jifen runat=server Text="兑换旅游积分" onclick="bt_jifen_Click" /></td></tr>

</table>
</form>
</body>
</html>
