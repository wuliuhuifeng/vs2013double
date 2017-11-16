using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class SetMealInfo
{
	private int _id;
	private string _name;
	private double _money;
	private int _point;
	private double _cappingAward;
	private double _touchAward;
	private double _serviceAward;
    private double _rapidAward;
    private double _jiandianAward;
	private DateTime _addDate;
	private int _isAgency;
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
	public double Money
	{
		get
		{
			return this._money;
		}
		set
		{
			this._money = value;
		}
	}
	public int Point
	{
		get
		{
			return this._point;
		}
		set
		{
			this._point = value;
		}
	}
	public double CappingAward
	{
		get
		{
			return this._cappingAward;
		}
		set
		{
			this._cappingAward = value;
		}
	}
	public double TouchAward
	{
		get
		{
			return this._touchAward;
		}
		set
		{
			this._touchAward = value;
		}
	}
	public double ServiceAward
	{
		get
		{
			return this._serviceAward;
		}
		set
		{
			this._serviceAward = value;
		}
	}
    public double rapidAward
    {
        get
        {
            return this._rapidAward;
        }
        set
        {
            this._rapidAward = value;
        }
    }
    public double jiandianAward
    {
        get
        {
            return this._jiandianAward;
        }
        set
        {
            this._jiandianAward = value;
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
	public int IsAgency
	{
		get
		{
			return this._isAgency;
		}
		set
		{
			this._isAgency = value;
		}
	}
    public SetMealInfo(int id, string name, double money, int point, double cappingAward, double touchAward, double serviceAward, double rapidAward,double jiandianAward, DateTime addDate, int isAgency)
	{
		this._id = id;
		this._name = name;
		this._money = money;
		this._point = point;
		this._cappingAward = cappingAward;
		this._touchAward = touchAward;
		this._serviceAward = serviceAward;
        this._rapidAward = rapidAward;
        this._jiandianAward =jiandianAward;
		this._addDate = addDate;
		this._isAgency = isAgency;
	}
	public static SetMealInfo Read(int id)
	{
		SetMealInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from SetMeal where id=" + id);
		while (mySqlDataReader.Read())
		{
            result = new SetMealInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), double.Parse(mySqlDataReader.GetValue(2).ToString()), int.Parse(mySqlDataReader.GetValue(3).ToString()), double.Parse(mySqlDataReader.GetValue(4).ToString()), double.Parse(mySqlDataReader.GetValue(5).ToString()), double.Parse(mySqlDataReader.GetValue(6).ToString()), double.Parse(mySqlDataReader.GetValue(7).ToString()), double.Parse(mySqlDataReader.GetValue(8).ToString()), DateTime.Parse(mySqlDataReader.GetValue(9).ToString()), int.Parse(mySqlDataReader.GetValue(10).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("insert into SetMeal(name,money,point,cappingAward,touchAward,serviceAward,jiandianAward,addDate,isAgency) values(@name,@money,@point,@cappingAward,@touchAward,@serviceAward,@rapidAward,@jiandianAward,@addDate,@isAgency)");
		mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
		mySqlCommand.Parameters.Add("@point", MySqlDbType.Int16).Value = this.Point;
		mySqlCommand.Parameters.Add("@cappingAward", MySqlDbType.VarChar).Value = this.CappingAward;
		mySqlCommand.Parameters.Add("@touchAward", MySqlDbType.VarChar).Value = this.TouchAward;
		mySqlCommand.Parameters.Add("@serviceAward", MySqlDbType.VarChar).Value = this.ServiceAward;
        mySqlCommand.Parameters.Add("@rapidAward", MySqlDbType.VarChar).Value = this.rapidAward;
        mySqlCommand.Parameters.Add("@rapidAward", MySqlDbType.VarChar).Value = this.jiandianAward;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.Parameters.Add("@isAgency", MySqlDbType.Int16).Value = this.IsAgency;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from SetMeal where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update SetMeal set name=@name,money=@money,point=@point,cappingAward=@cappingAward,touchAward=@touchAward,serviceAward=@serviceAward,rapidAward=@rapidAward,addDate=@addDate,isAgency=@isAgency where id=" + this.Id);
		mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
		mySqlCommand.Parameters.Add("@point", MySqlDbType.Int16).Value = this.Point;
		mySqlCommand.Parameters.Add("@cappingAward", MySqlDbType.VarChar).Value = this.CappingAward;
		mySqlCommand.Parameters.Add("@touchAward", MySqlDbType.VarChar).Value = this.TouchAward;
		mySqlCommand.Parameters.Add("@serviceAward", MySqlDbType.VarChar).Value = this.ServiceAward;
        mySqlCommand.Parameters.Add("@rapidAward", MySqlDbType.VarChar).Value = this.rapidAward;
        mySqlCommand.Parameters.Add("@rapidAward", MySqlDbType.VarChar).Value = this.jiandianAward;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
		mySqlCommand.Parameters.Add("@isAgency", MySqlDbType.Int16).Value = this.IsAgency;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<SetMealInfo> ReadList(string whereStr)
	{
		List<SetMealInfo> list = new List<SetMealInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from SetMeal " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(SetMealInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
