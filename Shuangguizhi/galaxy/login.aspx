<%@ page language="C#" autoeventwireup="true" inherits="admin_login, App_Web_xptb_qd5" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>后台管理登陆</title>
    <style type="text/css">
        body{ background-color:#799ae1;}
P {
	FONT-SIZE: 12px; COLOR: #000000; LINE-HEIGHT: 150%
}
TD {
	FONT-SIZE: 12px; COLOR: #333333
}
INPUT {
	FONT-SIZE: 12px; COLOR: #000000
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-top:50px;">
        <p>
        </p>
        <table align="center" bgcolor="#eeead6" border="0" cellpadding="0" 
            cellspacing="0" width="413">
            <tr>
                <td background="images/topbg.gif" 
                    colspan="3" height="29">
                    <table align="right" border="0" cellpadding="0" cellspacing="0" width="95%">
                        <tr>
                            <td align="left" valign="center">
                                <font color="#ffffff"><b>后台管理入口</b></font></td>
                            <td align="middle" width="8%">
                                <img align="middle" alt="帮助文档" border="0" height="21" 
                                    src="images/help.gif" width="21" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td background="images/link.gif" 
                    width="3">
                </td>
                <td>
                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td background="images/topbg.gif" 
                                height="75">
                                <table border="0" cellpadding="0" cellspacing="0" height="75" width="100%">
                                    <tr>
                                        <td align="left" valign="bottom" width="30%">
                                            <img height="74" 
                                                src="images/xpbg.gif" 
                                                width="411" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table align="center" border="0" width="95%">
                                    <tr>
                                        <td>
                                            <fieldset>
                                                <legend accesskey="F" align="left">登录窗口</legend>
                                                <table border="0" cellpadding="2" cellspacing="2" width="100%">
                                                    <tr>
                                                        <td width="10%">
                                                            &nbsp;</td>
                                                        <td width="20%">
                                                            用户名：</td>
                                                        <td>
                                                            <asp:TextBox ID="username" runat="server" Width="120px"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="10%">
                                                            &nbsp;</td>
                                                        <td width="20%">
                                                            密　码：</td>
                                                        <td>
                                                            <asp:TextBox ID="password" runat="server" TextMode="Password" Width="120px"></asp:TextBox>
&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td width="10%">
                                                            &nbsp;</td>
                                                        <td>
                                                            附加码：</td>
                                                        <td>
                                                            <asp:TextBox ID="checkcode" runat="server" Width="40px"></asp:TextBox><img src="code.aspx" style="vertical-align:inherit;" />
&nbsp;&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td align="middle" colspan="3">
                                                            <asp:Button ID="Button1" runat="server" Text=" 登 录 " onclick="Button1_Click" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </fieldset> &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
                <td background="images/link.gif" 
                    width="3">
                </td>
            </tr>
            <tr>
                <td background="images/linkbom.gif" 
                    colspan="3" height="3">
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    
    </div>
    
    </form>
</body>
</html>
