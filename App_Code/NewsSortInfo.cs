using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class NewsSortInfo
{
	private int _id;
	private string _sortName;
	private int _xuhao;
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
	public int Xuhao
	{
		get
		{
			return this._xuhao;
		}
		set
		{
			this._xuhao = value;
		}
	}
	public NewsSortInfo(int id, string sortName, int xuhao)
	{
		this._id = id;
		this._sortName = sortName;
		this._xuhao = xuhao;
	}
	public static NewsSortInfo Read(int id)
	{
		NewsSortInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from NewsSort where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new NewsSortInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), int.Parse(mySqlDataReader.GetValue(2).ToString()));
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into NewsSort(sortName,xuhao) values(@sortName,@xuhao)");
        mySqlCommand.Parameters.Add("@sortName", MySqlDbType.VarChar).Value = this.SortName;
        mySqlCommand.Parameters.Add("@xuhao", MySqlDbType.Int16).Value = this.Xuhao;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from NewsSort where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update NewsSort set sortName=@sortName,xuhao=@xuhao where id=" + this.Id);
        mySqlCommand.Parameters.Add("@sortName", MySqlDbType.VarChar).Value = this.SortName;
        mySqlCommand.Parameters.Add("@xuhao", MySqlDbType.Int16).Value = this.Xuhao;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<NewsSortInfo> ReadList(string whereStr)
	{
		List<NewsSortInfo> list = new List<NewsSortInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from NewsSort " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(NewsSortInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
