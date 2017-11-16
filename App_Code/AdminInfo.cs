using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class AdminInfo
{
	private int _id;
	private string _name;
	private string _password;
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
	public string Name
	{
		get
		{
			return this._name;
		}
		set
		{
			this._name = value;
		}
	}
	public string Password
	{
		get
		{
			return this._password;
		}
		set
		{
			this._password = value;
		}
	}
	public AdminInfo(int id, string name, string password)
	{
		this._id = id;
		this._name = name;
		this._password = password;
	}
	public static AdminInfo Read(int id)
	{
		AdminInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from Admin where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new AdminInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), mySqlDataReader.GetValue(2).ToString());
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("insert into Admin(name,password) values(@name,@password)");
        mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
        mySqlCommand.Parameters.Add("@password", MySqlDbType.VarChar).Value = this.Password;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from Admin where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update Admin set name=@name,password=@password where id=" + this.Id);
        mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
        mySqlCommand.Parameters.Add("@password", MySqlDbType.VarChar).Value = this.Password;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<AdminInfo> ReadList(string whereStr)
	{
		List<AdminInfo> list = new List<AdminInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from Admin " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(AdminInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
