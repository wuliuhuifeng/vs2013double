using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class ModuleListInfo
{
	private int _id;
	private string _moduleName;
	private string _moduleTableName;
	private string _moduleInfo;
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
	public string ModuleName
	{
		get
		{
			return this._moduleName;
		}
		set
		{
			this._moduleName = value;
		}
	}
	public string ModuleTableName
	{
		get
		{
			return this._moduleTableName;
		}
		set
		{
			this._moduleTableName = value;
		}
	}
	public string ModuleInfo
	{
		get
		{
			return this._moduleInfo;
		}
		set
		{
			this._moduleInfo = value;
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
	public ModuleListInfo(int id, string moduleName, string moduleTableName, string moduleInfo, DateTime addDate)
	{
		this._id = id;
		this._moduleName = moduleName;
		this._moduleTableName = moduleTableName;
		this._moduleInfo = moduleInfo;
		this._addDate = addDate;
	}
	public static ModuleListInfo Read(int id)
	{
		ModuleListInfo result = null;
		Database database = new Database();
        MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from ModuleList where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new ModuleListInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), mySqlDataReader.GetValue(2).ToString(), mySqlDataReader.GetValue(3).ToString(), DateTime.Parse(mySqlDataReader.GetValue(4).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into ModuleList(moduleName,moduleTableName,moduleInfo,addDate) values(@moduleName,@moduleTableName,@moduleInfo,@addDate)");
		mySqlCommand.Parameters.Add("@moduleName", MySqlDbType.VarChar).Value = this.ModuleName;
		mySqlCommand.Parameters.Add("@moduleTableName", MySqlDbType.VarChar).Value = this.ModuleTableName;
		mySqlCommand.Parameters.Add("@moduleInfo", MySqlDbType.VarChar).Value = this.ModuleInfo;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from ModuleList where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update ModuleList set moduleName=@moduleName,moduleTableName=@moduleTableName,moduleInfo=@moduleInfo,addDate=@addDate where id=" + this.Id);
		mySqlCommand.Parameters.Add("@moduleName", MySqlDbType.VarChar).Value = this.ModuleName;
		mySqlCommand.Parameters.Add("@moduleTableName", MySqlDbType.VarChar).Value = this.ModuleTableName;
		mySqlCommand.Parameters.Add("@moduleInfo", MySqlDbType.VarChar).Value = this.ModuleInfo;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<ModuleListInfo> ReadList(string whereStr)
	{
		List<ModuleListInfo> list = new List<ModuleListInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from ModuleList " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(ModuleListInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
