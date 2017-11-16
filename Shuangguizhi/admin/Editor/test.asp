<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title></title>
</head>
<body>
              <form action="newsUpfile.asp" method="post" enctype="multipart/form-data" name="form1" id="form1">
                <table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" class="table">
                      <tr class="td">
                        <td width="120" align="right">详细内容：<br>
                          (Shift+Enter换行)</td>
                        <td><textarea name="content" id="content" style="display:none"></textarea>
                          <iframe id="eWebEditor1" src="ewebeditor.asp?id=content&style=zyt_style" frameborder=0 scrolling=no width='550' HEIGHT='350'></iframe></td>
                      </tr>
                    </table>
              </form>
			  <SELECT ID="upfileImg" NAME="upfileImg">
				<OPTION VALUE="" SELECTED>无</OPTION>
			  </SELECT>
			  <br>
			  <INPUT id=upfile style="WIDTH: 500px"><INPUT type=button value="WIDTH" onclick="eWebEditor1.ShowDialog('dialog/img.htm', 560, 340, true)">
</body>
</html>
