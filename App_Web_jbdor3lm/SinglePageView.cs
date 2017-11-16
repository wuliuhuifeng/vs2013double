using System;
using System.Data.OleDb;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class SinglePageView : Page, IRequiresSessionState
{
	protected DataList datalist1;
	public string sortName = "";
	public string sortId = "";
	public string moduleId = "";
	public string articleTitle = "";
	public string content = "";
	public StringBuilder sb = new StringBuilder();
	private Database db = new Database();
	public Pager pager = new Pager();
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
		int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
		this.pager.CurrentPage = currentPage;
		this.pager.PageSize = 15;
		int recordConnt = 0;
		this.datalist1.DataSource = this.db.RunProcGetDataView(string.Concat(new object[]
		{
			"select * from chanpin where sortId=",
			int.Parse(base.Request["id"]),
			" or sortId in(select id from infoSort where pid=",
			int.Parse(base.Request["id"]),
			") order by id desc"
		}), (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
		this.datalist1.DataBind();
		this.pager.UrlFormat = "?page={0}&id=" + base.Request["id"];
		this.pager.NumberButton = 10;
		this.pager.RecordConnt = recordConnt;
		InfoSortInfo infoSortInfo = InfoSortInfo.Read(int.Parse(base.Request["id"]));
		this.Page.Title = infoSortInfo.SortName;
		MySqlDataReader mySqlDataReader = this.db.RunProcGetReader("select B.moduleTableName as moduleName, A.* from infosort as A,moduleList as B where A.moduleId=B.id and pid<>0 and A.moduleId=14 order by A.sortOrder ");
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
					}
				}
			}
		}
		mySqlDataReader.Close();
	}
}
