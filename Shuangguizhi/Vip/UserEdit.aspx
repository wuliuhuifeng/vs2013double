<%@ page language="C#" autoeventwireup="true" inherits="admin_UserEdit, App_Web_73mftbmz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��Աע��</title>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" align="center" cellpadding="2" cellspacing="0" bgcolor="#FFFFFF" class="table1">
  <tr>
    <td height="30" colspan="2" align="center" background="images/1.gif" class="td2"><strong>��Աע��</strong></td>
  </tr>
<tr><td width="20%" class="td2" align="right">��Ա����</td><td class="td2"><asp:TextBox ID="tb_username" runat="server"></asp:TextBox> *</td></tr>
<tr><td width="20%" class="td2" align="right">һ�����룺</td><td class="td2"><asp:TextBox ID="tb_password" runat="server" TextMode="Password"></asp:TextBox> *</td></tr>
<tr><td width="20%" class="td2" align="right">�������룺</td><td class="td2"><asp:TextBox ID="tb_passwordA" runat="server" TextMode="Password"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">�Ƽ��ˣ�</td><td class="td2"><asp:TextBox ID="tb_tuijianren" runat="server"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">�����ˣ�</td><td class="td2"><asp:TextBox ID="tb_guanliRen" runat="server"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">�������ģ�</td><td class="td2"><asp:TextBox ID="tb_agencyName" runat="server" ReadOnly="true" BackColor="#c0c0c0"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">�ײ����ͣ�</td><td class="td2"><asp:DropDownList ID="ddl_setMeal" runat="server"></asp:DropDownList>
    <!-- *��ǰ����<asp:Label ID="lb_jifen" runat="server" ></asp:Label>--></td></tr>
<!--<tr><td class="td2" align=right>��ʵ������</td><td class="td2"><asp:TextBox ID="tb_trueName" runat="server"></asp:TextBox></td></tr>-->
<!--<tr><td class="td2" align=right>���֤�ţ�</td><td class="td2"><asp:TextBox ID="tb_cardNo" runat="server"></asp:TextBox></td></tr>-->
<tr><td class="td2" align="right">�������У�</td><td class="td2"><asp:DropDownList ID="ddl_bankType" runat="server">
<asp:ListItem>��������</asp:ListItem>
<asp:ListItem>��������</asp:ListItem>
<asp:ListItem>��������</asp:ListItem>
<asp:ListItem>֧����</asp:ListItem>
</asp:DropDownList></td></tr>
<tr><td class="td2" align="right">����������</td><td class="td2"><asp:TextBox ID="tb_bankName" runat="server"></asp:TextBox> *</td></tr>
<%--<tr><td class="td2" align=right>������ַ��</td><td class="td2"><asp:TextBox ID=tb_bankAddress runat=server></asp:TextBox> *</td></tr>--%>
<tr><td class="td2" align="right">�����˺ţ�</td><td class="td2"><asp:TextBox ID="tb_bankAccount" runat="server"></asp:TextBox> *</td></tr>
<div id="temp" runat="server" visible="false">
<!--<tr><td class="td2" align=right>֧����������</td><td class="td2"><asp:TextBox ID=tb_zfbName runat=server></asp:TextBox></td></tr>
<tr><td class="td2" align=right>֧�����˺ţ�</td><td class="td2"><asp:TextBox ID=tb_zfb runat=server></asp:TextBox></td></tr>-->
</div>
<tr><td class="td2" align="right">�ֻ���</td><td class="td2"><asp:TextBox ID="tb_mobile" runat="server"></asp:TextBox> *</td></tr>
<tr><td class="td2" align="right">QQ��</td><td class="td2"><asp:TextBox ID="tb_qq" runat="server"></asp:TextBox></td></tr>
<tr><td class="td2" align="right"></td><td class="td2"><asp:Button ID="bt_add"  OnClientClick="return myfunction()" runat="server" Text=" �ύ " onclick="bt_add_Click" /></td></tr>
<asp:TextBox ID="ddlvalhidden"  runat="server"></asp:TextBox>
</table>
</form>
     <script type="text/javascript">
        function myfunction() {
      
            var ddlType = document.getElementById("<%=ddl_setMeal.ClientID %>");
            var ddlval = ddlType.options[ddlType.selectedIndex].value;
            var valuehidden = document.getElementById("<%=ddlvalhidden.ClientID%>");

                    if (ddlval==1){
                        window.confirm('���Ƿ�Ҫ����1200����Ϊ���û�ע��');
                        valuehidden.value = ddlval;
                   }
            else    if (ddlval==2){
                window.confirm('���Ƿ�Ҫ����3600����Ϊ���û�ע��');
                valuehidden.value = ddlval;
                       
                 } else
                    if (ddlval==3){
                        window.confirm('���Ƿ�Ҫ����8400����Ϊ���û�ע��');
                        valuehidden.value = ddlval;
                        
            }else
                        confirm("����Ҫ���M����ע��");
                    return ddlvalhidden;
                    
        }
    </script>
   
</body>
</html>
