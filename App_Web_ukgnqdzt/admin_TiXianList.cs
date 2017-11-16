using System;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_TiXianList : Page, IRequiresSessionState
{
    protected TextBox tb_AddDateBegin;
    protected TextBox tb_AddDateEnd;
    protected RadioButtonList rbl_select;
    protected Button bt_search;
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
            if (this.Session["adminId"] != null)
            {
                this.BindData();
                return;
            }
            base.Response.Redirect("login.aspx");
        }
    }
    public void BindData()
    {
        int currentPage = (base.Request["page"] != null && base.Request["page"] != "") ? int.Parse(base.Request["page"]) : 1;
        this.pager.CurrentPage = currentPage;
        this.pager.PageSize = 15;
        int recordConnt = 0;
        StringBuilder  sql = new StringBuilder();
        sql.Append("select * from tixian where 1=1");
        if (this.tb_AddDateBegin.Text.Length > 0)
        {
            sql.Append( string.Format(" and adddate>='{0}'", this.tb_AddDateBegin.Text));
        }
        if (this.tb_AddDateEnd.Text.Length > 0)
        {
            sql.Append(string.Format(" and adddate<='{0}'", this.tb_AddDateEnd.Text));
        }
        sql.Append(" order by id desc");
        this.gridview1.DataSource = this.db.RunProcGetDataView(sql.ToString(), (this.pager.CurrentPage - 1) * this.pager.PageSize, this.pager.PageSize, out recordConnt);
        this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
        this.gridview1.DataBind();
        this.pager.UrlFormat = "?page={0}";
        this.pager.NumberButton = 10;
        this.pager.RecordConnt = recordConnt;
    }

    protected void bt_search_Click(object sender, EventArgs e)
    {
        this.BindData();
    }
}
