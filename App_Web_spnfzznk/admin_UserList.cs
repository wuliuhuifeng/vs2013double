using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class admin_UserList : Page, IRequiresSessionState
{
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
        this.gridview1.DataSource = this.db.RunProcGetDataView("select B.name as setMealName,B.point as dan,  A.* from Member as A,setMeal as B where A.setMealId=B.id and status=0 order by A.id");
		this.gridview1.DataKeyNames = new string[]
		{
			"id"
		};
		this.gridview1.DataBind();
	}
	protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
	{
		DateTime now = DateTime.Now;
		MemberInfo memberInfo = MemberInfo.Read((int)this.gridview1.DataKeys[e.RowIndex].Value);
		SetMealInfo setMealInfo = SetMealInfo.Read(memberInfo.SetMealId);
		IList<MemberInfo> list = MemberInfo.ReadList("where username='" + Utility.SQLString(memberInfo.AgencyName) + "'");
		if (list.Count == 1)
		{
			if (list[0].Money < setMealInfo.Money)
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('推荐人注册积分不足，无法审核！');", true);
				return;
			}
			SetMealInfo setMealInfo2 = SetMealInfo.Read(list[0].SetMealId);
			list[0].Money = list[0].Money - setMealInfo.Money;
			list[0].Update();
			CaiwuInfo caiwuInfo = new CaiwuInfo(0, this.Session["user"].ToString(), list[0].Id, list[0].UserName, -setMealInfo.Money, list[0].Money, "审核会员" + memberInfo.UserName, now);
			caiwuInfo.Insert();
			ProductOrderInfo productOrderInfo = new ProductOrderInfo(0, 1, memberInfo.Id, memberInfo.UserName, setMealInfo.Name, "", setMealInfo.Money, "", DateTime.Now, 0);
			productOrderInfo.Insert();
			memberInfo.Status = 1;
			memberInfo.Update();
			this.BindData();
			JiangJinInfo jiangJinInfo = new JiangJinInfo(0, list[0].Id, list[0].UserName, memberInfo.Id, memberInfo.UserName, 0.0, setMealInfo.Money * setMealInfo2.ServiceAward * 0.01, "服务津贴", setMealInfo.Money * setMealInfo2.ServiceAward * 0.01, now);
			jiangJinInfo.Insert();
			MemberInfo memberInfo2 = memberInfo;
			string[] array = memberInfo.UserPath.Split(new char[]
			{
				','
			});
			for (int i = array.Length - 1; i >= 0; i--)
			{
				MemberInfo memberInfo3 = MemberInfo.Read(int.Parse(array[i]));
				int num = (memberInfo3.ZuoQu >= memberInfo3.YouQu) ? memberInfo3.YouQu : memberInfo3.ZuoQu;
				if (memberInfo2.FenZhi == 1)
				{
					DuiPengInfo duiPengInfo = new DuiPengInfo(0, memberInfo3.Id, memberInfo3.UserName, memberInfo.Id, memberInfo.UserName, setMealInfo.Point, 0, now);
					duiPengInfo.Insert();
					memberInfo3.ZuoQu += setMealInfo.Point;
					memberInfo3.Update();
				}
				else
				{
					if (memberInfo2.FenZhi == 2)
					{
						DuiPengInfo duiPengInfo2 = new DuiPengInfo(0, memberInfo3.Id, memberInfo3.UserName, memberInfo.Id, memberInfo.UserName, 0, setMealInfo.Point, now);
						duiPengInfo2.Insert();
						memberInfo3.YouQu += setMealInfo.Point;
						memberInfo3.Update();
					}
				}
				int num2 = (memberInfo3.ZuoQu >= memberInfo3.YouQu) ? memberInfo3.YouQu : memberInfo3.ZuoQu;
				if (num != num2)
				{
					SetMealInfo setMealInfo3 = SetMealInfo.Read(memberInfo3.SetMealId);
					JiangJinInfo jiangJinInfo2 = new JiangJinInfo(0, memberInfo3.Id, memberInfo3.UserName, memberInfo.Id, memberInfo.UserName, (double)(num2 - num) * setMealInfo3.TouchAward, 0.0, "对碰奖", (double)(num2 - num) * setMealInfo3.TouchAward, now);
					jiangJinInfo2.Insert();
				}
				memberInfo2 = MemberInfo.Read(int.Parse(array[i]));
			}
		}
	}
	protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
	{
		List<MemberInfo> list = MemberInfo.ReadList("where status=0 and id=" + (int)this.gridview1.DataKeys[e.RowIndex].Value);
		if (list.Count == 1)
		{
			string userPath = list[0].UserPath;
			int num = 0;
			List<MemberInfo> list2 = MemberInfo.ReadList("where username='" + list[0].GuanLiRen + "'");
			if (list2.Count == 1)
			{
				num = list2[0].FenZhi;
			}
			List<MemberInfo> list3 = MemberInfo.ReadList("where guanliRen='" + list[0].UserName + "'");
			if (list3.Count == 1 && num != 0)
			{
				list3[0].GuanLiRen = list[0].GuanLiRen;
				list3[0].FenZhi = num;
				list3[0].UserPath = list[0].UserPath;
				list3[0].Update();
			}
			List<MemberInfo> list4 = MemberInfo.ReadList("where userpath like '" + userPath + "%'");
			for (int i = 0; i < list4.Count; i++)
			{
				list4[i].UserPath = list4[i].UserPath.Replace(list[0].Id + ",", "");
				list4[i].Update();
			}
			MemberInfo.Delete(list[0].Id);
			base.Response.Redirect("UserListA.aspx");
			return;
		}
		this.Page.ClientScript.RegisterStartupScript(base.GetType(), "none", "alert('您没有权限删除此用户！');", true);
	}
}
