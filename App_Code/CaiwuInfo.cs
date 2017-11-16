using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class CaiwuInfo
{
	private int _id;
	private string _oper;
	private int _userId;
	private string _userName;
	private double _money;
	private double _yuE;
	private string _remark;
	private DateTime _addDate;
	public int Id
	{
		get
		{
			return this._id;
		}
		set
		{
			this._id = value;
		}
	}
	public string Oper
	{
		get
		{
			return this._oper;
		}
		set
		{
			this._oper = value;
		}
	}
	public int UserId
	{
		get
		{
			return this._userId;
		}
		set
		{
			this._userId = value;
		}
	}
	public string UserName
	{
		get
		{
			return this._userName;
		}
		set
		{
			this._userName = value;
		}
	}
	public double Money
	{
		get
		{
			return this._money;
		}
		set
		{
			this._money = value;
		}
	}
	public double YuE
	{
		get
		{
			return this._yuE;
		}
		set
		{
			this._yuE = value;
		}
	}
	public string Remark
	{
		get
		{
			return this._remark;
		}
		set
		{
			this._remark = value;
		}
	}
	public DateTime AddDate
	{
		get
		{
			return this._addDate;
		}
		set
		{
			this._addDate = value;
		}
	}
	public CaiwuInfo(int id, string oper, int userId, string userName, double money, double yuE, string remark, DateTime addDate)
	{
        //
		this._id = id;
		this._oper = oper;
		this._userId = userId;
		this._userName = userName;
		this._money = money;
		this._yuE = yuE;
		this._remark = remark;
		this._addDate = addDate;
	}
	public static CaiwuInfo Read(int id)
	{
		CaiwuInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from Caiwu where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new CaiwuInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), int.Parse(mySqlDataReader.GetValue(2).ToString()), mySqlDataReader.GetValue(3).ToString(), double.Parse(mySqlDataReader.GetValue(4).ToString()), double.Parse(mySqlDataReader.GetValue(5).ToString()), mySqlDataReader.GetValue(6).ToString(), DateTime.Parse(mySqlDataReader.GetValue(7).ToString()));
              
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into Caiwu(oper,userId,userName,money,yuE,remark,addDate) values(@oper,@userId,@userName,@money,@yuE,@remark,@addDate)");
        mySqlCommand.Parameters.Add("@oper", MySqlDbType.VarChar).Value = this.Oper;
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
        mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
        mySqlCommand.Parameters.Add("@yuE", MySqlDbType.VarChar).Value = this.YuE;
        mySqlCommand.Parameters.Add("@remark", MySqlDbType.VarChar).Value = this.Remark;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from Caiwu where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("update Caiwu set oper=@oper,userId=@userId,userName=@userName,money=@money,yuE=@yuE,remark=@remark,addDate=@addDate where id=" + this.Id);
        mySqlCommand.Parameters.Add("@oper", MySqlDbType.VarChar).Value = this.Oper;
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
        mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
        mySqlCommand.Parameters.Add("@yuE", MySqlDbType.VarChar).Value = this.YuE;
        mySqlCommand.Parameters.Add("@remark", MySqlDbType.VarChar).Value = this.Remark;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<CaiwuInfo> ReadList(string whereStr)
	{
		List<CaiwuInfo> list = new List<CaiwuInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from Caiwu " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(CaiwuInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
