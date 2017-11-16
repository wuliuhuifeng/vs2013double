using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class ConfigInfo
{
	private int _id;
	private int _fenHong;
	private double _kouShui;
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
	public int FenHong
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
	public ConfigInfo(int id, int fenHong, double kouShui)
	{
		this._id = id;
		this._fenHong = fenHong;
		this._kouShui = kouShui;
	}
	public static ConfigInfo Read(int id)
	{
		ConfigInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from Config where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new ConfigInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), double.Parse(mySqlDataReader.GetValue(2).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into Config(fenHong,kouShui) values(@fenHong,@kouShui)");
		mySqlCommand.Parameters.Add("@fenHong", MySqlDbType.Int16).Value = this.FenHong;
		mySqlCommand.Parameters.Add("@kouShui", MySqlDbType.VarChar).Value = this.KouShui;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from [Config] where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("update Config set fenHong=@fenHong,kouShui=@kouShui where id=" + this.Id);
        mySqlCommand.Parameters.Add("@fenHong", MySqlDbType.Int16).Value = this.FenHong;
		mySqlCommand.Parameters.Add("@kouShui", MySqlDbType.VarChar).Value = this.KouShui;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<ConfigInfo> ReadList(string whereStr)
	{
		List<ConfigInfo> list = new List<ConfigInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from Config " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(ConfigInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
