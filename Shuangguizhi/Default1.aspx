<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="_Default, App_Web_l0sgfu93" title="无标题页" %>


<SCRIPT language=JavaScript type=text/JavaScript>
var day="";
var month="";
var ampm="";
var ampmhour="";
var myweekday="";
var year="";
mydate=new Date();
myweekday=mydate.getDay();
mymonth=mydate.getMonth()+1;
myday= mydate.getDate();
myyear= mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
if(myweekday == 0)
weekday=" 星期日 ";
else if(myweekday == 1)
weekday=" 星期一 ";
else if(myweekday == 2)
weekday=" 星期二 ";
else if(myweekday == 3)
weekday=" 星期三 ";
else if(myweekday == 4)
weekday=" 星期四 ";
else if(myweekday == 5)
weekday=" 星期五 ";
else if(myweekday == 6)
weekday=" 星期六 ";
document.write(year+"年"+mymonth+"月"+myday+"日 "+weekday);
</SCRIPT>
<SPAN id=liveclock 15px? height: 109px; style?="width:"></SPAN>
<SCRIPT language=javascript>
function www_helpor_net()
{
var Digital=new Date()
var hours=Digital.getHours()
var minutes=Digital.getMinutes()
var seconds=Digital.getSeconds()

if(minutes<=9)
minutes="0"+minutes
if(seconds<=9)
seconds="0"+seconds
myclock="<font face='黑体'>"+hours+":"+minutes+":"+seconds+"</font>"
if(document.layers){document.layers.liveclock.document.write(myclock)
document.layers.liveclock.document.close()
}else if(document.all)
liveclock.innerHTML=myclock
setTimeout("www_helpor_net()",1000)
}
www_helpor_net();
//-->
</SCRIPT></TD>
</TR></TBODY></TABLE>
 
<table cellspacing="0" cellpadding="0" width="980" border="0" style="margin-top:14px;">
  <tbody>
    <tr>
      <td valign="top" width="750"><table cellspacing="0" cellpadding="0" width="730" border="0">
        <tbody>
          <tr>
            <td><img height="14" src="images/title_about_us.jpg" width="730" /></td>
          </tr>
        </tbody>
      </table>
          <table class="bg_title_about_us" cellspacing="0" cellpadding="0" width="730" border="0">
            <tbody>
              <tr>
                <td width="2"><img height="172" src="images/title_about_us_l.jpg" width="2" /></td>
                <td width="145" align="center" valign="middle"><img height="110" alt="公司简介" src="images/companypic.jpg" width="130" border="0" /></td>
                <td width="580" align="middle" style="padding-top:10px;"><span class="text_about"><%=webconfig.Jianjie %></span></td>
                <td width="3"><img height="172" src="images/title_about_us_r.jpg" width="3" /></td>
              </tr>
            </tbody>
          </table>
        <table style="MARGIN-TOP: 14px" cellspacing="0" cellpadding="0" width="730" border="0">
            <tbody>
              <tr>
                <td><img height="14" src="images/title_product01.jpg" width="675" /></td>
                <td align="middle" width="46"><a href="Product.asp"><img height="5" src="images/more1.jpg" width="32" border="0" /></a></td>
                <td><img height="14" src="images/title_product_r.jpg" width="9" /></td>
              </tr>
            </tbody>
        </table>
        <table class="border_bk" cellspacing="0" cellpadding="0" width="730" border="0">
            <tbody>
              <tr>
                <td align="middle" height="170"><div id="marquee1" style="OVERFLOW: hidden; WIDTH: 700px">
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                      <tbody>
                        <tr>
                          <td id="marquee1_1">
						  
						  
						  <span id="tb_A101">
              <!--------------------显示最新产品的子程序开始--------------------->
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

   
<tr align="center">
<asp:Repeater ID=repeater1 runat=server>
<ItemTemplate>
          
<td><table width="1%"  border="0" cellspacing="0" cellpadding="0">
<tr>
<td><table width="100%"  border="0" cellpadding="3" cellspacing="1" bgcolor="#E9E9E9">
<tr>
<td width="130" bgcolor="#FFFFFF"><table width="130"  border="0" cellpadding="0" cellspacing="0" bgcolor="#E9E9E9">
<tr>
<td width="130" height="110" align="center" valign="middle" bgcolor="#FFFFFF">
<a href="ProductView.aspx?ID=<%# Eval("id") %>" ><img src="<%# Eval("Picture") %>" width="130" height="110" border=0 ></a></td>
</tr>
</table></td>
</tr>
</table></td>
<td valign="bottom"><img src="images/yyri2.gif" width="7" height="112" /></td>
</tr>
<tr>
<td colspan="2"><table width="100%"  border="0" cellspacing="2" cellpadding="0">
<tr>
<td height="30" align="center"><a href="ProductView.aspx?ID=<%# Eval("id") %>"><%# Eval("Name") %></a></td>
</tr>
</table></td>
</tr>
</table></td>
</ItemTemplate>
</asp:Repeater>
</tr>
                          </table><!--------------------显示最新产品的子程序结束--------------------->
              </span>
						  
						  
						  
						  </td>
                          <td id="marquee1_2"></td>
                        </tr>
                      </tbody>
                    </table>
                </div>
                    <script language="JavaScript" type="text/javascript">
							var marqueeVar1;
							document.getElementById('marquee1_2').innerHTML = document.getElementById('marquee1_1').innerHTML;
							marqueeVar1 = window.setInterval("marquee(1, 'left')", 20);
							document.getElementById('marquee1').onmouseover = function(){window.clearInterval(marqueeVar1);}
							document.getElementById('marquee1').onmouseout = function(){marqueeVar1 = window.setInterval('marquee(1, "left")', 20);}
						</script>
                </td>
              </tr>
            </tbody>
        </table>
        <table class="border_bk2" style="MARGIN-TOP: 12px" cellspacing="0" cellpadding="0" width="730" border="0">
            <tbody>
              <tr>
                <td style="PADDING-RIGHT: 12px; PADDING-LEFT: 12px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px" valign="top" width="352"><table cellspacing="0" cellpadding="0" width="94%" border="0">
                    <tbody>
                      <tr>
                        <td height="42"><img height="14" alt="新闻动态" src="images/title_news01.jpg" width="318" /></td>
                        <td align="middle" width="60"><a href="ArticleList.aspx?id=26"><img height="5" src="images/more1.jpg" width="32" border="0" /></a></td>
                      </tr>
                    </tbody>
                </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                      <tbody>
                        <tr>
                          <td class="list3" style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px">

				<ul>	

 			 <asp:Repeater ID=repeater2 runat=server>
 			 <ItemTemplate>
                   <li style="POSITION: relative"><span>[<%# string.Format("{0:yyyy-MM-dd}",Eval("addDate").ToString()) %>]</span><a href="ArticleView.aspx?id=<%# Eval("id") %>" target="_blank"><%# Utility.StringToSmal(Eval("Title").ToString(), 16)%></a> </li>
			 </ItemTemplate>
 			 </asp:Repeater>
                              
                           

                           
						      
                          </ul></td>
                        </tr>
                      </tbody>
                </table></td>
                <td width="10"><img height="190" width="1" /></td>
                <td style="PADDING-RIGHT: 12px; PADDING-LEFT: 12px; PADDING-BOTTOM: 0px; PADDING-TOP: 0px" valign="top" width="366"><table cellspacing="0" cellpadding="0" width="100%" border="0">
                    <tbody>
                      <tr>
                        <td height="42"><img height="14" src="images/title_notice.jpg" width="290" /></td>
                        <td align="middle" width="60"><a href="ArticleList.aspx?id=26"><img height="5" src="images/more1.jpg" width="32" border="0" /></a></td>
                      </tr>
                    </tbody>
                </table>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0">
                      <tbody>
                        <tr>
                          <td class="list3"><ul>
                           
 			 <asp:Repeater ID=repeater3 runat=server>
 			 <ItemTemplate>
                   <li style="POSITION: relative"><span>[<%# string.Format("{0:yyyy-MM-dd}",Eval("addDate").ToString()) %>]</span><a href="ArticleView.aspx?id=<%# Eval("id") %>" target="_blank"><%# Utility.StringToSmal(Eval("Title").ToString(),16) %></a> </li>
			 </ItemTemplate>
 			 </asp:Repeater>
						      

                          </ul></td>
                        </tr>
                      </tbody>
                </table></td>
              </tr>
            </tbody>
        </table></td>
      <td valign="top" width="230"><table cellspacing="0" cellpadding="0" width="219" border="0">
        <tbody>
          <tr>
            <td><img height="14" src="images/title_case01.jpg" width="219" /></td>
          </tr>
        </tbody>
      </table>
          <table class="bg_title_about_us" cellspacing="0" cellpadding="0" width="219" border="0">
            <tbody>
              <tr>
                <td rowspan="2"><img height="172" src="images/title_about_us_l.jpg" width="2" /></td>
                <td width="214" align="center" valign="center">
						  

					


				<SCRIPT type=text/javascript>
var img=new Array();
var txt=new Array();
var lnk=new Array();

img[0]='images/1.jpg'
lnk[0]=escape('http://www.jiumu.net');
txt[0]='';

img[1]='images/2.jpg'
lnk[1]=escape('http://www.jiumu.net');
txt[1]='';

img[2]='imagesh/3.jpg'
lnk[2]=escape('http://www.jiumu.net');
txt[2]='';

img[3]='images/4.jpg'
lnk[3]=escape('http://www.jiumu.net');
txt[3]='';

img[4]='images/5.jpg'
lnk[4]=escape('http://www.jiumu.net');
txt[4]='';


 var focus_width=214;
 var focus_height=152;
 var text_height=0;



var swf_height = focus_height+text_height;

var pics='<%=sb_pic.ToString().TrimEnd('|') %>';
var links='<%=sb_link.ToString().TrimEnd('|') %>';
var texts=txt.join("|");
 
 document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="[url]http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6[/url],0,0,0" width=212 height=150>');
document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="images/pixviewer.swf"><param name="quality" value="high"><param name="bgcolor" value="#ffffff">');
document.write('<param name="menu" value="false"/><param name="wmode" value="transparent"/>');
document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
document.write('<embed src="images/pixviewer.swf" wmode="transparent" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#ffffff" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash"  pluginspage="[url]http://www.macromedia.com/go/getflashplayer[/url]" />');
document.write('</object>');    </SCRIPT>

			</td>
                <td rowspan="2"><img height="172" src="images/title_about_us_r.jpg" width="3" /></td>
              </tr>
            </tbody>
          </table>
        <table style="MARGIN-TOP: 14px" cellspacing="0" cellpadding="0" width="220" border="0">
            <tbody>
              <tr>
                <td><img height="14" src="images/title_business.jpg" width="220" /></td>
              </tr>
            </tbody>
        </table>
        <table class="bg_title_about_us" cellspacing="0" cellpadding="0" width="220" border="0">
            <tbody>
              <tr>
                <td rowspan="2"><img height="172" src="images/title_about_us_l.jpg" width="2" /></td>
                <td class="bg_title_case" valign="top" width="215"><P><FONT face=Verdana><FONT color=#dd0000><%=webconfig.Contact %></FONT></FONT></P></td>
                <td rowspan="2"><img height="172" src="images/title_about_us_r.jpg" width="3" /></td>
              </tr>
            </tbody>
        </table>
        <table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
            <tbody>
              <tr>
                <td align="middle" height="56" style="padding-top:7px;"><a href="SinglePageView.aspx?sortId=22"><img height="46" alt="人才招聘" src="images/button_human.jpg" width="212" border="0" /></a></td>
              </tr>
              <tr>
                <td align="middle" height="72"><a href="ChanPinList.aspx?id=21"><img height="46" alt="客户留言" src="images/button_message.jpg" width="212" border="0" /></a></td>
              </tr>
              <tr>
                <td align="middle" height="66"><a href="SinglePageView.aspx?sortId=19"><img height="46" alt="联系我们" src="images/button_contact.jpg" width="212" border="0" /></a></td>
              </tr>
            </tbody>
        </table>
      </td>
    </tr>
  </tbody>
</table>
</asp:Content>

