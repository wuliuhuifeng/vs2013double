using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class ModuleFieldInfo
{
	private int _id;
	private int _moduleId;
	private string _fieldInfo;
	private string _fieldName;
	private string _fieldInfoA;
	private int _fieldOrder;
	private string _fieldDataType;
	private int _htmlType;
	private string _defaultValue;
	private string _width;
	private string _height;
	private int _isShow;
	private string _listWidth;
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
	public string FieldInfo
	{
		get
		{
			return this._fieldInfo;
		}
		set
		{
			this._fieldInfo = value;
		}
	}
	public string FieldName
	{
		get
		{
			return this._fieldName;
		}
		set
		{
			this._fieldName = value;
		}
	}
	public string FieldInfoA
	{
		get
		{
			return this._fieldInfoA;
		}
		set
		{
			this._fieldInfoA = value;
		}
	}
	public int FieldOrder
	{
		get
		{
			return this._fieldOrder;
		}
		set
		{
			this._fieldOrder = value;
		}
	}
	public string FieldDataType
	{
		get
		{
			return this._fieldDataType;
		}
		set
		{
			this._fieldDataType = value;
		}
	}
	public int HtmlType
	{
		get
		{
			return this._htmlType;
		}
		set
		{
			this._htmlType = value;
		}
	}
	public string DefaultValue
	{
		get
		{
			return this._defaultValue;
		}
		set
		{
			this._defaultValue = value;
		}
	}
	public string Width
	{
		get
		{
			return this._width;
		}
		set
		{
			this._width = value;
		}
	}
	public string Height
	{
		get
		{
			return this._height;
		}
		set
		{
			this._height = value;
		}
	}
	public int IsShow
	{
		get
		{
			return this._isShow;
		}
		set
		{
			this._isShow = value;
		}
	}
	public string ListWidth
	{
		get
		{
			return this._listWidth;
		}
		set
		{
			this._listWidth = value;
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
	public ModuleFieldInfo(int id, int moduleId, string fieldInfo, string fieldName, string fieldInfoA, int fieldOrder, string fieldDataType, int htmlType, string defaultValue, string width, string height, int isShow, string listWidth, DateTime addDate)
	{
		this._id = id;
		this._moduleId = moduleId;
		this._fieldInfo = fieldInfo;
		this._fieldName = fieldName;
		this._fieldInfoA = fieldInfoA;
		this._fieldOrder = fieldOrder;
		this._fieldDataType = fieldDataType;
		this._htmlType = htmlType;
		this._defaultValue = defaultValue;
		this._width = width;
		this._height = height;
		this._isShow = isShow;
		this._listWidth = listWidth;
		this._addDate = addDate;
	}
	public static ModuleFieldInfo Read(int id)
	{
		ModuleFieldInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from ModuleField where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new ModuleFieldInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), mySqlDataReader.GetValue(2).ToString(), mySqlDataReader.GetValue(3).ToString(), mySqlDataReader.GetValue(4).ToString(), int.Parse(mySqlDataReader.GetValue(5).ToString()), mySqlDataReader.GetValue(6).ToString(), int.Parse(mySqlDataReader.GetValue(7).ToString()), mySqlDataReader.GetValue(8).ToString(), mySqlDataReader.GetValue(9).ToString(), mySqlDataReader.GetValue(10).ToString(), int.Parse(mySqlDataReader.GetValue(11).ToString()), mySqlDataReader.GetValue(12).ToString(), DateTime.Parse(mySqlDataReader.GetValue(13).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into ModuleField(moduleId,fieldInfo,fieldName,fieldInfoA,fieldOrder,fieldDataType,htmlType,defaultValue,width,height,isShow,listWidth,addDate) values(@moduleId,@fieldInfo,@fieldName,@fieldInfoA,@fieldOrder,@fieldDataType,@htmlType,@defaultValue,@width,@height,@isShow,@listWidth,@addDate)");
		mySqlCommand.Parameters.Add("@moduleId", MySqlDbType.Int16).Value = this.ModuleId;
		mySqlCommand.Parameters.Add("@fieldInfo", MySqlDbType.VarChar).Value = this.FieldInfo;
		mySqlCommand.Parameters.Add("@fieldName", MySqlDbType.VarChar).Value = this.FieldName;
		mySqlCommand.Parameters.Add("@fieldInfoA", MySqlDbType.VarChar).Value = this.FieldInfoA;
		mySqlCommand.Parameters.Add("@fieldOrder", MySqlDbType.Int16).Value = this.FieldOrder;
		mySqlCommand.Parameters.Add("@fieldDataType", MySqlDbType.VarChar).Value = this.FieldDataType;
		mySqlCommand.Parameters.Add("@htmlType", MySqlDbType.Int16).Value = this.HtmlType;
		mySqlCommand.Parameters.Add("@defaultValue", MySqlDbType.VarChar).Value = this.DefaultValue;
		mySqlCommand.Parameters.Add("@width", MySqlDbType.VarChar).Value = this.Width;
		mySqlCommand.Parameters.Add("@height", MySqlDbType.VarChar).Value = this.Height;
		mySqlCommand.Parameters.Add("@isShow", MySqlDbType.Int16).Value = this.IsShow;
		mySqlCommand.Parameters.Add("@listWidth", MySqlDbType.VarChar).Value = this.ListWidth;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from ModuleField where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update ModuleField set moduleId=@moduleId,fieldInfo=@fieldInfo,fieldName=@fieldName,fieldInfoA=@fieldInfoA,fieldOrder=@fieldOrder,fieldDataType=@fieldDataType,htmlType=@htmlType,defaultValue=@defaultValue,width=@width,height=@height,isShow=@isShow,listWidth=@listWidth,addDate=@addDate where id=" + this.Id);
		mySqlCommand.Parameters.Add("@moduleId", MySqlDbType.Int16).Value = this.ModuleId;
		mySqlCommand.Parameters.Add("@fieldInfo", MySqlDbType.VarChar).Value = this.FieldInfo;
		mySqlCommand.Parameters.Add("@fieldName", MySqlDbType.VarChar).Value = this.FieldName;
		mySqlCommand.Parameters.Add("@fieldInfoA", MySqlDbType.VarChar).Value = this.FieldInfoA;
		mySqlCommand.Parameters.Add("@fieldOrder", MySqlDbType.Int16).Value = this.FieldOrder;
		mySqlCommand.Parameters.Add("@fieldDataType", MySqlDbType.VarChar).Value = this.FieldDataType;
		mySqlCommand.Parameters.Add("@htmlType", MySqlDbType.Int16).Value = this.HtmlType;
		mySqlCommand.Parameters.Add("@defaultValue", MySqlDbType.VarChar).Value = this.DefaultValue;
		mySqlCommand.Parameters.Add("@width", MySqlDbType.VarChar).Value = this.Width;
		mySqlCommand.Parameters.Add("@height", MySqlDbType.VarChar).Value = this.Height;
		mySqlCommand.Parameters.Add("@isShow", MySqlDbType.Int16).Value = this.IsShow;
		mySqlCommand.Parameters.Add("@listWidth", MySqlDbType.VarChar).Value = this.ListWidth;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<ModuleFieldInfo> ReadList(string whereStr)
	{
		List<ModuleFieldInfo> list = new List<ModuleFieldInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from ModuleField " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(ModuleFieldInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
