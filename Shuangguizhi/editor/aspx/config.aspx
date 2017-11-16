<script language="vb" runat="server">
Dim sUsername, sPassword
Dim aStyle()
Dim aToolbar()
</script>

<%
sUsername = "galaxy"
sPassword = "galaxy899A"

Redim aStyle(2)
aStyle(1) = "standard650|||blue|||coolblue|||/uploadfile/|||550|||350|||rar|zip|exe|doc|xls|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|jpeg|bmp|wmz|||50000|||10000|||10000|||10000|||100000|||1|||1|||EDIT|||1|||0|||0|||||||||1|||0|||COOL界面，蓝色主调，标准风格，部分常用按钮，标准适合界面宽度，默认样式|||1|||zh-cn|||0|||630|||600|||0|||1|||ff0000|||14|||宋体||||||0|||jpg|jpeg|||300|||FFFFFF|||1|||1"
aStyle(2) = "small|||blue|||coolblue|||/uploadfile/|||550|||350|||rar|zip|exe|doc|xls|chm|hlp|||swf|||gif|jpg|jpeg|bmp|||rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov|||gif|jpg|jpeg|bmp|wmz|||500|||100|||100|||100|||100|||0|||1|||EDIT|||1|||0|||0|||||||||1|||0|||mini全菜单风格，全部功能按钮，工具栏占位小，标准界面宽度|||1|||zh-cn|||0|||630|||600|||1|||www.bbfarm.cn|||FF0000|||14|||宋体||||||0|||jpg|jpeg|||300|||FFFFFF|||1|||0"

Redim aToolbar(4)
aToolbar(1) = "1|||TBHandle|FormatBlock|FontName|FontSize|Bold|Italic|UnderLine|StrikeThrough|SuperScript|SubScript|TBSep|JustifyLeft|JustifyCenter|JustifyRight|JustifyFull|||格式工具栏|||1"
aToolbar(2) = "1|||TBHandle|Cut|Copy|Paste|PasteText|FindReplace|Delete|RemoveFormat|TBSep|UnDo|ReDo|SelectAll|UnSelect|TBSep|OrderedList|UnOrderedList|Indent|Outdent|ParagraphAttr|TBSep|ForeColor|BgColor|BackColor|BackImage|TBSep|||常用工具栏|||2"
aToolbar(3) = "1|||TBHandle|Image|Flash|TBSep|TableMenu|FormMenu|TBSep|HorizontalRule|CreateLink|Anchor|Map|Unlink|TBSep|Symbol|Emot|Art|NowDate|NowTime|Quote|TBSep|Maximize|Media|||高级工具栏|||3"
aToolbar(4) = "2|||TBHandle|FormatBlock|FontName|FontSize|ZoomSelect|TBSep|EditMenu|FontMenu|ParagraphMenu|ComponentMenu|ObjectMenu|ToolMenu|FormMenu|TableMenu|FileMenu|||mini工具栏|||1"
%>