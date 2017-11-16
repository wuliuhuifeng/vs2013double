using System;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_searchjj : Page, IRequiresSessionState
{
    
    protected TextBox tb_username;
    protected Button search;
    protected GridView gridview1;
    protected HtmlForm form1;
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
                  if (this.Session["userId"] != null)
            {
               this.BindData();
                return;
            }
            base.Response.Redirect("login.aspx");
        }
    }
    public void BindData()
    {

        {
           
            int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
            this.pager.CurrentPage = currentPage;
            this.pager.PageSize = 15;
            int recordConnt = 0;

            this.gridview1.DataSource = this.db.RunProcGetDataView("select B.name as setMealName,B.point as Point, A.* from Member as A,setMeal as B where A.ID=" + this.Session["userId"] + " and A.setMealId=B.id and A.status=1 order by A.id desc", (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
            this.gridview1.DataKeyNames = new string[]

			{
				"id"
			};
            this.gridview1.DataBind();
            this.pager.UrlFormat = "?page={0}";
            this.pager.NumberButton = 10;
            this.pager.RecordConnt = recordConnt;
        }
    }
    protected void search_Click(object sender, EventArgs e)
    {
        this.BindData();
    }
}
