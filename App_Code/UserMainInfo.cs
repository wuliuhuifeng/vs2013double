using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
public class UserMainInfo
{
	private int _id;
	private string _userName;
	private string _tuiJianName;
	private string _guanLiName;
	private short _usertype;
	private string _trueName;
	private string _tuiJianPath;
	private string _shenfen;
	private string _kaihuHang;
	private string _kaihuName;
	private string _kaiHuhao;
	private string _usertell;
	private string _userCard;
	private string _phone;
	private string _userAdd;
	private DateTime _addTime;
	private string _userPwd;
	private string _money;
	private short _show;
	private string _userPath;
	private string _userPwd1;
	private string _fenzhi;
	private decimal _dian;
	private decimal _jiangjin;
	private int _fanben;
	private int _zuozong;
	private int _youzong;
	private short _server;
	private DateTime _apptime;
	private DateTime _pitime;
	private decimal _all;
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
	public string TuiJianName
	{
		get
		{
			return this._tuiJianName;
		}
		set
		{
			this._tuiJianName = value;
		}
	}
	public string GuanLiName
	{
		get
		{
			return this._guanLiName;
		}
		set
		{
			this._guanLiName = value;
		}
	}
	public short Usertype
	{
		get
		{
			return this._usertype;
		}
		set
		{
			this._usertype = value;
		}
	}
	public string TrueName
	{
		get
		{
			return this._trueName;
		}
		set
		{
			this._trueName = value;
		}
	}
	public string TuiJianPath
	{
		get
		{
			return this._tuiJianPath;
		}
		set
		{
			this._tuiJianPath = value;
		}
	}
	public string Shenfen
	{
		get
		{
			return this._shenfen;
		}
		set
		{
			this._shenfen = value;
		}
	}
	public string KaihuHang
	{
		get
		{
			return this._kaihuHang;
		}
		set
		{
			this._kaihuHang = value;
		}
	}
	public string KaihuName
	{
		get
		{
			return this._kaihuName;
		}
		set
		{
			this._kaihuName = value;
		}
	}
	public string KaiHuhao
	{
		get
		{
			return this._kaiHuhao;
		}
		set
		{
			this._kaiHuhao = value;
		}
	}
	public string Usertell
	{
		get
		{
			return this._usertell;
		}
		set
		{
			this._usertell = value;
		}
	}
	public string UserCard
	{
		get
		{
			return this._userCard;
		}
		set
		{
			this._userCard = value;
		}
	}
	public string Phone
	{
		get
		{
			return this._phone;
		}
		set
		{
			this._phone = value;
		}
	}
	public string UserAdd
	{
		get
		{
			return this._userAdd;
		}
		set
		{
			this._userAdd = value;
		}
	}
	public DateTime AddTime
	{
		get
		{
			return this._addTime;
		}
		set
		{
			this._addTime = value;
		}
	}
	public string UserPwd
	{
		get
		{
			return this._userPwd;
		}
		set
		{
			this._userPwd = value;
		}
	}
	public string Money
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
	public short Show
	{
		get
		{
			return this._show;
		}
		set
		{
			this._show = value;
		}
	}
	public string UserPath
	{
		get
		{
			return this._userPath;
		}
		set
		{
			this._userPath = value;
		}
	}
	public string UserPwd1
	{
		get
		{
			return this._userPwd1;
		}
		set
		{
			this._userPwd1 = value;
		}
	}
	public string Fenzhi
	{
		get
		{
			return this._fenzhi;
		}
		set
		{
			this._fenzhi = value;
		}
	}
	public decimal Dian
	{
		get
		{
			return this._dian;
		}
		set
		{
			this._dian = value;
		}
	}
	public decimal Jiangjin
	{
		get
		{
			return this._jiangjin;
		}
		set
		{
			this._jiangjin = value;
		}
	}
	public int Fanben
	{
		get
		{
			return this._fanben;
		}
		set
		{
			this._fanben = value;
		}
	}
	public int Zuozong
	{
		get
		{
			return this._zuozong;
		}
		set
		{
			this._zuozong = value;
		}
	}
	public int Youzong
	{
		get
		{
			return this._youzong;
		}
		set
		{
			this._youzong = value;
		}
	}
	public short Server
	{
		get
		{
			return this._server;
		}
		set
		{
			this._server = value;
		}
	}
	public DateTime Apptime
	{
		get
		{
			return this._apptime;
		}
		set
		{
			this._apptime = value;
		}
	}
	public DateTime Pitime
	{
		get
		{
			return this._pitime;
		}
		set
		{
			this._pitime = value;
		}
	}
	public decimal All
	{
		get
		{
			return this._all;
		}
		set
		{
			this._all = value;
		}
	}
	public UserMainInfo(int id, string userName, string tuiJianName, string guanLiName, short usertype, string trueName, string tuiJianPath, string shenfen, string kaihuHang, string kaihuName, string kaiHuhao, string usertell, string userCard, string phone, string userAdd, DateTime addTime, string userPwd, string money, short show, string userPath, string userPwd1, string fenzhi, decimal dian, decimal jiangjin, int fanben, int zuozong, int youzong, short server, DateTime apptime, DateTime pitime, decimal all)
	{
		this._id = id;
		this._userName = userName;
		this._tuiJianName = tuiJianName;
		this._guanLiName = guanLiName;
		this._usertype = usertype;
		this._trueName = trueName;
		this._tuiJianPath = tuiJianPath;
		this._shenfen = shenfen;
		this._kaihuHang = kaihuHang;
		this._kaihuName = kaihuName;
		this._kaiHuhao = kaiHuhao;
		this._usertell = usertell;
		this._userCard = userCard;
		this._phone = phone;
		this._userAdd = userAdd;
		this._addTime = addTime;
		this._userPwd = userPwd;
		this._money = money;
		this._show = show;
		this._userPath = userPath;
		this._userPwd1 = userPwd1;
		this._fenzhi = fenzhi;
		this._dian = dian;
		this._jiangjin = jiangjin;
		this._fanben = fanben;
		this._zuozong = zuozong;
		this._youzong = youzong;
		this._server = server;
		this._apptime = apptime;
		this._pitime = pitime;
		this._all = all;
	}
	public static UserMainInfo Read(int id)
	{
		UserMainInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from UserMain where id=" + id);
		while (mySqlDataReader.Read())
		{
			result = new UserMainInfo(int.Parse(mySqlDataReader.GetValue(0).ToString()), mySqlDataReader.GetValue(1).ToString(), mySqlDataReader.GetValue(2).ToString(), mySqlDataReader.GetValue(3).ToString(), short.Parse(mySqlDataReader.GetValue(4).ToString()), mySqlDataReader.GetValue(5).ToString(), mySqlDataReader.GetValue(6).ToString(), mySqlDataReader.GetValue(7).ToString(), mySqlDataReader.GetValue(8).ToString(), mySqlDataReader.GetValue(9).ToString(), mySqlDataReader.GetValue(10).ToString(), mySqlDataReader.GetValue(11).ToString(), mySqlDataReader.GetValue(12).ToString(), mySqlDataReader.GetValue(13).ToString(), mySqlDataReader.GetValue(14).ToString(), DateTime.Parse(mySqlDataReader.GetValue(15).ToString()), mySqlDataReader.GetValue(16).ToString(), mySqlDataReader.GetValue(17).ToString(), short.Parse(mySqlDataReader.GetValue(18).ToString()), mySqlDataReader.GetValue(19).ToString(), mySqlDataReader.GetValue(20).ToString(), mySqlDataReader.GetValue(21).ToString(), decimal.Parse(mySqlDataReader.GetValue(22).ToString()), decimal.Parse(mySqlDataReader.GetValue(23).ToString()), int.Parse(mySqlDataReader.GetValue(24).ToString()), int.Parse(mySqlDataReader.GetValue(25).ToString()), int.Parse(mySqlDataReader.GetValue(26).ToString()), short.Parse(mySqlDataReader.GetValue(27).ToString()), DateTime.Parse(mySqlDataReader.GetValue(28).ToString()), DateTime.Parse(mySqlDataReader.GetValue(29).ToString()), decimal.Parse(mySqlDataReader.GetValue(30).ToString()));
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("insert into UserMain(userName,tuiJianName,guanLiName,usertype,trueName,tuiJianPath,shenfen,kaihuHang,kaihuName,kaiHuhao,usertell,userCard,phone,userAdd,addTime,userPwd,money,show,userPath,userPwd1,fenzhi,dian,jiangjin,fanben,zuozong,youzong,server,apptime,pitime,all) values(@userName,@tuiJianName,@guanLiName,@usertype,@trueName,@tuiJianPath,@shenfen,@kaihuHang,@kaihuName,@kaiHuhao,@usertell,@userCard,@phone,@userAdd,@addTime,@userPwd,@money,@show,@userPath,@userPwd1,@fenzhi,@dian,@jiangjin,@fanben,@zuozong,@youzong,@server,@apptime,@pitime,@all)");
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@tuiJianName", MySqlDbType.VarChar).Value = this.TuiJianName;
		mySqlCommand.Parameters.Add("@guanLiName", MySqlDbType.VarChar).Value = this.GuanLiName;
		mySqlCommand.Parameters.Add("@usertype", MySqlDbType.VarChar).Value = this.Usertype;
		mySqlCommand.Parameters.Add("@trueName", MySqlDbType.VarChar).Value = this.TrueName;
		mySqlCommand.Parameters.Add("@tuiJianPath", MySqlDbType.VarChar).Value = this.TuiJianPath;
		mySqlCommand.Parameters.Add("@shenfen", MySqlDbType.VarChar).Value = this.Shenfen;
		mySqlCommand.Parameters.Add("@kaihuHang", MySqlDbType.VarChar).Value = this.KaihuHang;
		mySqlCommand.Parameters.Add("@kaihuName", MySqlDbType.VarChar).Value = this.KaihuName;
		mySqlCommand.Parameters.Add("@kaiHuhao", MySqlDbType.VarChar).Value = this.KaiHuhao;
		mySqlCommand.Parameters.Add("@usertell", MySqlDbType.VarChar).Value = this.Usertell;
		mySqlCommand.Parameters.Add("@userCard", MySqlDbType.VarChar).Value = this.UserCard;
		mySqlCommand.Parameters.Add("@phone", MySqlDbType.VarChar).Value = this.Phone;
		mySqlCommand.Parameters.Add("@userAdd", MySqlDbType.VarChar).Value = this.UserAdd;
		mySqlCommand.Parameters.Add("@addTime", MySqlDbType.VarChar).Value = this.AddTime;
		mySqlCommand.Parameters.Add("@userPwd", MySqlDbType.VarChar).Value = this.UserPwd;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
		mySqlCommand.Parameters.Add("@show", MySqlDbType.VarChar).Value = this.Show;
		mySqlCommand.Parameters.Add("@userPath", MySqlDbType.VarChar).Value = this.UserPath;
		mySqlCommand.Parameters.Add("@userPwd1", MySqlDbType.VarChar).Value = this.UserPwd1;
		mySqlCommand.Parameters.Add("@fenzhi", MySqlDbType.VarChar).Value = this.Fenzhi;
		mySqlCommand.Parameters.Add("@dian", MySqlDbType.VarChar).Value = this.Dian;
		mySqlCommand.Parameters.Add("@jiangjin", MySqlDbType.VarChar).Value = this.Jiangjin;
		mySqlCommand.Parameters.Add("@fanben", MySqlDbType.Int16).Value = this.Fanben;
		mySqlCommand.Parameters.Add("@zuozong", MySqlDbType.Int16).Value = this.Zuozong;
		mySqlCommand.Parameters.Add("@youzong", MySqlDbType.Int16).Value = this.Youzong;
		mySqlCommand.Parameters.Add("@server", MySqlDbType.VarChar).Value = this.Server;
		mySqlCommand.Parameters.Add("@apptime", MySqlDbType.VarChar).Value = this.Apptime;
		mySqlCommand.Parameters.Add("@pitime", MySqlDbType.VarChar).Value = this.Pitime;
		mySqlCommand.Parameters.Add("@all", MySqlDbType.VarChar).Value = this.All;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from UserMain where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
		MySqlCommand mySqlCommand = database.CreateCmd("update UserMain set userName=@userName,tuiJianName=@tuiJianName,guanLiName=@guanLiName,usertype=@usertype,trueName=@trueName,tuiJianPath=@tuiJianPath,shenfen=@shenfen,kaihuHang=@kaihuHang,kaihuName=@kaihuName,kaiHuhao=@kaiHuhao,usertell=@usertell,userCard=@userCard,phone=@phone,userAdd=@userAdd,addTime=@addTime,userPwd=@userPwd,money=@money,show=@show,userPath=@userPath,userPwd1=@userPwd1,fenzhi=@fenzhi,dian=@dian,jiangjin=@jiangjin,fanben=@fanben,zuozong=@zuozong,youzong=@youzong,server=@server,apptime=@apptime,pitime=@pitime,all=@all where id=" + this.Id);
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@tuiJianName", MySqlDbType.VarChar).Value = this.TuiJianName;
		mySqlCommand.Parameters.Add("@guanLiName", MySqlDbType.VarChar).Value = this.GuanLiName;
		mySqlCommand.Parameters.Add("@usertype", MySqlDbType.VarChar).Value = this.Usertype;
		mySqlCommand.Parameters.Add("@trueName", MySqlDbType.VarChar).Value = this.TrueName;
		mySqlCommand.Parameters.Add("@tuiJianPath", MySqlDbType.VarChar).Value = this.TuiJianPath;
		mySqlCommand.Parameters.Add("@shenfen", MySqlDbType.VarChar).Value = this.Shenfen;
		mySqlCommand.Parameters.Add("@kaihuHang", MySqlDbType.VarChar).Value = this.KaihuHang;
		mySqlCommand.Parameters.Add("@kaihuName", MySqlDbType.VarChar).Value = this.KaihuName;
		mySqlCommand.Parameters.Add("@kaiHuhao", MySqlDbType.VarChar).Value = this.KaiHuhao;
		mySqlCommand.Parameters.Add("@usertell", MySqlDbType.VarChar).Value = this.Usertell;
		mySqlCommand.Parameters.Add("@userCard", MySqlDbType.VarChar).Value = this.UserCard;
		mySqlCommand.Parameters.Add("@phone", MySqlDbType.VarChar).Value = this.Phone;
		mySqlCommand.Parameters.Add("@userAdd", MySqlDbType.VarChar).Value = this.UserAdd;
		mySqlCommand.Parameters.Add("@addTime", MySqlDbType.VarChar).Value = this.AddTime;
		mySqlCommand.Parameters.Add("@userPwd", MySqlDbType.VarChar).Value = this.UserPwd;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
		mySqlCommand.Parameters.Add("@show", MySqlDbType.VarChar).Value = this.Show;
		mySqlCommand.Parameters.Add("@userPath", MySqlDbType.VarChar).Value = this.UserPath;
		mySqlCommand.Parameters.Add("@userPwd1", MySqlDbType.VarChar).Value = this.UserPwd1;
		mySqlCommand.Parameters.Add("@fenzhi", MySqlDbType.VarChar).Value = this.Fenzhi;
		mySqlCommand.Parameters.Add("@dian", MySqlDbType.VarChar).Value = this.Dian;
		mySqlCommand.Parameters.Add("@jiangjin", MySqlDbType.VarChar).Value = this.Jiangjin;
		mySqlCommand.Parameters.Add("@fanben", MySqlDbType.Int16).Value = this.Fanben;
		mySqlCommand.Parameters.Add("@zuozong", MySqlDbType.Int16).Value = this.Zuozong;
		mySqlCommand.Parameters.Add("@youzong", MySqlDbType.Int16).Value = this.Youzong;
		mySqlCommand.Parameters.Add("@server", MySqlDbType.VarChar).Value = this.Server;
		mySqlCommand.Parameters.Add("@apptime", MySqlDbType.VarChar).Value = this.Apptime;
		mySqlCommand.Parameters.Add("@pitime", MySqlDbType.VarChar).Value = this.Pitime;
		mySqlCommand.Parameters.Add("@all", MySqlDbType.VarChar).Value = this.All;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<UserMainInfo> ReadList(string whereStr)
	{
		List<UserMainInfo> list = new List<UserMainInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from UserMain " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(UserMainInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
