<%@ page language="C#" autoeventwireup="true" inherits="User_NewsList, App_Web_x1tbcymf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="home.files/style.css" type=text/css rel=stylesheet>
<link href="css/Index.css" rel="stylesheet" type="text/css" />
</HEAD>


<BODY bottomMargin=0 leftMargin=5 topMargin=5 rightMargin=0>
<table cellpadding=0 cellspacing=0 style="margin:5px; width:100%;">
<tr><td width=530>
<TABLE width="530" border=0 align="center" cellPadding=0 cellSpacing=0 class="table1"> 
<tr><td height="8"></td></tr>
<tr>
  <td height="23" align="left" background="Images/trt3.gif"><span style="padding-left:30px;font-weight: bold;color:#003399;">最新资讯</span></td>
</tr>
  <TR>
    <TD vAlign=top background="Images/dewe4.gif">     

                 
           
      <table width="98%" height="520" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td valign="top">
	
	 <asp:Repeater ID=rp_newslist runat=server>
	 <ItemTemplate>
       
            <TABLE width=500 border=0 align="center" cellPadding=0 cellSpacing=0 class="td10">
              <TBODY>
              <TR>
                <TD class=hei width="75%" style="border-bottom:dotted #99CC33 1px;" height=25>
             &nbsp;  &nbsp;  &nbsp;  <img src="Images/arrow_082.gif"> <A 
                  href="NewsView.aspx?id=<%# Eval("Id") %>"><FONT 
                  color=<%# Eval("titlered").ToString()=="1"?"red":"" %>><%# Eval("title") %></FONT></A></TD>
              <TD class=hei width="25%" 
                  style="border-bottom:dotted #99CC33 1px;">[<%# Eval("addDate") %>] &nbsp;</TD></TR>
				  
				  <tr><td height="4"></td>
</tr>
				  
		    </TBODY></TABLE>
	</ItemTemplate>
	 </asp:Repeater>
			
   <TABLE width=500 border=0 align="center" cellPadding=0 cellSpacing=0 class="td10">
              <TBODY>
				  
				  <tr>
				    <td align="center" width="75%" id=pager >
					<%=pager.CreaterHtml() %>
					</td>
</tr>
		    </TBODY></TABLE>
   </td>
  </tr>
  
</table>
     
		    
    
            
</TD>
               
</TR>
<tr><td height="15" background="Images/dsafe5.gif"></td>
</tr>
</TABLE>
</td>
<td style="width:5px;"></td>
<td valign=top width=220>
<div style="background-image:url(images/tongji.jpg); height:100px; margin-bottom:5px; vertical-align:top; overflow:hidden;">
<div style="padding:15px 10px;line-height:150%; ">
<%=WebconfigInfo.Read(1).Chengnuo %>
</div>
</div>
<img src="images/z1.jpg" />
<img src="images/z2.jpg" />
<img src="images/z3.jpg" />
<img src="images/z4.jpg" />
<img src="images/best.gif" />
</td></tr>
</table>

</BODY></HTML>

