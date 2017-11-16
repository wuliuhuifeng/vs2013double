using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class WebconfigInfo
{
	private int _id;
	private string _name;
	private string _gonggao;
	private string _chengnuo;
	private string _contact;
	private string _foot;
	private string _jianjie;
	private string _link;
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
	public string Gonggao
	{
		get
		{
			return this._gonggao;
		}
		set
		{
			this._gonggao = value;
		}
	}
	public string Chengnuo
	{
		get
		{
			return this._chengnuo;
		}
		set
		{
			this._chengnuo = value;
		}
	}
	public string Contact
	{
		get
		{
			return this._contact;
		}
		set
		{
			this._contact = value;
		}
	}
	public string Foot
	{
		get
		{
			return this._foot;
		}
		set
		{
			this._foot = value;
		}
	}
	public string Jianjie
	{
		get
		{
			return this._jianjie;
		}
		set
		{
			this._jianjie = value;
		}
	}
	public string Link
	{
		get
		{
			return this._link;
		}
		set
		{
			this._link = value;
		}
	}
	public WebconfigInfo(int id, string name, string gonggao, string chengnuo, string contact, string foot, string jianjie, string link)
	{
		this._id = id;
		this._name = name;
		this._gonggao = gonggao;
		this._chengnuo = chengnuo;
		this._contact = contact;
		this._foot = foot;
		this._jianjie = jianjie;
		this._link = link;
	}
	public static WebconfigInfo Read(int id)
	{
		WebconfigInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from Webconfig where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new WebconfigInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), mySqlDataReader.GetValue(2).ToString(), mySqlDataReader.GetValue(3).ToString(), mySqlDataReader.GetValue(4).ToString(), mySqlDataReader.GetValue(5).ToString(), mySqlDataReader.GetValue(6).ToString(), mySqlDataReader.GetValue(7).ToString());
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into Webconfig(name,gonggao,chengnuo,contact,foot,jianjie,link) values(@name,@gonggao,@chengnuo,@contact,@foot,@jianjie,@link)");
		mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
		mySqlCommand.Parameters.Add("@gonggao", MySqlDbType.VarChar).Value = this.Gonggao;
		mySqlCommand.Parameters.Add("@chengnuo", MySqlDbType.VarChar).Value = this.Chengnuo;
		mySqlCommand.Parameters.Add("@contact", MySqlDbType.VarChar).Value = this.Contact;
		mySqlCommand.Parameters.Add("@foot", MySqlDbType.VarChar).Value = this.Foot;
		mySqlCommand.Parameters.Add("@jianjie", MySqlDbType.VarChar).Value = this.Jianjie;
		mySqlCommand.Parameters.Add("@link", MySqlDbType.VarChar).Value = this.Link;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from Webconfig where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update Webconfig set name=@name,gonggao=@gonggao,chengnuo=@chengnuo,contact=@contact,foot=@foot,jianjie=@jianjie,link=@link where id=" + this.Id);
		mySqlCommand.Parameters.Add("@name", MySqlDbType.VarChar).Value = this.Name;
		mySqlCommand.Parameters.Add("@gonggao", MySqlDbType.VarChar).Value = this.Gonggao;
		mySqlCommand.Parameters.Add("@chengnuo", MySqlDbType.VarChar).Value = this.Chengnuo;
		mySqlCommand.Parameters.Add("@contact", MySqlDbType.VarChar).Value = this.Contact;
		mySqlCommand.Parameters.Add("@foot", MySqlDbType.VarChar).Value = this.Foot;
		mySqlCommand.Parameters.Add("@jianjie", MySqlDbType.VarChar).Value = this.Jianjie;
		mySqlCommand.Parameters.Add("@link", MySqlDbType.VarChar).Value = this.Link;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<WebconfigInfo> ReadList(string whereStr)
	{
		List<WebconfigInfo> list = new List<WebconfigInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from Webconfig " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(WebconfigInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
