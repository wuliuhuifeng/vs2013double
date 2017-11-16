<%@ page language="C#" autoeventwireup="true" inherits="admin_NetworkList, App_Web_73mftbmz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>套餐申请</title>
    <link href="Css/Index.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<table width="802" height="359" border="0" cellpadding="0" cellspacing="0"  background="Images/wlt.jpg" class="table1">



  <tr>
    <td height="76" colspan="8" align="center">
		<table width="100%" height="52" border="0" cellpadding="0" cellspacing="0"><tr>
		  <td width="40%" valign="top">	      
	      <p align="left"><a href="NetworkList.aspx"><font color="#FF0000">返回顶部</font></a> </p></td>
		  <td><%=a %>	
    </td>
	      <td width="40%">
        搜索：
        <label>
        <input name="username" type="text" id="username" size="10" runat="server" />
        </label>
            <label>
            <asp:Button ID="search" runat="server" Text="查询" onclick="search_Click" />
            </label>
	      </td>
		</table>
	</td>
  </tr>
  <tr>
    <td height="86" colspan="4" align="center"><%=b1 %></td>
    <td colspan="4" align="center"><%=b2 %></td>
  </tr>
  <tr>
    <td height="108" colspan="2" align="center"><%=c1 %></td>
    <td colspan="2" align="center"><%=c2 %></td>
    <td colspan="2" align="center"><%=c3 %></td>
    <td colspan="2" align="center"><%=c4 %></td>
  </tr>
  <tr>
    <td width="14%" height="52" align="center"><%=d1 %></td>
    <td width="11%" align="center"><%=d2 %></td>
    <td width="14%" align="center"><%=d3 %></td>
    <td width="11%" align="center"><%=d4 %></td>
    <td width="14%" align="center"><%=d5 %></td>
    <td width="11%" align="center"><%=d6 %></td>
    <td width="14%" align="center"><%=d7 %></td>
    <td width="11%" align="center"><%=d8 %></td>
  </tr>
</table>
</form>
</body>
</html>
