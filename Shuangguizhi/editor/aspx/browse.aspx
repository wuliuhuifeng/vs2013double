<%@ Page language="VB" AutoEventWireup="false" aspCompat="True" validateRequest="False"%>
<% @Import Namespace="System.IO" %>

<!--#include file="config.aspx"-->

<%
'######################################
' eWebEditor v4.00 - Advanced online web based WYSIWYG HTML editor.
' Copyright (c) 2003-2007 eWebSoft.com
'
' For further information go to http://www.ewebsoft.com/
' This copyright notice MUST stay intact for use.
'######################################
%>

<%

Call InitParam()
Call OutScript(GetList())


%>

<script language="vb" runat="server">
Dim sType As String, sStyleName As String
Dim sCurrDir As String, sDir As String
Dim sAllowExt As String, sUploadDir As String, sBaseUrl As String, sContentPath As String, sAllowBrowse As String


Function GetList()
	Dim s_List, s_Url
	s_List = ""

	Dim oUploadFile, sFileName
	Dim i
	Dim sMapCurrDir
	sMapCurrDir = Server.MapPath(sCurrDir)

	If sDir <> "" Then
		If InstrRev(sDir, "/") > 1 Then
			s_Url= Left(sDir, InstrRev(sDir, "/") - 1)
		Else
			s_Url = ""
		End If

		s_List = s_List & "<tr onclick='doRowClick(this)' onmouseover='doRowOver(this)' onmouseout='doRowOut(this)' isdir='true' path='" & s_Url & "'>" & _
			"<td><img border=0 src='../sysimage/file/parentfolder.gif'></td>" & _
			"<td>..</td>" & _
			"<td>&nbsp;</td>" & _
			"</tr>"
	End If

	Dim sSubDir As String
	Dim oSubDirInfo As DirectoryInfo
	For Each sSubDir In Directory.GetDirectories(sMapCurrDir)
		oSubDirInfo = New DirectoryInfo(sSubDir)
		If sDir = "" Then
			s_Url = oSubDirInfo.Name
		Else
			s_Url = sDir & "/" & oSubDirInfo.Name
		End If
		s_List = s_List & "<tr onclick='doRowClick(this)' onmouseover='doRowOver(this)' onmouseout='doRowOut(this)' isdir='true' path='" & s_Url & "'>" & _
			"<td><img border=0 src='../sysimage/file/closedfolder.gif'></td>" & _
			"<td noWrap>" & oSubDirInfo.Name & "</td>" & _
			"<td>&nbsp;</td>" & _
			"</tr>"
	Next

	Dim sUploadFiles() As String
	sUploadFiles = Directory.GetFiles(sMapCurrDir)

	Dim sUploadFile As String
	Dim oFileInfo As FileInfo
	For Each sUploadFile In sUploadFiles
		oFileInfo = New FileInfo(sUploadFile)
		sFileName = oFileInfo.Name
		If CheckValidExt(sFileName) = True Then
			If sDir = "" Then
				s_Url = sContentPath & sFileName
			Else
				s_Url = sContentPath & sDir & "/" & sFileName
			End If
			
			s_List = s_List & "<tr onclick='doRowClick(this)' onmouseover='doRowOver(this)' onmouseout='doRowOut(this)' url='" & s_Url & "'>" & _
					"<td>" & FileName2Pic(sFileName) & "</td>" & _
					"<td noWrap>" & sFileName & "</td>" & _
					"<td align=right>" & GetSizeUnit(oFileInfo.Length) & "</td>" & _
					"</tr>"
		End If
	Next

	If sDir = "" Then
		s_Url = "/"
	Else
		s_Url = "/" & sDir & "/"
	End If

	s_List = s_List & "</table>"
	s_List =  HTML2JS(s_List)
	s_List = "parent.setDirList(""" & s_List & """, """ & s_Url & """)"
	GetList = s_List
End Function

Sub OutScript(str)
	Response.Write ("<HTML><HEAD><meta http-equiv='Content-Type' content='text/html; charset=utf-8'><TITLE>eWebEditor</TITLE></head><body>")
	Response.Write ("<script language=javascript>" & str & "</s" & "cript>")
	Response.Write ("</body></html>")
	Response.End
End Sub

Function CheckValidExt(s_FileName)
	If sAllowExt = "" Then
		CheckValidExt = True
		Exit Function
	End If

	Dim i, aExt, sExt
	sExt = LCase(Mid(s_FileName, InStrRev(s_FileName, ".") + 1))
	CheckValidExt = False
	aExt = Split(LCase(sAllowExt), "|")
	For i = 0 To UBound(aExt)
		If aExt(i) = sExt Then
			CheckValidExt = True
			Exit Function
		End If
	Next
End Function


Sub InitParam()
	sType = UCase(Trim(Request.QueryString("type")))
	sStyleName = Trim(Request.QueryString("style"))

	Dim i, aStyleConfig, bValidStyle
	bValidStyle = False
	For i = 1 To Ubound(aStyle)
		aStyleConfig = Split(aStyle(i), "|||")
		If Lcase(sStyleName) = Lcase(aStyleConfig(0)) Then
			bValidStyle = True
			Exit For
		End If
	Next

	If bValidStyle = False Then
		OutScript("alert('Invalid Style!')")
	End If

	sBaseUrl = aStyleConfig(19)
	sAllowBrowse = aStyleConfig(43)

	If sAllowBrowse <> "1" Then
		OutScript("alert('Do not allow browse!')")
	End If

	sUploadDir = aStyleConfig(3)
	If Left(sUploadDir, 1) <> "/" Then
		sUploadDir = "../" & sUploadDir
	End If

	Select Case sBaseUrl
	Case "0"
		sContentPath = aStyleConfig(23)
	Case "1"
		sContentPath = RelativePath2RootPath(sUploadDir)
	Case "2"
		sContentPath = RootPath2DomainPath(RelativePath2RootPath(sUploadDir))
	End Select

	Select Case sType
	Case "FILE"
		sAllowExt = ""
	Case "MEDIA"
		sAllowExt = "rm|mp3|wav|mid|midi|ra|avi|mpg|mpeg|asf|asx|wma|mov"
	Case "FLASH"
		sAllowExt = "swf"
	Case Else
		sAllowExt = "bmp|jpg|jpeg|png|gif"
	End Select

	sCurrDir = sUploadDir
	sDir = Trim(Request("dir"))
	sDir = Replace(sDir, "\", "/")
	sDir = Replace(sDir, "../", "")
	sDir = Replace(sDir, "./", "")
	If sDir <> "" Then
		If CheckValidDir(Server.Mappath(sUploadDir & sDir)) = True Then
			sCurrDir = sUploadDir & sDir & "/"
		Else
			sDir = ""
		End If
	End If

End Sub

Function CheckValidDir(s_Dir)
	CheckValidDir = Directory.Exists(s_Dir)
End Function

Function RelativePath2RootPath(url)
	Dim sTempUrl
	sTempUrl = url
	If Left(sTempUrl, 1) = "/" Then
		RelativePath2RootPath = sTempUrl
		Exit Function
	End If

	Dim sWebEditorPath
	sWebEditorPath = Request.ServerVariables("SCRIPT_NAME")
	sWebEditorPath = Left(sWebEditorPath, InstrRev(sWebEditorPath, "/") - 1)
	Do While Left(sTempUrl, 3) = "../"
		sTempUrl = Mid(sTempUrl, 4)
		sWebEditorPath = Left(sWebEditorPath, InstrRev(sWebEditorPath, "/") - 1)
	Loop
	RelativePath2RootPath = sWebEditorPath & "/" & sTempUrl
End Function

Function RootPath2DomainPath(url)
	Dim sHost, sPort
	sHost = Split(Request.ServerVariables("SERVER_PROTOCOL"), "/")(0) & "://" & Request.ServerVariables("HTTP_HOST")
	sPort = Request.ServerVariables("SERVER_PORT")
	If sPort <> "80" Then
		sHost = sHost & ":" & sPort
	End If
	RootPath2DomainPath = sHost & url
End Function

Function FileName2Pic(sFileName)
	Dim sExt, sPicName
	sExt = UCase(Mid(sFileName, InstrRev(sFileName, ".")+1))
	Select Case sExt
	Case "TXT"
		sPicName = "txt.gif"
	Case "CHM", "HLP"
		sPicName = "hlp.gif"
	Case "DOC"
		sPicName = "doc.gif"
	Case "PDF"
		sPicName = "pdf.gif"
	Case "MDB"
		sPicName = "mdb.gif"
	Case "GIF"
		sPicName = "gif.gif"
	Case "JPG"
		sPicName = "jpg.gif"
	Case "BMP"
		sPicName = "bmp.gif"
	Case "PNG"
		sPicName = "pic.gif"
	Case "ASP", "JSP", "JS", "PHP", "PHP3", "ASPX"
		sPicName = "code.gif"
	Case "HTM", "HTML", "SHTML"
		sPicName = "htm.gif"
	Case "ZIP"
		sPicName = "zip.gif"
	Case "RAR"
		sPicName = "rar.gif"
	Case "EXE"
		sPicName = "exe.gif"
	Case "AVI"
		sPicName = "avi.gif"
	Case "MPG", "MPEG", "ASF"
		sPicName = "mp.gif"
	Case "RA", "RM"
		sPicName = "rm.gif"
	Case "MP3"
		sPicName = "mp3.gif"
	Case "MID", "MIDI"
		sPicName = "mid.gif"
	Case "WAV"
		sPicName = "audio.gif"
	Case "XLS"
		sPicName = "xls.gif"
	Case "PPT", "PPS"
		sPicName = "ppt.gif"
	Case "SWF"
		sPicName = "swf.gif"
	Case Else
		sPicName = "unknow.gif"
	End Select
	FileName2Pic = "<img border=0 src='../sysimage/file/" & sPicName & "'>"
End Function

Function GetSizeUnit(n_Size)
	If n_Size >= 1024*1024 Then
		GetSizeUnit = FormatNumber((n_Size / 1024 / 1024), 2, -1, 0, 0) & "M"
	Else
		GetSizeUnit = FormatNumber((n_Size / 1024), 2, -1, 0, 0) & "K"
	End If
End Function

Function HTML2JS(s_HTML)
	Dim s_JS
	s_JS = Replace(s_HTML, Vbcrlf, "")
	s_JS = Replace(s_JS, "\", "\\")
	s_JS = Replace(s_JS, """", "\""")
	HTML2JS = s_JS
End Function

</script>