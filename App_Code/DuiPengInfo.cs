using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class DuiPengInfo
{
	private int _id;
	private int _userId;
	private string _userName;
	private int _fromId;
	private string _fromName;
	private int _pengZuo;
	private int _pengYou;
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
	public int FromId
	{
		get
		{
			return this._fromId;
		}
		set
		{
			this._fromId = value;
		}
	}
	public string FromName
	{
		get
		{
			return this._fromName;
		}
		set
		{
			this._fromName = value;
		}
	}
	public int PengZuo
	{
		get
		{
			return this._pengZuo;
		}
		set
		{
			this._pengZuo = value;
		}
	}
	public int PengYou
	{
		get
		{
			return this._pengYou;
		}
		set
		{
			this._pengYou = value;
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
	public DuiPengInfo(int id, int userId, string userName, int fromId, string fromName, int pengZuo, int pengYou, DateTime addDate)
	{
		this._id = id;
		this._userId = userId;
		this._userName = userName;
		this._fromId = fromId;
		this._fromName = fromName;
		this._pengZuo = pengZuo;
		this._pengYou = pengYou;
		this._addDate = addDate;
	}
	public static DuiPengInfo Read(int id)
	{
		DuiPengInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from DuiPeng where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new DuiPengInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), mySqlDataReader.GetValue(2).ToString(), int.Parse(mySqlDataReader.GetValue(3).ToString()), mySqlDataReader.GetValue(4).ToString(), int.Parse(mySqlDataReader.GetValue(5).ToString()), int.Parse(mySqlDataReader.GetValue(6).ToString()), DateTime.Parse(mySqlDataReader.GetValue(7).ToString()));
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into DuiPeng(userId,userName,fromId,fromName,pengZuo,pengYou,addDate) values(@userId,@userName,@fromId,@fromName,@pengZuo,@pengYou,@addDate)");
		mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@fromId", MySqlDbType.Int16).Value = this.FromId;
		mySqlCommand.Parameters.Add("@fromName", MySqlDbType.VarChar).Value = this.FromName;
        mySqlCommand.Parameters.Add("@pengZuo", MySqlDbType.Int16).Value = this.PengZuo;
        mySqlCommand.Parameters.Add("@pengYou", MySqlDbType.Int16).Value = this.PengYou;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from [DuiPeng] where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("update DuiPeng set userId=@userId,userName=@userName,fromId=@fromId,fromName=@fromName,pengZuo=@pengZuo,pengYou=@pengYou,addDate=@addDate where id=" + this.Id);
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@fromId", MySqlDbType.Int16).Value = this.FromId;
		mySqlCommand.Parameters.Add("@fromName", MySqlDbType.VarChar).Value = this.FromName;
        mySqlCommand.Parameters.Add("@pengZuo", MySqlDbType.Int16).Value = this.PengZuo;
        mySqlCommand.Parameters.Add("@pengYou", MySqlDbType.Int16).Value = this.PengYou;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<DuiPengInfo> ReadList(string whereStr)
	{
		List<DuiPengInfo> list = new List<DuiPengInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from DuiPeng " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(DuiPengInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
