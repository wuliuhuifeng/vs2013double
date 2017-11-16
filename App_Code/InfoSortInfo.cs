using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class InfoSortInfo
{
	private int _id;
	private int _moduleId;
	private int _sortLevel;
	private int _pid;
	private string _sortName;
	private int _sortType;
	private string _sortUrl;
	private int _sortOrder;
	private string _sortPath;
	private string _sortFileName;
	private string _sortTitle;
	private string _keywords;
	private string _description;
	private DateTime _addDate;
	private int _sortStatus;
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
	public int ModuleId
	{
		get
		{
			return this._moduleId;
		}
		set
		{
			this._moduleId = value;
		}
	}
	public int SortLevel
	{
		get
		{
			return this._sortLevel;
		}
		set
		{
			this._sortLevel = value;
		}
	}
	public int Pid
	{
		get
		{
			return this._pid;
		}
		set
		{
			this._pid = value;
		}
	}
	public string SortName
	{
		get
		{
			return this._sortName;
		}
		set
		{
			this._sortName = value;
		}
	}
	public int SortType
	{
		get
		{
			return this._sortType;
		}
		set
		{
			this._sortType = value;
		}
	}
	public string SortUrl
	{
		get
		{
			return this._sortUrl;
		}
		set
		{
			this._sortUrl = value;
		}
	}
	public int SortOrder
	{
		get
		{
			return this._sortOrder;
		}
		set
		{
			this._sortOrder = value;
		}
	}
	public string SortPath
	{
		get
		{
			return this._sortPath;
		}
		set
		{
			this._sortPath = value;
		}
	}
	public string SortFileName
	{
		get
		{
			return this._sortFileName;
		}
		set
		{
			this._sortFileName = value;
		}
	}
	public string SortTitle
	{
		get
		{
			return this._sortTitle;
		}
		set
		{
			this._sortTitle = value;
		}
	}
	public string Keywords
	{
		get
		{
			return this._keywords;
		}
		set
		{
			this._keywords = value;
		}
	}
	public string Description
	{
		get
		{
			return this._description;
		}
		set
		{
			this._description = value;
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
	public int SortStatus
	{
		get
		{
			return this._sortStatus;
		}
		set
		{
			this._sortStatus = value;
		}
	}
	public InfoSortInfo(int id, int moduleId, int sortLevel, int pid, string sortName, int sortType, string sortUrl, int sortOrder, string sortPath, string sortFileName, string sortTitle, string keywords, string description, DateTime addDate, int sortStatus)
	{
		this._id = id;
		this._moduleId = moduleId;
		this._sortLevel = sortLevel;
		this._pid = pid;
		this._sortName = sortName;
		this._sortType = sortType;
		this._sortUrl = sortUrl;
		this._sortOrder = sortOrder;
		this._sortPath = sortPath;
		this._sortFileName = sortFileName;
		this._sortTitle = sortTitle;
		this._keywords = keywords;
		this._description = description;
		this._addDate = addDate;
		this._sortStatus = sortStatus;
	}
	public static InfoSortInfo Read(int id)
	{
		InfoSortInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from InfoSort where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new InfoSortInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), int.Parse(mySqlDataReader.GetValue(2).ToString()), int.Parse(mySqlDataReader.GetValue(3).ToString()), mySqlDataReader.GetValue(4).ToString(), int.Parse(mySqlDataReader.GetValue(5).ToString()), mySqlDataReader.GetValue(6).ToString(), int.Parse(mySqlDataReader.GetValue(7).ToString()), mySqlDataReader.GetValue(8).ToString(), mySqlDataReader.GetValue(9).ToString(), mySqlDataReader.GetValue(10).ToString(), mySqlDataReader.GetValue(11).ToString(), mySqlDataReader.GetValue(12).ToString(), DateTime.Parse(mySqlDataReader.GetValue(13).ToString()), int.Parse(mySqlDataReader.GetValue(14).ToString()));
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into InfoSort(moduleId,sortLevel,pid,sortName,sortType,sortUrl,sortOrder,sortPath,sortFileName,sortTitle,keywords,description,addDate,sortStatus) values(@moduleId,@sortLevel,@pid,@sortName,@sortType,@sortUrl,@sortOrder,@sortPath,@sortFileName,@sortTitle,@keywords,@description,@addDate,@sortStatus)");
        mySqlCommand.Parameters.Add("@moduleId", MySqlDbType.Int16).Value = this.ModuleId;
        mySqlCommand.Parameters.Add("@sortLevel", MySqlDbType.Int16).Value = this.SortLevel;
        mySqlCommand.Parameters.Add("@pid", MySqlDbType.Int16).Value = this.Pid;
        mySqlCommand.Parameters.Add("@sortName", MySqlDbType.VarChar).Value = this.SortName;
        mySqlCommand.Parameters.Add("@sortType", MySqlDbType.Int16).Value = this.SortType;
        mySqlCommand.Parameters.Add("@sortUrl", MySqlDbType.VarChar).Value = this.SortUrl;
        mySqlCommand.Parameters.Add("@sortOrder", MySqlDbType.Int16).Value = this.SortOrder;
        mySqlCommand.Parameters.Add("@sortPath", MySqlDbType.VarChar).Value = this.SortPath;
        mySqlCommand.Parameters.Add("@sortFileName", MySqlDbType.VarChar).Value = this.SortFileName;
        mySqlCommand.Parameters.Add("@sortTitle", MySqlDbType.VarChar).Value = this.SortTitle;
        mySqlCommand.Parameters.Add("@keywords", MySqlDbType.VarChar).Value = this.Keywords;
        mySqlCommand.Parameters.Add("@description", MySqlDbType.VarChar).Value = this.Description;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@sortStatus", MySqlDbType.Int16).Value = this.SortStatus;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from InfoSort where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update InfoSort set moduleId=@moduleId,sortLevel=@sortLevel,pid=@pid,sortName=@sortName,sortType=@sortType,sortUrl=@sortUrl,sortOrder=@sortOrder,sortPath=@sortPath,sortFileName=@sortFileName,sortTitle=@sortTitle,keywords=@keywords,description=@description,addDate=@addDate,sortStatus=@sortStatus where id=" + this.Id);
        mySqlCommand.Parameters.Add("@moduleId", MySqlDbType.Int16).Value = this.ModuleId;
        mySqlCommand.Parameters.Add("@sortLevel", MySqlDbType.Int16).Value = this.SortLevel;
        mySqlCommand.Parameters.Add("@pid", MySqlDbType.Int16).Value = this.Pid;
        mySqlCommand.Parameters.Add("@sortName", MySqlDbType.VarChar).Value = this.SortName;
        mySqlCommand.Parameters.Add("@sortType", MySqlDbType.Int16).Value = this.SortType;
        mySqlCommand.Parameters.Add("@sortUrl", MySqlDbType.VarChar).Value = this.SortUrl;
        mySqlCommand.Parameters.Add("@sortOrder", MySqlDbType.Int16).Value = this.SortOrder;
        mySqlCommand.Parameters.Add("@sortPath", MySqlDbType.VarChar).Value = this.SortPath;
        mySqlCommand.Parameters.Add("@sortFileName", MySqlDbType.VarChar).Value = this.SortFileName;
        mySqlCommand.Parameters.Add("@sortTitle", MySqlDbType.VarChar).Value = this.SortTitle;
        mySqlCommand.Parameters.Add("@keywords", MySqlDbType.VarChar).Value = this.Keywords;
        mySqlCommand.Parameters.Add("@description", MySqlDbType.VarChar).Value = this.Description;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@sortStatus", MySqlDbType.Int16).Value = this.SortStatus;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<InfoSortInfo> ReadList(string whereStr)
	{
		List<InfoSortInfo> list = new List<InfoSortInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from InfoSort " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(InfoSortInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
