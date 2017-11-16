using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class TiXianInfo
{
	private int _id;
	private int _userId;
	private string _userName;
	private string _trueName;
	private string _bankType;
	private string _bankAccount;
	private string _zhiFuBaoName;
	private string _zhiFuBao;
	private int _money;
	private DateTime _addDate;
	private int _status;
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
	public string TrueName
	{
		get
		{
			return this._trueName;
		}
		set
		{
			this._trueName = value;
		}
	}
	public string BankType
	{
		get
		{
			return this._bankType;
		}
		set
		{
			this._bankType = value;
		}
	}
	public string BankAccount
	{
		get
		{
			return this._bankAccount;
		}
		set
		{
			this._bankAccount = value;
		}
	}
	public string ZhiFuBaoName
	{
		get
		{
			return this._zhiFuBaoName;
		}
		set
		{
			this._zhiFuBaoName = value;
		}
	}
	public string ZhiFuBao
	{
		get
		{
			return this._zhiFuBao;
		}
		set
		{
			this._zhiFuBao = value;
		}
	}
	public int Money
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
	public int Status
	{
		get
		{
			return this._status;
		}
		set
		{
			this._status = value;
		}
	}
	public TiXianInfo(int id, int userId, string userName, string trueName, string bankType, string bankAccount, string zhiFuBaoName, string zhiFuBao, int money, DateTime addDate, int status)
	{
		this._id = id;
		this._userId = userId;
		this._userName = userName;
		this._trueName = trueName;
		this._bankType = bankType;
		this._bankAccount = bankAccount;
		this._zhiFuBaoName = zhiFuBaoName;
		this._zhiFuBao = zhiFuBao;
		this._money = money;
		this._addDate = addDate;
		this._status = status;
	}
	public static TiXianInfo Read(int id)
	{
		TiXianInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from TiXian where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new TiXianInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), mySqlDataReader.GetValue(2).ToString(), mySqlDataReader.GetValue(3).ToString(), mySqlDataReader.GetValue(4).ToString(), mySqlDataReader.GetValue(5).ToString(), mySqlDataReader.GetValue(6).ToString(), mySqlDataReader.GetValue(7).ToString(), int.Parse(mySqlDataReader.GetValue(8).ToString()), DateTime.Parse(mySqlDataReader.GetValue(9).ToString()), int.Parse(mySqlDataReader.GetValue(10).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into TiXian(userId,userName,trueName,bankType,bankAccount,zhiFuBaoName,zhiFuBao,money,addDate,status) values(@userId,@userName,@trueName,@bankType,@bankAccount,@zhiFuBaoName,@zhiFuBao,@money,@addDate,@status)");
		mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@trueName", MySqlDbType.VarChar).Value = this.TrueName;
		mySqlCommand.Parameters.Add("@bankType", MySqlDbType.VarChar).Value = this.BankType;
		mySqlCommand.Parameters.Add("@bankAccount", MySqlDbType.VarChar).Value = this.BankAccount;
		mySqlCommand.Parameters.Add("@zhiFuBaoName", MySqlDbType.VarChar).Value = this.ZhiFuBaoName;
		mySqlCommand.Parameters.Add("@zhiFuBao", MySqlDbType.VarChar).Value = this.ZhiFuBao;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.Int16).Value = this.Money;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.Parameters.Add("@status", MySqlDbType.Int16).Value = this.Status;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from TiXian where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("update TiXian set userId=@userId,userName=@userName,trueName=@trueName,bankType=@bankType,bankAccount=@bankAccount,zhiFuBaoName=@zhiFuBaoName,zhiFuBao=@zhiFuBao,money=@money,addDate=@addDate,status=@status where id=" + this.Id);
		mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@trueName", MySqlDbType.VarChar).Value = this.TrueName;
		mySqlCommand.Parameters.Add("@bankType", MySqlDbType.VarChar).Value = this.BankType;
		mySqlCommand.Parameters.Add("@bankAccount", MySqlDbType.VarChar).Value = this.BankAccount;
		mySqlCommand.Parameters.Add("@zhiFuBaoName", MySqlDbType.VarChar).Value = this.ZhiFuBaoName;
		mySqlCommand.Parameters.Add("@zhiFuBao", MySqlDbType.VarChar).Value = this.ZhiFuBao;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.Int16).Value = this.Money;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.Parameters.Add("@status", MySqlDbType.Int16).Value = this.Status;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<TiXianInfo> ReadList(string whereStr)
	{
		List<TiXianInfo> list = new List<TiXianInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from TiXian " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(TiXianInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
