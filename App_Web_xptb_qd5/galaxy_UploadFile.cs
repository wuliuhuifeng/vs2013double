using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class galaxy_UploadFile : Page, IRequiresSessionState
{
	protected FileUpload FileUpload1;
	protected Button Button1;
	protected HtmlGenericControl up;
	protected LinkButton uped;
	protected HtmlForm form1;
	protected DefaultProfile Profile
	{
		get
		{
			return (DefaultProfile)this.Context.Profile;
		}
	}
	protected HttpApplication ApplicationInstance
	{
		get
		{
			return this.Context.ApplicationInstance;
		}
	}
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!base.IsPostBack)
		{
			if (this.Session["adminId"] != null)
			{
				return;
			}
			base.Response.Redirect("login.aspx");
		}
	}
	protected void Button1_Click(object sender, EventArgs e)
	{
		if (this.FileUpload1.HasFile)
		{
			string fileName = this.FileUpload1.FileName;
			string str = fileName.Substring(fileName.LastIndexOf('.') + 1);
			string str2 = string.Format("{0:yyyyMMddhhmmss}", DateTime.Now);
			string str3 = "/upload/" + str2 + "." + str;
			string filename = base.Request.MapPath("~/upload/" + str2 + "." + str);
			this.FileUpload1.SaveAs(filename);
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "SendUrl('" + str3 + "');", true);
			this.uped.Text = "<font color=red>上传成功， [点击重新上传]</font>";
			this.uped.Visible = true;
			this.up.Visible = false;
		}
	}
	protected void uped_Click(object sender, EventArgs e)
	{
		this.up.Visible = true;
		this.uped.Visible = false;
	}
}
