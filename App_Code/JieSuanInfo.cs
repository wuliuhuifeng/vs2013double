using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class JieSuanInfo
{
	private int _id;
	private int _userId;
	private string _userName;
	private double _duiPengJiang;
	private double _jinTie;
	private double _allMoney;
	private double _fenHong;
	private double _kouShui;
	private double _shiJiang;
	private DateTime _addDate;
	private int _jieSuanId;
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
	public double AllMoney
	{
		get
		{
			return this._allMoney;
		}
		set
		{
			this._allMoney = value;
		}
	}
	public double FenHong
	{
		get
		{
			return this._fenHong;
		}
		set
		{
			this._fenHong = value;
		}
	}
	public double KouShui
	{
		get
		{
			return this._kouShui;
		}
		set
		{
			this._kouShui = value;
		}
	}
	public double ShiJiang
	{
		get
		{
			return this._shiJiang;
		}
		set
		{
			this._shiJiang = value;
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
	public int JieSuanId
	{
		get
		{
			return this._jieSuanId;
		}
		set
		{
			this._jieSuanId = value;
		}
	}
	public JieSuanInfo(int id, int userId, string userName, double duiPengJiang, double jinTie, double allMoney, double fenHong, double kouShui, double shiJiang, DateTime addDate, int jieSuanId)
	{
		this._id = id;
		this._userId = userId;
		this._userName = userName;
		this._duiPengJiang = duiPengJiang;
		this._jinTie = jinTie;
		this._allMoney = allMoney;
		this._fenHong = fenHong;
		this._kouShui = kouShui;
		this._shiJiang = shiJiang;
		this._addDate = addDate;
		this._jieSuanId = jieSuanId;
	}
	public static JieSuanInfo Read(int id)
	{
		JieSuanInfo result = null;
		Database database = new Database();
		MySqlDataReader oleDbDataReader = database.RunProcGetReader("select * from JieSuan where id=" + id);
		while (oleDbDataReader.Read())
		{
			result = new JieSuanInfo(int.Parse(oleDbDataReader.GetValue(0).ToString()), int.Parse(oleDbDataReader.GetValue(1).ToString()), oleDbDataReader.GetValue(2).ToString(), double.Parse(oleDbDataReader.GetValue(3).ToString()), double.Parse(oleDbDataReader.GetValue(4).ToString()), double.Parse(oleDbDataReader.GetValue(5).ToString()), double.Parse(oleDbDataReader.GetValue(6).ToString()), double.Parse(oleDbDataReader.GetValue(7).ToString()), double.Parse(oleDbDataReader.GetValue(8).ToString()), DateTime.Parse(oleDbDataReader.GetValue(9).ToString()), int.Parse(oleDbDataReader.GetValue(10).ToString()));
		}
		oleDbDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("insert into JieSuan(userId,userName,duiPengJiang,jinTie,allMoney,fenHong,kouShui,shiJiang,addDate,jieSuanId) values(@userId,@userName,@duiPengJiang,@jinTie,@allMoney,@fenHong,@kouShui,@shiJiang,@addDate,@jieSuanId)");
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
        mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@duiPengJiang", MySqlDbType.VarChar).Value = this.DuiPengJiang;
        mySqlCommand.Parameters.Add("@jinTie", MySqlDbType.VarChar).Value = this.JinTie;
        mySqlCommand.Parameters.Add("@allMoney", MySqlDbType.VarChar).Value = this.AllMoney;
        mySqlCommand.Parameters.Add("@fenHong", MySqlDbType.VarChar).Value = this.FenHong;
        mySqlCommand.Parameters.Add("@kouShui", MySqlDbType.VarChar).Value = this.KouShui;
        mySqlCommand.Parameters.Add("@shiJiang", MySqlDbType.VarChar).Value = this.ShiJiang;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@jieSuanId", MySqlDbType.Int16).Value = this.JieSuanId;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from JieSuan where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update JieSuan set userId=@userId,userName=@userName,duiPengJiang=@duiPengJiang,jinTie=@jinTie,allMoney=@allMoney,fenHong=@fenHong,kouShui=@kouShui,shiJiang=@shiJiang,addDate=@addDate,jieSuanId=@jieSuanId where id=" + this.Id);
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
        mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
        mySqlCommand.Parameters.Add("@duiPengJiang", MySqlDbType.VarChar).Value = this.DuiPengJiang;
        mySqlCommand.Parameters.Add("@jinTie", MySqlDbType.VarChar).Value = this.JinTie;
        mySqlCommand.Parameters.Add("@allMoney", MySqlDbType.VarChar).Value = this.AllMoney;
        mySqlCommand.Parameters.Add("@fenHong", MySqlDbType.VarChar).Value = this.FenHong;
        mySqlCommand.Parameters.Add("@kouShui", MySqlDbType.VarChar).Value = this.KouShui;
        mySqlCommand.Parameters.Add("@shiJiang", MySqlDbType.VarChar).Value = this.ShiJiang;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@jieSuanId", MySqlDbType.Int16).Value = this.JieSuanId;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<JieSuanInfo> ReadList(string whereStr)
	{
		List<JieSuanInfo> list = new List<JieSuanInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from JieSuan " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(JieSuanInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
