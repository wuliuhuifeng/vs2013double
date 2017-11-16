using System;
using System.Data.OleDb;
using System.Text;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public class admin_NetworkList : Page, IRequiresSessionState
{
	protected HtmlInputText username;
	protected Button search;
	protected HtmlForm form1;
	private Database db = new Database();
	private StringBuilder sb = new StringBuilder();
	public string aName = "";
	public string b1Name = "";
	public string b2Name = "";
	public string c1Name = "";
	public string c2Name = "";
	public string c3Name = "";
	public string c4Name = "";
	public string d1Name = "";
	public string d2Name = "";
	public string d3Name = "";
	public string d4Name = "";
	public string d5Name = "";
	public string d6Name = "";
	public string d7Name = "";
	public string d8Name = "";
	public string a = "";
	public string b1 = "";
	public string b2 = "";
	public string c1 = "";
	public string c2 = "";
	public string c3 = "";
	public string c4 = "";
	public string d1 = "";
	public string d2 = "";
	public string d3 = "";
	public string d4 = "";
	public string d5 = "";
	public string d6 = "";
	public string d7 = "";
	public string d8 = "";
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
		this.db.Dispose();
		string sQL;
		if (base.Request["id"] != null && base.Request["id"].Trim().Length > 0)
		{
			sQL = "select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.id=" + int.Parse(base.Request.QueryString["id"]);
		}
		else
		{
			if (this.username.Value.Trim().Length > 0)
			{
				sQL = "select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.username='" + Utility.SQLString(base.Request["username"].Trim()) + "'";
				MySqlDataReader mySqlDataReader = this.db.RunProcGetReader(sQL);
                if (mySqlDataReader.Read())
				{
					bool flag = false;
                    string[] array = mySqlDataReader["userPath"].ToString().Split(new char[]
					{
						','
					});
					for (int i = 0; i < array.Length; i++)
					{
						if (array[i] == this.Session["userId"].ToString())
						{
							flag = true;
						}
					}
					if (!flag)
					{
						this.Page.ClientScript.RegisterStartupScript(base.GetType(), "none", "alert('此用户不是您的下线，不能查看！');location.href='NetworkList.aspx';", true);
						return;
					}
				}
				else
				{
					this.Page.ClientScript.RegisterStartupScript(base.GetType(), "none", "alert('无此用户！');location.href='NetworkList.aspx';", true);
				}
                mySqlDataReader.Close();
			}
			else
			{
				sQL = "select B.name as setMealName,A.* from Member as A,setMeal as B where A.setMealId=B.id and A.id=" + int.Parse(this.Session["userId"].ToString());
			}
		}
		MySqlDataReader mySqlDataReader2 = this.db.RunProcGetReader(sQL);
        if (mySqlDataReader2.Read())
		{
            this.a = this.GetTreeTd(mySqlDataReader2["id"].ToString(), mySqlDataReader2["username"].ToString(), mySqlDataReader2["zuoqu"].ToString(), mySqlDataReader2["setMealName"].ToString(), mySqlDataReader2["youqu"].ToString(), 1, int.Parse(mySqlDataReader2["status"].ToString()));
            this.aName = mySqlDataReader2["username"].ToString();
		}
        mySqlDataReader2.Close();
		if (this.aName.Trim().Length > 0)
		{
            MySqlDataReader mySqlDataReader3 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.aName + "' and A.fenzhi=1");
            if (mySqlDataReader3.Read())
			{
                this.b1 = this.GetTreeTd(mySqlDataReader3["id"].ToString(), mySqlDataReader3["username"].ToString(), mySqlDataReader3["zuoqu"].ToString(), mySqlDataReader3["setMealName"].ToString(), mySqlDataReader3["youqu"].ToString(), 1, int.Parse(mySqlDataReader3["status"].ToString()));
                this.b1Name = mySqlDataReader3["username"].ToString();
			}
			else
			{
				this.b1 = this.GetTreeTd("", this.aName, "", "", "", 1, 0);
			}
            mySqlDataReader3.Close();
		}
		else
		{
			this.b1 = this.GetTreeTd("", "", this.aName, "", "", 1, 0);
		}
		if (this.aName.Trim().Length > 0)
		{
            MySqlDataReader mySqlDataReader4 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.aName + "' and A.fenzhi=2");
			if (mySqlDataReader4.Read())
			{
				this.b2 = this.GetTreeTd(mySqlDataReader4["id"].ToString(), mySqlDataReader4["username"].ToString(), mySqlDataReader4["zuoqu"].ToString(), mySqlDataReader4["setMealName"].ToString(), mySqlDataReader4["youqu"].ToString(), 2, int.Parse(mySqlDataReader4["status"].ToString()));
				this.b2Name = mySqlDataReader4["username"].ToString();
			}
			else
			{
				this.b2 = this.GetTreeTd("", this.aName, "", "", "", 2, 0);
			}
			mySqlDataReader4.Close();
		}
		else
		{
			this.b2 = this.GetTreeTd("", "", "", "", "", 1, 0);
		}
		if (this.b1Name.Trim().Length > 0)
		{
            MySqlDataReader mySqlDataReader5 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.b1Name + "' and A.fenzhi=1");
			if (mySqlDataReader5.Read())
			{
				this.c1 = this.GetTreeTd(mySqlDataReader5["id"].ToString(), mySqlDataReader5["username"].ToString(), mySqlDataReader5["zuoqu"].ToString(), mySqlDataReader5["setMealName"].ToString(), mySqlDataReader5["youqu"].ToString(), 1, int.Parse(mySqlDataReader5["status"].ToString()));
				this.c1Name = mySqlDataReader5["username"].ToString();
			}
			else
			{
				this.c1 = this.GetTreeTd("", this.b1Name, "", "", "", 1, 0);
			}
			mySqlDataReader5.Close();
		}
		else
		{
			this.c1 = this.GetTreeTd("", this.b1Name, "", "", "", 1, 0);
		}
		if (this.b1Name.Trim().Length > 0)
		{
            MySqlDataReader mySqlDataReader6 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.b1Name + "' and A.fenzhi=2");
			if (mySqlDataReader6.Read())
			{
				this.c2 = this.GetTreeTd(mySqlDataReader6["id"].ToString(), mySqlDataReader6["username"].ToString(), mySqlDataReader6["zuoqu"].ToString(), mySqlDataReader6["setMealName"].ToString(), mySqlDataReader6["youqu"].ToString(), 1, int.Parse(mySqlDataReader6["status"].ToString()));
				this.c2Name = mySqlDataReader6["username"].ToString();
			}
			else
			{
				this.c2 = this.GetTreeTd("", this.b1Name, "", "", "", 2, 0);
			}
			mySqlDataReader6.Close();
		}
		else
		{
			this.c2 = this.GetTreeTd("", this.b1Name, "", "", "", 2, 0);
		}
		if (this.b2Name.Trim().Length > 0)
		{
            MySqlDataReader mySqlDataReader7 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.b2Name + "' and A.fenzhi=1");
			if (mySqlDataReader7.Read())
			{
				this.c3 = this.GetTreeTd(mySqlDataReader7["id"].ToString(), mySqlDataReader7["username"].ToString(), mySqlDataReader7["zuoqu"].ToString(), mySqlDataReader7["setMealName"].ToString(), mySqlDataReader7["youqu"].ToString(), 1, int.Parse(mySqlDataReader7["status"].ToString()));
				this.c3Name = mySqlDataReader7["username"].ToString();
			}
			else
			{
				this.c3 = this.GetTreeTd("", this.b2Name, "", "", "", 1, 0);
			}
			mySqlDataReader7.Close();
		}
		else
		{
			this.c3 = this.GetTreeTd("", this.b2Name, "", "", "", 1, 0);
		}
		if (this.b2Name.Trim().Length > 0)
		{
            MySqlDataReader mySqlDataReader8 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.b2Name + "' and A.fenzhi=2");
			if (mySqlDataReader8.Read())
			{
				this.c4 = this.GetTreeTd(mySqlDataReader8["id"].ToString(), mySqlDataReader8["username"].ToString(), mySqlDataReader8["zuoqu"].ToString(), mySqlDataReader8["setMealName"].ToString(), mySqlDataReader8["youqu"].ToString(), 1, int.Parse(mySqlDataReader8["status"].ToString()));
				this.c4Name = mySqlDataReader8["username"].ToString();
			}
			else
			{
				this.c4 = this.GetTreeTd("", this.b2Name, "", "", "", 2, 0);
			}
			mySqlDataReader8.Close();
		}
		else
		{
			this.c4 = this.GetTreeTd("", this.b2Name, "", "", "", 2, 0);
		}
		if (this.c1Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader9 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c1Name + "' and A.fenzhi=1");
			if (mySqlDataReader9.Read())
			{
				this.d1 = this.GetTreeTd(mySqlDataReader9["id"].ToString(), mySqlDataReader9["username"].ToString(), mySqlDataReader9["zuoqu"].ToString(), mySqlDataReader9["setMealName"].ToString(), mySqlDataReader9["youqu"].ToString(), 1, int.Parse(mySqlDataReader9["status"].ToString()));
				this.d1Name = mySqlDataReader9["username"].ToString();
			}
			else
			{
				this.d1 = this.GetTreeTd("", this.c1Name, "", "", "", 1, 0);
			}
			mySqlDataReader9.Close();
		}
		else
		{
			this.d1 = this.GetTreeTd("", this.c1Name, "", "", "", 1, 0);
		}
		if (this.c1Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader10 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c1Name + "' and A.fenzhi=2");
			if (mySqlDataReader10.Read())
			{
				this.d2 = this.GetTreeTd(mySqlDataReader10["id"].ToString(), mySqlDataReader10["username"].ToString(), mySqlDataReader10["zuoqu"].ToString(), mySqlDataReader10["setMealName"].ToString(), mySqlDataReader10["youqu"].ToString(), 1, int.Parse(mySqlDataReader10["status"].ToString()));
				this.d2Name = mySqlDataReader10["username"].ToString();
			}
			else
			{
				this.d2 = this.GetTreeTd("", this.c1Name, "", "", "", 2, 0);
			}
			mySqlDataReader10.Close();
		}
		else
		{
			this.d2 = this.GetTreeTd("", this.c1Name, "", "", "", 2, 0);
		}
		if (this.c2Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader11 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c2Name + "' and A.fenzhi=1");
			if (mySqlDataReader11.Read())
			{
				this.d3 = this.GetTreeTd(mySqlDataReader11["id"].ToString(), mySqlDataReader11["username"].ToString(), mySqlDataReader11["zuoqu"].ToString(), mySqlDataReader11["setMealName"].ToString(), mySqlDataReader11["youqu"].ToString(), 1, int.Parse(mySqlDataReader11["status"].ToString()));
				this.d3Name = mySqlDataReader11["username"].ToString();
			}
			else
			{
				this.d3 = this.GetTreeTd("", this.c2Name, "", "", "", 1, 0);
			}
			mySqlDataReader11.Close();
		}
		else
		{
			this.d3 = this.GetTreeTd("", this.c2Name, "", "", "", 1, 0);
		}
		if (this.c2Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader12 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c2Name + "' and A.fenzhi=2");
			if (mySqlDataReader12.Read())
			{
				this.d4 = this.GetTreeTd(mySqlDataReader12["id"].ToString(), mySqlDataReader12["username"].ToString(), mySqlDataReader12["zuoqu"].ToString(), mySqlDataReader12["setMealName"].ToString(), mySqlDataReader12["youqu"].ToString(), 1, int.Parse(mySqlDataReader12["status"].ToString()));
				this.d4Name = mySqlDataReader12["username"].ToString();
			}
			else
			{
				this.d4 = this.GetTreeTd("", this.c2Name, "", "", "", 2, 0);
			}
			mySqlDataReader12.Close();
		}
		else
		{
			this.d4 = this.GetTreeTd("", this.c2Name, "", "", "", 2, 0);
		}
		if (this.c3Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader13 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c3Name + "' and A.fenzhi=1");
			if (mySqlDataReader13.Read())
			{
				this.d5 = this.GetTreeTd(mySqlDataReader13["id"].ToString(), mySqlDataReader13["username"].ToString(), mySqlDataReader13["zuoqu"].ToString(), mySqlDataReader13["setMealName"].ToString(), mySqlDataReader13["youqu"].ToString(), 1, int.Parse(mySqlDataReader13["status"].ToString()));
				this.d5Name = mySqlDataReader13["username"].ToString();
			}
			else
			{
				this.d5 = this.GetTreeTd("", this.c3Name, "", "", "", 1, 0);
			}
			mySqlDataReader13.Close();
		}
		else
		{
			this.d5 = this.GetTreeTd("", this.c3Name, "", "", "", 1, 0);
		}
		if (this.c3Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader14 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c3Name + "' and A.fenzhi=2");
			if (mySqlDataReader14.Read())
			{
				this.d6 = this.GetTreeTd(mySqlDataReader14["id"].ToString(), mySqlDataReader14["username"].ToString(), mySqlDataReader14["zuoqu"].ToString(), mySqlDataReader14["setMealName"].ToString(), mySqlDataReader14["youqu"].ToString(), 1, int.Parse(mySqlDataReader14["status"].ToString()));
				this.d6Name = mySqlDataReader14["username"].ToString();
			}
			else
			{
				this.d6 = this.GetTreeTd("", this.c3Name, "", "", "", 2, 0);
			}
			mySqlDataReader14.Close();
		}
		else
		{
			this.d6 = this.GetTreeTd("", this.c3Name, "", "", "", 2, 0);
		}
		if (this.c4Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader15 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c4Name + "' and A.fenzhi=1");
			if (mySqlDataReader15.Read())
			{
				this.d7 = this.GetTreeTd(mySqlDataReader15["id"].ToString(), mySqlDataReader15["username"].ToString(), mySqlDataReader15["zuoqu"].ToString(), mySqlDataReader15["setMealName"].ToString(), mySqlDataReader15["youqu"].ToString(), 1, int.Parse(mySqlDataReader15["status"].ToString()));
				this.d7Name = mySqlDataReader15["username"].ToString();
			}
			else
			{
				this.d7 = this.GetTreeTd("", this.c4Name, "", "", "", 1, 0);
			}
			mySqlDataReader15.Close();
		}
		else
		{
			this.d7 = this.GetTreeTd("", this.c4Name, "", "", "", 1, 0);
		}
		if (this.c4Name.Trim().Length > 0)
		{
			MySqlDataReader mySqlDataReader16 = this.db.RunProcGetReader("select B.name as setMealName, A.* from Member as A,setMeal as B where A.setMealId=B.id and A.guanLiRen='" + this.c4Name + "' and A.fenzhi=2");
			if (mySqlDataReader16.Read())
			{
				this.d8 = this.GetTreeTd(mySqlDataReader16["id"].ToString(), mySqlDataReader16["username"].ToString(), mySqlDataReader16["zuoqu"].ToString(), mySqlDataReader16["setMealName"].ToString(), mySqlDataReader16["youqu"].ToString(), 1, int.Parse(mySqlDataReader16["status"].ToString()));
				this.d8Name = mySqlDataReader16["username"].ToString();
			}
			else
			{
				this.d8 = this.GetTreeTd("", this.c4Name, "", "", "", 2, 0);
			}
			mySqlDataReader16.Close();
		}
		else
		{
			this.d8 = this.GetTreeTd("", this.c4Name, "", "", "", 2, 0);
		}
		this.db.Dispose();
	}
	public string GetTreeTd(string userId, string userName, string zuoqu, string setMeal, string youqu, int fenzhi, int status)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (userId.Trim().Length > 0)
		{
			stringBuilder.AppendLine("<table width='95' height='52' border='0' cellpadding='0' cellspacing='0' class='table3'>");
			stringBuilder.AppendLine("<tr height='26'>");
			stringBuilder.AppendLine(string.Concat(new string[]
			{
				"<td colspan='3' align='center' class='td3' bgcolor='",
				(status == 0) ? "#ff9ac1" : "#74C99C",
				"'>&nbsp;<a href='?id=",
				userId,
				"'>",
				userName,
				"</a>&nbsp;</td>"
			}));
			stringBuilder.AppendLine("</tr>");
			stringBuilder.AppendLine("<tr height='26'>");
			stringBuilder.AppendLine("<td align='center' class='td3' >" + zuoqu + "</td>");
			stringBuilder.AppendLine("<td align='center' class='td3' >" + setMeal + "</td>");
			stringBuilder.AppendLine("<td align='center' class='td3' >" + youqu + "</td>");
			stringBuilder.AppendLine("</tr>");
			stringBuilder.AppendLine("</table>");
		}
		else
		{
			stringBuilder.AppendLine("<table width='95' height='52' border='0' cellpadding='0' cellspacing='0' class='table3'>");
			stringBuilder.AppendLine("<tr height='26'>");
			stringBuilder.AppendLine(string.Concat(new object[]
			{
				"<td colspan='3' align='center' class='td3' bgcolor='#F2EFC1'>&nbsp;<a href='UserEdit.aspx?guanli=",
				base.Server.UrlEncode(userName),
				"&fenzhi=",
				fenzhi,
				"'>申请套餐</a>&nbsp;</td>"
			}));
			stringBuilder.AppendLine("</tr>");
			stringBuilder.AppendLine("<tr height='26'>");
			stringBuilder.AppendLine("<td align='center' class='td3' colspan=3>套餐待定</td>");
			stringBuilder.AppendLine("</tr>");
			stringBuilder.AppendLine("</table>");
		}
		return stringBuilder.ToString();
	}
	protected void search_Click(object sender, EventArgs e)
	{
		this.BindData();
	}
}
