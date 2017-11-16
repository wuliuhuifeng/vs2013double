using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Profile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
public class User_UserList : Page, IRequiresSessionState
{
	protected Repeater repeater1;
	protected HtmlForm from1;
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
			if (this.Session["userId"] != null)
			{
				if (this.Session["password"] != null)
				{
					this.BindData();
					return;
				}
				base.Response.Write("<script>location.href='Password.aspx?url=" + base.Request.Url.AbsolutePath.ToString() + "';</script>");
				return;
			}
			else
			{
				base.Response.Redirect("login.aspx");
			}
		}
	}
	public void BindData()
	{
		this.repeater1.DataSource = this.db.RunProcGetDataView("select B.Name as setMealName,A.* from Member as A,setMeal as B where A.setMealId=B.id and A.agencyName='" + this.Session["user"].ToString() + "' and A.status=0 order by A.id");
		this.repeater1.DataBind();
		if (base.Request["action"] != null && base.Request["action"] == "check")
		{
			List<MemberInfo> list = MemberInfo.ReadList(string.Concat(new object[]
			{
				"where status=0 and id=",
				int.Parse(base.Request.QueryString["id"]),
				" and agencyName='",
				this.Session["user"].ToString(),
				"'"
			}));
			if (list.Count == 1)
			{
				DateTime now = DateTime.Now;
				MemberInfo memberInfo = MemberInfo.Read(int.Parse(base.Request.QueryString["id"]));
				SetMealInfo setMealInfo = SetMealInfo.Read(memberInfo.SetMealId);
				IList<MemberInfo> list2 = MemberInfo.ReadList("where username='" + Utility.SQLString(memberInfo.AgencyName) + "'");
				if (list2.Count == 1)
				{
					if (list2[0].Money < setMealInfo.Money)
					{
						this.Page.ClientScript.RegisterStartupScript(base.GetType(), "Ok", "alert('您的电子货币余额不足，不能通过审核！请充值后再审核');", true);
						return;
					}
					SetMealInfo setMealInfo2 = SetMealInfo.Read(list2[0].SetMealId);
					list2[0].Money = list2[0].Money - setMealInfo.Money;
					list2[0].Update();
					CaiwuInfo caiwuInfo = new CaiwuInfo(0, this.Session["user"].ToString(), list2[0].Id, list2[0].UserName, -setMealInfo.Money, list2[0].Money, "审核会员" + memberInfo.UserName, now);
					caiwuInfo.Insert();
					ProductOrderInfo productOrderInfo = new ProductOrderInfo(0, 1, memberInfo.Id, memberInfo.UserName, setMealInfo.Name, "", setMealInfo.Money, "", DateTime.Now, 0);
					productOrderInfo.Insert();
					memberInfo.Status = 1;
					memberInfo.Update();
					this.BindData();
					JiangJinInfo jiangJinInfo = new JiangJinInfo(0, list2[0].Id, list2[0].UserName, memberInfo.Id, memberInfo.UserName, 0.0, setMealInfo.Money * setMealInfo2.ServiceAward * 0.01, "服务津贴", setMealInfo.Money * setMealInfo2.ServiceAward * 0.01, now);
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
				base.Response.Redirect("UserList.aspx");
			}
			else
			{
				this.Page.ClientScript.RegisterStartupScript(base.GetType(), "none", "alert('您没有权限审核此用户！');", true);
				base.Response.Redirect("UserList.aspx");
			}
			base.Response.Redirect("UserList.aspx");
		}
		if (base.Request["action"] != null && base.Request["action"] == "delete")
		{
			List<MemberInfo> list3 = MemberInfo.ReadList(string.Concat(new object[]
			{
				"where status=0 and id=",
				int.Parse(base.Request.QueryString["id"]),
				" and agencyName='",
				this.Session["user"],
				"'"
			}));
			if (list3.Count == 1)
			{
				string userPath = list3[0].UserPath;
				int num3 = 0;
				List<MemberInfo> list4 = MemberInfo.ReadList("where username='" + list3[0].GuanLiRen + "'");
				if (list4.Count == 1)
				{
					num3 = list4[0].FenZhi;
				}
				List<MemberInfo> list5 = MemberInfo.ReadList("where guanliRen='" + list3[0].UserName + "'");
				if (list5.Count == 1 && num3 != 0)
				{
					list5[0].GuanLiRen = list3[0].GuanLiRen;
					list5[0].FenZhi = num3;
					list5[0].UserPath = list3[0].UserPath;
					list5[0].Update();
				}
				List<MemberInfo> list6 = MemberInfo.ReadList("where userpath like '" + userPath + "%'");
				for (int j = 0; j < list6.Count; j++)
				{
					list6[j].UserPath = list6[j].UserPath.Replace(list3[0].Id + ",", "");
					list6[j].Update();
				}
				MemberInfo.Delete(list3[0].Id);
				base.Response.Redirect("UserList.aspx");
				return;
			}
			this.Page.ClientScript.RegisterStartupScript(base.GetType(), "none", "alert('您没有权限删除此用户！');", true);
		}
	}
}
