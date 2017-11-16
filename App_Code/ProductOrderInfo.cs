using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class ProductOrderInfo
{
	private int _id;
	private int _productType;
	private int _userId;
	private string _userName;
	private string _name;
	private string _mobile;
	private double _price;
	private string _content;
	private DateTime _addDate;
	private int _status;
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
	public int ProductType
	{
		get
		{
			return this._productType;
		}
		set
		{
			this._productType = value;
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
	public string Mobile
	{
		get
		{
			return this._mobile;
		}
		set
		{
			this._mobile = value;
		}
	}
	public double Price
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
	public string Content
	{
		get
		{
			return this._content;
		}
		set
		{
			this._content = value;
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
	public int Status
	{
		get
		{
			return this._status;
		}
		set
		{
			this._status = value;
		}
	}
	public ProductOrderInfo(int id, int productType, int userId, string userName, string name, string mobile, double price, string content, DateTime addDate, int status)
	{
		this._id = id;
		this._productType = productType;
		this._userId = userId;
		this._userName = userName;
		this._name = name;
		this._mobile = mobile;
		this._price = price;
		this._content = content;
		this._addDate = addDate;
		this._status = status;
	}
	public static ProductOrderInfo Read(int id)
	{
		ProductOrderInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from ProductOrder where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new ProductOrderInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), int.Parse(mySqlDataReader.GetValue(1).ToString()), int.Parse(mySqlDataReader.GetValue(2).ToString()), mySqlDataReader.GetValue(3).ToString(), mySqlDataReader.GetValue(4).ToString(), mySqlDataReader.GetValue(5).ToString(), double.Parse(mySqlDataReader.GetValue(6).ToString()), mySqlDataReader.GetValue(7).ToString(), DateTime.Parse(mySqlDataReader.GetValue(8).ToString()), int.Parse(mySqlDataReader.GetValue(9).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into ProductOrder(productType,userId,userName,name,mobile,price,content,addDate,status) values(@productType,@userId,@userName,@name,@mobile,@price,@content,@addDate,@status)");
        mySqlCommand.Parameters.Add("@productType", MySqlDbType.Int16).Value = this.ProductType;
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
		mySqlCommand.Parameters.Add("@mobile", MySqlDbType.VarChar).Value = this.Mobile;
		mySqlCommand.Parameters.Add("@price", MySqlDbType.VarChar).Value = this.Price;
		mySqlCommand.Parameters.Add("@content", MySqlDbType.VarChar).Value = this.Content;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.Parameters.Add("@status", MySqlDbType.Int16).Value = this.Status;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from ProductOrder where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update ProductOrder set productType=@productType,userId=@userId,userName=@userName,name=@name,mobile=@mobile,price=@price,content=@content,addDate=@addDate,status=@status where id=" + this.Id);
        mySqlCommand.Parameters.Add("@productType", MySqlDbType.Int16).Value = this.ProductType;
        mySqlCommand.Parameters.Add("@userId", MySqlDbType.Int16).Value = this.UserId;
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
		mySqlCommand.Parameters.Add("@mobile", MySqlDbType.VarChar).Value = this.Mobile;
		mySqlCommand.Parameters.Add("@price", MySqlDbType.VarChar).Value = this.Price;
		mySqlCommand.Parameters.Add("@content", MySqlDbType.VarChar).Value = this.Content;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@status", MySqlDbType.Int16).Value = this.Status;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<ProductOrderInfo> ReadList(string whereStr)
	{
		List<ProductOrderInfo> list = new List<ProductOrderInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from ProductOrder " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(ProductOrderInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
