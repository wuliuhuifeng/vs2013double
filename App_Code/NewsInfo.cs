using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class NewsInfo
{
	private int _id;
	private int _sortId;
	private string _title;
	private int _titleRed;
	private string _conent;
	private DateTime _addDate;
	private int _isTop;
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
	public int SortId
	{
		get
		{
			return this._sortId;
		}
		set
		{
			this._sortId = value;
		}
	}
	public string Title
	{
		get
		{
			return this._title;
		}
		set
		{
			this._title = value;
		}
	}
	public int TitleRed
	{
		get
		{
			return this._titleRed;
		}
		set
		{
			this._titleRed = value;
		}
	}
	public string Conent
	{
		get
		{
			return this._conent;
		}
		set
		{
			this._conent = value;
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
	public int IsTop
	{
		get
		{
			return this._isTop;
		}
		set
		{
			this._isTop = value;
		}
	}
	public NewsInfo(int id, int sortId, string title, int titleRed, string conent, DateTime addDate, int isTop)
	{
		this._id = id;
		this._sortId = sortId;
		this._title = title;
		this._titleRed = titleRed;
		this._conent = conent;
		this._addDate = addDate;
		this._isTop = isTop;
	}
	public static NewsInfo Read(int id)
	{
		NewsInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from News where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new NewsInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), mySqlDataReader.GetValue(2).ToString(), int.Parse(mySqlDataReader.GetValue(3).ToString()), mySqlDataReader.GetValue(4).ToString(), DateTime.Parse(mySqlDataReader.GetValue(5).ToString()), int.Parse(mySqlDataReader.GetValue(6).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into News(sortId,title,titleRed,conent,addDate,isTop) values(@sortId,@title,@titleRed,@conent,@addDate,@isTop)");
		mySqlCommand.Parameters.Add("@sortId", MySqlDbType.Int16).Value = this.SortId;
		mySqlCommand.Parameters.Add("@title", MySqlDbType.VarChar).Value = this.Title;
        mySqlCommand.Parameters.Add("@titleRed", MySqlDbType.Int16).Value = this.TitleRed;
		mySqlCommand.Parameters.Add("@conent", MySqlDbType.VarChar).Value = this.Conent;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@isTop", MySqlDbType.Int16).Value = this.IsTop;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from News where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update News set sortId=@sortId,title=@title,titleRed=@titleRed,conent=@conent,addDate=@addDate,isTop=@isTop where id=" + this.Id);
        mySqlCommand.Parameters.Add("@sortId", MySqlDbType.Int16).Value = this.SortId;
		mySqlCommand.Parameters.Add("@title", MySqlDbType.VarChar).Value = this.Title;
        mySqlCommand.Parameters.Add("@titleRed", MySqlDbType.Int16).Value = this.TitleRed;
		mySqlCommand.Parameters.Add("@conent", MySqlDbType.VarChar).Value = this.Conent;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@isTop", MySqlDbType.Int16).Value = this.IsTop;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<NewsInfo> ReadList(string whereStr)
	{
		List<NewsInfo> list = new List<NewsInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from News " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(NewsInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
