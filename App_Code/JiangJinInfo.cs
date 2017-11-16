using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class JiangJinInfo
{
	private int _id;
	private int _userId;
	private string _userName;
	private int _fromId;
	private string _fromName;
	private double _duiPengJiang;
	private double _jinTie;
	private string _jiangJinType;
	private double _allJiangJin;
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
	public double DuiPengJiang
	{
		get
		{
			return this._duiPengJiang;
		}
		set
		{
			this._duiPengJiang = value;
		}
	}
	public double JinTie
	{
		get
		{
			return this._jinTie;
		}
		set
		{
			this._jinTie = value;
		}
	}
	public string JiangJinType
	{
		get
		{
			return this._jiangJinType;
		}
		set
		{
			this._jiangJinType = value;
		}
	}
	public double AllJiangJin
	{
		get
		{
			return this._allJiangJin;
		}
		set
		{
			this._allJiangJin = value;
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
	public JiangJinInfo(int id, int userId, string userName, int fromId, string fromName, double duiPengJiang, double jinTie, string jiangJinType, double allJiangJin, DateTime addDate)
	{
		this._id = id;
		this._userId = userId;
		this._userName = userName;
		this._fromId = fromId;
		this._fromName = fromName;
		this._duiPengJiang = duiPengJiang;
		this._jinTie = jinTie;
		this._jiangJinType = jiangJinType;
		this._allJiangJin = allJiangJin;
		this._addDate = addDate;
	}
	public static JiangJinInfo Read(int id)
	{
		JiangJinInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from JiangJin where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new JiangJinInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), mySqlDataReader.GetValue(2).ToString(), int.Parse(mySqlDataReader.GetValue(3).ToString()), mySqlDataReader.GetValue(4).ToString(), double.Parse(mySqlDataReader.GetValue(5).ToString()), double.Parse(mySqlDataReader.GetValue(6).ToString()), mySqlDataReader.GetValue(7).ToString(), double.Parse(mySqlDataReader.GetValue(8).ToString()), DateTime.Parse(mySqlDataReader.GetValue(9).ToString()));
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into JiangJin(userId,userName,fromId,fromName,duiPengJiang,jinTie,jiangJinType,allJiangJin,addDate) values(@userId,@userName,@fromId,@fromName,@duiPengJiang,@jinTie,@jiangJinType,@allJiangJin,@addDate)");
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
        mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@fromId", MySqlDbType.Int16).Value = this.FromId;
        mySqlCommand.Parameters.Add("@fromName", MySqlDbType.VarChar).Value = this.FromName;
        mySqlCommand.Parameters.Add("@duiPengJiang", MySqlDbType.VarChar).Value = this.DuiPengJiang;
        mySqlCommand.Parameters.Add("@jinTie", MySqlDbType.VarChar).Value = this.JinTie;
        mySqlCommand.Parameters.Add("@jiangJinType", MySqlDbType.VarChar).Value = this.JiangJinType;
        mySqlCommand.Parameters.Add("@allJiangJin", MySqlDbType.VarChar).Value = this.AllJiangJin;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from JiangJin where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update JiangJin set userId=@userId,userName=@userName,fromId=@fromId,fromName=@fromName,duiPengJiang=@duiPengJiang,jinTie=@jinTie,jiangJinType=@jiangJinType,allJiangJin=@allJiangJin,addDate=@addDate where id=" + this.Id);
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
        mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@fromId", MySqlDbType.Int16).Value = this.FromId;
        mySqlCommand.Parameters.Add("@fromName", MySqlDbType.VarChar).Value = this.FromName;
        mySqlCommand.Parameters.Add("@duiPengJiang", MySqlDbType.VarChar).Value = this.DuiPengJiang;
        mySqlCommand.Parameters.Add("@jinTie", MySqlDbType.VarChar).Value = this.JinTie;
        mySqlCommand.Parameters.Add("@jiangJinType", MySqlDbType.VarChar).Value = this.JiangJinType;
        mySqlCommand.Parameters.Add("@allJiangJin", MySqlDbType.VarChar).Value = this.AllJiangJin;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<JiangJinInfo> ReadList(string whereStr)
	{
		List<JiangJinInfo> list = new List<JiangJinInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from JiangJin " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(JiangJinInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
