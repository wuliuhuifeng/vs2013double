using System;
using System.Web.UI;
public class BasePage : Page
{
	protected override void OnInit(EventArgs e)
	{
		base.OnInit(e);
		base.Response.Write("基类<br>");
	}
	protected void OnLoad(object sender, EventArgs e)
	{
		base.Response.Write("基类加载<br>");
	}
}
