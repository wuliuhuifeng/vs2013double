<%@ page language="C#" autoeventwireup="true" inherits="User_NewsView, App_Web_73mftbmz" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="home.files/style.css" type=text/css rel=stylesheet>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
<META content="">
</HEAD>


<BODY bottomMargin=0 leftMargin=0 topMargin=0 rightMargin=0>
<form id=form1 runat=server>
<TABLE width="98%" border=0 align="center" cellPadding=0 cellSpacing=0 class="table1"> 
<tr><td height="8"></td></tr>
<tr>
  <td height="27" align="left" class="td1">&nbsp;<img src="Images/a.gif">&nbsp;<strong><asp:Label ID=lb_newscate runat=server></asp:Label></strong></td>
</tr>
  <TR>
    <TD vAlign=top>     
	
            <DIV  align="center" style=" padding-top:10px;">  
            
           
           
		    
  
		       
            <TABLE cellSpacing=0 cellPadding=0 width=720 border=0>
              <TBODY>
              <TR>
                <TD 
                height=25 class=hei><div align="center" style="color:#FF0000; font-size:14px" ><strong><asp:Label ID=lb_newsTitle runat=server></asp:Label></strong></div></TD>
              </TR>
              <TR>
                <TD 
                height=25  class=hei><div align="right">发布时间:<asp:Label ID=lb_newsDate runat=server></asp:Label>&nbsp;&nbsp;&nbsp;</div></TD>
              </TR>
              <TR>
                <TD 
                height=25 style="line-height:23px; padding-left:50px; padding-right:50px;"class=hei>
                <asp:Label ID=lb_newsContent runat=server></asp:Label>
                </TD>
              </TR>
              </TBODY></TABLE>
				  
            
	  </DIV></TD>
               
</TR><tr><td height="10"></td></tr>

</TABLE>
</form>
</BODY></HTML>
