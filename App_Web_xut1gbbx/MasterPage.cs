using System;
using System.Data.OleDb;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class MasterPage : System.Web.UI.MasterPage
{
	private Database db = new Database();
	public StringBuilder sb = new StringBuilder();
	public StringBuilder sb1 = new StringBuilder();
	public WebconfigInfo webconfig;
	protected ContentPlaceHolder head;
	protected ContentPlaceHolder ContentPlaceHolder1;
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
			this.BindData();
		}
	}
	public void BindData()
	{
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("select B.moduleTableName as moduleName, A.* from infosort as A,moduleList as B where A.moduleId=B.id and A.pid=0 order by A.sortOrder");
		while (mySqlDataReader.Read())
		{
			if (mySqlDataReader["sortType"].ToString() == "1")
			{
				this.sb.AppendLine(string.Concat(new string[]
				{
					"<li><a href='",
					mySqlDataReader["moduleName"].ToString(),
					"List.aspx?id=",
					mySqlDataReader["Id"].ToString(),
					"'>",
					mySqlDataReader["SortName"].ToString(),
					"</a></li>"
				}));
				this.sb1.AppendLine(string.Concat(new string[]
				{
					"<a href='",
					mySqlDataReader["moduleName"].ToString(),
					"List.aspx?id=",
					mySqlDataReader["Id"].ToString(),
					"'>",
					mySqlDataReader["SortName"].ToString(),
					"</a>"
				}));
			}
			else
			{
				if (mySqlDataReader["sortType"].ToString() == "2")
				{
					this.sb.AppendLine(string.Concat(new string[]
					{
						"<li><a href='",
						mySqlDataReader["moduleName"].ToString(),
						"View.aspx?sortId=",
						mySqlDataReader["Id"].ToString(),
						"''>",
						mySqlDataReader["SortName"].ToString(),
						"</a></li>"
					}));
					this.sb1.AppendLine(string.Concat(new string[]
					{
						"<a href='",
						mySqlDataReader["moduleName"].ToString(),
						"View.aspx?sortId=",
						mySqlDataReader["Id"].ToString(),
						"''>",
						mySqlDataReader["SortName"].ToString(),
						"</a>"
					}));
				}
				else
				{
					if (mySqlDataReader["sortType"].ToString() == "3")
					{
						this.sb.AppendLine(string.Concat(new string[]
						{
							"<li><a href='",
							mySqlDataReader["sortUrl"].ToString(),
							"'>",
							mySqlDataReader["SortName"].ToString(),
							"</a></li>"
						}));
						this.sb1.AppendLine(string.Concat(new string[]
						{
							"<a href='",
							mySqlDataReader["sortUrl"].ToString(),
							"'>",
							mySqlDataReader["SortName"].ToString(),
							"</a>"
						}));
					}
				}
			}
		}
		mySqlDataReader.Close();
		this.db.Dispose();
		this.webconfig = WebconfigInfo.Read(1);
		this.Page.Title = this.Page.Title.Replace("无标题页", "") + " - " + this.webconfig.Name;
	}
}
