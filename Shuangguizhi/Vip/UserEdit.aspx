<%@ page language="C#" autoeventwireup="true" inherits="admin_UserEdit, App_Web_73mftbmz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>会员注册</title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="0" bgcolor="#FFFFFF" class="table1">
  <tr>
    <td height="30" colspan="2" align="center" background="images/1.gif" class="td2"><strong>会员注册</strong></td>
  </tr>
<tr><td width="20%" class="td2" align="right">会员名：</td><td class="td2"><asp:TextBox ID="tb_username" runat="server"></asp:TextBox> *</td></tr>
<tr><td width="20%" class="td2" align="right">一级密码：</td><td class="td2"><asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox> *</td></tr>
<tr><td width="20%" class="td2" align="right">二级密码：</td><td class="td2"><asp:TextBox ID="tb_passwordA" runat="server" TextMode="Password"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">推荐人：</td><td class="td2"><asp:TextBox ID="tb_tuijianren" runat="server"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">管理人：</td><td class="td2"><asp:TextBox ID="tb_guanliRen" runat="server"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">商务中心：</td><td class="td2"><asp:TextBox ID="tb_agencyName" runat="server" ReadOnly="true" BackColor="#c0c0c0"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">套餐类型：</td><td class="td2"><asp:DropDownList ID="ddl_setMeal" runat="server"></asp:DropDownList>
    <!-- *当前积分<asp:Label ID="lb_jifen" runat="server" ></asp:Label>--></td></tr>
<!--<tr><td class="td2" align=right>真实姓名：</td><td class="td2"><asp:TextBox ID="tb_trueName" runat="server"></asp:TextBox></td></tr>-->
<!--<tr><td class="td2" align=right>身份证号：</td><td class="td2"><asp:TextBox ID="tb_cardNo" runat="server"></asp:TextBox></td></tr>-->
<tr><td class="td2" align="right">开户银行：</td><td class="td2"><asp:DropDownList ID="ddl_bankType" runat="server">
<asp:ListItem>工商银行</asp:ListItem>
<asp:ListItem>邮政银行</asp:ListItem>
<asp:ListItem>建设银行</asp:ListItem>
<asp:ListItem>支付宝</asp:ListItem>
</asp:DropDownList></td></tr>
<tr><td class="td2" align="right">开户姓名：</td><td class="td2"><asp:TextBox ID="tb_bankName" runat="server"></asp:TextBox> *</td></tr>
<%--<tr><td class="td2" align=right>开户地址：</td><td class="td2"><asp:TextBox ID=tb_bankAddress runat=server></asp:TextBox> *</td></tr>--%>
<tr><td class="td2" align="right">银行账号：</td><td class="td2"><asp:TextBox ID="tb_bankAccount" runat="server"></asp:TextBox> *</td></tr>
<div id="temp" runat="server" visible="false">
<!--<tr><td class="td2" align=right>支付宝姓名：</td><td class="td2"><asp:TextBox ID=tb_zfbName runat=server></asp:TextBox></td></tr>
<tr><td class="td2" align=right>支付宝账号：</td><td class="td2"><asp:TextBox ID=tb_zfb runat=server></asp:TextBox></td></tr>-->
</div>
<tr><td class="td2" align="right">手机：</td><td class="td2"><asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">QQ：</td><td class="td2"><asp:TextBox ID="tb_qq" runat="server"></asp:TextBox></td></tr>
<tr><td class="td2" align="right"></td><td class="td2"><asp:Button ID="bt_add"  OnClientClick="return myfunction()" runat="server" Text=" 提交 " onclick="bt_add_Click" /></td></tr>
<asp:TextBox ID="ddlvalhidden"  runat="server"></asp:TextBox>
</table>
</form>
     <script type="text/javascript">
        function myfunction() {
      
            var ddlType = document.getElementById("<%=ddl_setMeal.ClientID %>");
            var ddlval = ddlType.options[ddlType.selectedIndex].value;
            var valuehidden = document.getElementById("<%=ddlvalhidden.ClientID%>");

                    if (ddlval==1){
                        window.confirm('你是否要花费1200积分为该用户注册');
                        valuehidden.value = ddlval;
                   }
            else    if (ddlval==2){
                window.confirm('你是否要花费3600积分为该用户注册');
                valuehidden.value = ddlval;
                       
                 } else
                    if (ddlval==3){
                        window.confirm('你是否要花费8400积分为该用户注册');
                        valuehidden.value = ddlval;
                        
            }else
                        confirm("你需要花費积分注册");
                    return ddlvalhidden;
                    
        }
    </script>
   
</body>
</html>
