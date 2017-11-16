using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class GoodsInfo
{
	private int _id;
	private string _name;
	private string _picture;
	private string _price;
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
	public string Picture
	{
		get
		{
			return this._picture;
		}
		set
		{
			this._picture = value;
		}
	}
	public string Price
	{
		get
		{
			return this._price;
		}
		set
		{
			this._price = value;
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
	public GoodsInfo(int id, string name, string picture, string price, DateTime addDate)
	{
		this._id = id;
		this._name = name;
		this._picture = picture;
		this._price = price;
		this._addDate = addDate;
	}
	public static GoodsInfo Read(int id)
	{
		GoodsInfo result = null;
		Database database = new Database();
        MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from Goods where id=" + id);
        while (mySqlDataReader.Read())
		{
            result = new GoodsInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), mySqlDataReader.GetValue(2).ToString(), mySqlDataReader.GetValue(3).ToString(), DateTime.Parse(mySqlDataReader.GetValue(4).ToString()));
		}
        mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into Goods(name,picture,price,addDate) values(@name,@picture,@price,@addDate)");
        mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
        mySqlCommand.Parameters.Add("@picture", MySqlDbType.VarChar).Value = this.Picture;
        mySqlCommand.Parameters.Add("@price", MySqlDbType.VarChar).Value = this.Price;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from [Goods] where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update Goods set name=@name,picture=@picture,price=@price,addDate=@addDate where id=" + this.Id);
        mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
        mySqlCommand.Parameters.Add("@picture", MySqlDbType.VarChar).Value = this.Picture;
        mySqlCommand.Parameters.Add("@price", MySqlDbType.VarChar).Value = this.Price;
        mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<GoodsInfo> ReadList(string whereStr)
	{
		List<GoodsInfo> list = new List<GoodsInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from Goods " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(GoodsInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
