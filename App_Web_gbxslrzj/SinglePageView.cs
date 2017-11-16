using System;
using System.Data.OleDb;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using MySql.Data.MySqlClient;
public class SinglePageView : Page, IRequiresSessionState
{
	public string sortName = "";
	public string sortId = "";
	public string moduleId = "";
	public string name = "";
	public string picture = "";
	public string content = "";
	public StringBuilder sb = new StringBuilder();
	private Database db = new Database();
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
		string sQL = "";
		if (base.Request["sortId"] != null)
		{
			sQL = "select B.sortName as sortName,B.moduleId as moduleId, A.* from chanpin as A,infoSort as B where A.sortId=B.id and A.sortId=" + int.Parse(base.Request["sortId"]);
		}
		if (base.Request["id"] != null)
		{
			sQL = "select B.sortName as sortName,B.moduleId as moduleId, A.* from chanpin as A,infoSort as B where A.sortId=B.id and A.Id=" + int.Parse(base.Request["Id"]);
		}
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader(sQL);
		if (mySqlDataReader.Read())
		{
			this.sortId = mySqlDataReader["id"].ToString();
			this.sortName = mySqlDataReader["sortName"].ToString();
			this.moduleId = mySqlDataReader["moduleId"].ToString();
			this.name = mySqlDataReader["name"].ToString();
			this.picture = mySqlDataReader["picture"].ToString();
			this.content = mySqlDataReader["content"].ToString();
		}
		mySqlDataReader.Close();
		this.Page.Title = this.name;
		if (this.moduleId.Length > 0)
		{
			MySqlDataReader mySqlDataReader2 = this.db.RunProcGetReader("select B.moduleTableName as moduleName, A.* from infosort as A,moduleList as B where A.moduleId=B.id and pid<>0 and A.moduleId=" + int.Parse(this.moduleId) + " order by A.sortOrder ");
			while (mySqlDataReader2.Read())
			{
				if (mySqlDataReader2["sortType"].ToString() == "1")
				{
					this.sb.AppendLine(string.Concat(new string[]
					{
						"<li><a href='",
						mySqlDataReader2["moduleName"].ToString(),
						"List.aspx?id=",
						mySqlDataReader2["Id"].ToString(),
						"'>",
						mySqlDataReader2["SortName"].ToString(),
						"</a></li>"
					}));
				}
				else
				{
					if (mySqlDataReader2["sortType"].ToString() == "2")
					{
						this.sb.AppendLine(string.Concat(new string[]
						{
							"<li><a href='",
							mySqlDataReader2["moduleName"].ToString(),
							"View.aspx?sortId=",
							mySqlDataReader2["Id"].ToString(),
							"''>",
							mySqlDataReader2["SortName"].ToString(),
							"</a></li>"
						}));
					}
					else
					{
						if (mySqlDataReader2["sortType"].ToString() == "3")
						{
							this.sb.AppendLine(string.Concat(new string[]
							{
								"<li><a href='",
								mySqlDataReader2["sortUrl"].ToString(),
								"'>",
								mySqlDataReader2["SortName"].ToString(),
								"</a></li>"
							}));
						}
					}
				}
			}
			mySqlDataReader2.Close();
		}
	}
}
