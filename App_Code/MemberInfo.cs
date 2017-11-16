using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using MySql.Data.MySqlClient;
using System.Globalization;
public class MemberInfo
{
	private int _id;
	private string _userName;
	private string _password;
	private string _passwordA;
	private string _userPath;
	private string _tuiJianRen;
	private string _guanLiRen;
	private string _agencyName;
	private int _setMealId;
	private string _trueName;
	private string _cardNo;
	private string _kaiHuBank;
	private string _kaiHuAddress;
	private string _kaiHuAccount;
	private string _zhiFuBaoName;
	private string _zhiFuBao;
	private string _mobile;
	private string _qQ;
	private int _fenZhi;
	private DateTime _addDate;
	private int _status;
	private double _money;
	private int _zuoQu;
	private int _youQu;
	private double _jiangJin;
    private double _jiFen;
    private int p1;
    private string p2;
    private string p3;
    private string p4;
    private string p5;
    private string p6;
    private string p7;
    private string p8;
    private int p9;
    private string p10;
    private string p11;
    private string p12;
    private string p13;
    private string p14;
    private string p15;
    private string p16;
    private int p17;
    private DateTime dateTime;
    private int p18;
    private double p19;
    private int p20;
    private int p21;
    private double p22;
    private int p23;
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
	public string PasswordA
	{
		get
		{
			return this._passwordA;
		}
		set
		{
			this._passwordA = value;
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
	public string TuiJianRen
	{
		get
		{
			return this._tuiJianRen;
		}
		set
		{
			this._tuiJianRen = value;
		}
	}
	public string GuanLiRen
	{
		get
		{
			return this._guanLiRen;
		}
		set
		{
			this._guanLiRen = value;
		}
	}
	public string AgencyName
	{
		get
		{
			return this._agencyName;
		}
		set
		{
			this._agencyName = value;
		}
	}
	public int SetMealId
	{
		get
		{
			return this._setMealId;
		}
		set
		{
			this._setMealId = value;
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
	public string CardNo
	{
		get
		{
			return this._cardNo;
		}
		set
		{
			this._cardNo = value;
		}
	}
	public string KaiHuBank
	{
		get
		{
			return this._kaiHuBank;
		}
		set
		{
			this._kaiHuBank = value;
		}
	}
	public string KaiHuAddress
	{
		get
		{
			return this._kaiHuAddress;
		}
		set
		{
			this._kaiHuAddress = value;
		}
	}
	public string KaiHuAccount
	{
		get
		{
			return this._kaiHuAccount;
		}
		set
		{
			this._kaiHuAccount = value;
		}
	}
	public string ZhiFuBaoName
	{
		get
		{
			return this._zhiFuBaoName;
		}
		set
		{
			this._zhiFuBaoName = value;
		}
	}
	public string ZhiFuBao
	{
		get
		{
			return this._zhiFuBao;
		}
		set
		{
			this._zhiFuBao = value;
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
	public string QQ
	{
		get
		{
			return this._qQ;
		}
		set
		{
			this._qQ = value;
		}
	}
	public int FenZhi
	{
		get
		{
			return this._fenZhi;
		}
		set
		{
			this._fenZhi = value;
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
	public int ZuoQu
	{
		get
		{
			return this._zuoQu;
		}
		set
		{
			this._zuoQu = value;
		}
	}
	public int YouQu
	{
		get
		{
			return this._youQu;
		}
		set
		{
			this._youQu = value;
		}
	}
	public double JiangJin
	{
		get
		{
			return this._jiangJin;
		}
		set
		{
			this._jiangJin = value;
		}
	}
    public double JiFen
    {
        get
        {
            return this._jiFen;
        }
        set
        {
            this._jiFen = value;
        }
    }

    public MemberInfo(
        int id,
        string userName, 
        string password, 
        string passwordA, 
        string userPath,
        string tuiJianRen,
        string guanLiRen,
        string agencyName, 
        int setMealId,
        string trueName, 
        string cardNo,
        string kaiHuBank, 
        string kaiHuAddress, 
        string kaiHuAccount,
        string zhiFuBaoName,
        string zhiFuBao,
        string mobile,
        string qQ, 
        int fenZhi, 
        DateTime addDate,
        int status,
        double money, 
        int zuoQu, 
        int youQu, 
        double jiangJin,
        double jiFen)
	{
		this._id = id;
		this._userName = userName;
		this._password = password;
		this._passwordA = passwordA;
		this._userPath = userPath;
		this._tuiJianRen = tuiJianRen;
		this._guanLiRen = guanLiRen;
		this._agencyName = agencyName;
		this._setMealId = setMealId;
		this._trueName = trueName;
        this._cardNo = cardNo;
		this._kaiHuBank = kaiHuBank;
		this._kaiHuAddress = kaiHuAddress;
        this._kaiHuAccount = kaiHuAccount;
		this._zhiFuBaoName = zhiFuBaoName;
		this._zhiFuBao = zhiFuBao;
		this._mobile = mobile;
		this._qQ = qQ;
		this._fenZhi = fenZhi;
		this._addDate = addDate;
		this._status = status;
		this._money = money;
		this._zuoQu = zuoQu;
		this._youQu = youQu;
		this._jiangJin = jiangJin;
        this._jiFen = jiFen;
	}

    public MemberInfo(int id, string userName, string password, string passwordA, string userPath, string tuiJianRen,
        string guanLiRen, string agencyName, int setMealId, string kaiHuBank, string kaiHuAccount, string zhiFuBaoName, string zhiFuBao, string mobile, string qQ, int fenZhi, DateTime addDate, int status, double money, int zuoQu, int youQu, double jiangJin)
    {
        // TODO: Complete member initialization  
        this._id = id;
        this._userName = userName;
        this._password = password;
        this._passwordA = passwordA;
        this._userPath = userPath;
        this._tuiJianRen = tuiJianRen;
        this._guanLiRen = guanLiRen;
        this._agencyName = agencyName;
        this._setMealId = setMealId;
        //this._trueName = trueName;
        //this._cardNo = cardNo;
        this._kaiHuBank = kaiHuBank;
        //this._kaiHuAddress = kaiHuAddress;
        this._kaiHuAccount = kaiHuAccount;
        this._zhiFuBaoName = zhiFuBaoName;
        this._zhiFuBao = zhiFuBao;
        this._mobile = mobile;
        this._qQ = qQ;
        this._fenZhi = fenZhi;
        this._addDate = addDate;
        this._status = status;
        this._money = money;
        this._zuoQu = zuoQu;
        this._youQu = youQu;
        this._jiangJin = jiangJin;
        //this._jiFen = jiFen;
    }
	public static MemberInfo Read(int id)
	{
		MemberInfo result = null;
		Database database = new Database();
		MySqlDataReader mySqlDataReader = database.RunProcGetReader("select * from Member where id=" + id);
        DateTimeFormatInfo dtFormat = new DateTimeFormatInfo();
        dtFormat.ShortDatePattern = "yyyy-MM-dd H:mm:ss";


		while (mySqlDataReader.Read())
		{

            result = new MemberInfo(
                int.Parse(mySqlDataReader.GetValue(0).ToString()),
                mySqlDataReader.GetValue(1).ToString(),
                mySqlDataReader.GetValue(2).ToString(), 
                mySqlDataReader.GetValue(3).ToString(), 
                mySqlDataReader.GetValue(4).ToString(), 
                mySqlDataReader.GetValue(5).ToString(), 
                mySqlDataReader.GetValue(6).ToString(), 
                mySqlDataReader.GetValue(7).ToString(),          
                int.Parse(mySqlDataReader.GetValue(8).ToString()),
                mySqlDataReader.GetValue(9).ToString(),
                //mySqlDataReader.GetValue(10).ToString(),
                //mySqlDataReader.GetValue(11).ToString(), 
                mySqlDataReader.GetValue(12).ToString(), 
                //mySqlDataReader.GetValue(13).ToString(), 
                mySqlDataReader.GetValue(14).ToString(), 
                mySqlDataReader.GetValue(15).ToString(), 
                mySqlDataReader.GetValue(16).ToString(), 
                mySqlDataReader.GetValue(17).ToString(), 
                int.Parse(mySqlDataReader.GetValue(18).ToString()), 
                DateTime.Parse(mySqlDataReader.GetValue(19).ToString()), 
                //Convert.ToDateTime(mySqlDataReader.GetValue(19).ToString(),dtFormat),
                int.Parse(mySqlDataReader.GetValue(20).ToString()), 
                double.Parse(mySqlDataReader.GetValue(21).ToString()),
                int.Parse(mySqlDataReader.GetValue(22).ToString()), 
                int.Parse(mySqlDataReader.GetValue(23).ToString()), 
                double.Parse(mySqlDataReader.GetValue(24).ToString())
                //double.Parse(mySqlDataReader.GetValue(25).ToString())
                );
		}
		mySqlDataReader.Close();
		database.Dispose();
		return result;
	}
	public void Insert()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("insert into Member(userName,password,passwordA,userPath,tuiJianRen,guanLiRen,agencyName,setMealId,kaiHuBank,kaiHuAccount,zhiFuBaoName,zhiFuBao,mobile,qQ,fenZhi,addDate,status,money,zuoQu,youQu,jiangJin) values(@userName,@password,@passwordA,@userPath,@tuiJianRen,@guanLiRen,@agencyName,@setMealId,@kaiHuBank,@kaiHuAccount,@zhiFuBaoName,@zhiFuBao,@mobile,@qQ,@fenZhi,@addDate,@status,@money,@zuoQu,@youQu,@jiangJin)");
        //(tuiJianRen  houmian)
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@password", MySqlDbType.VarChar).Value = this.Password;
		mySqlCommand.Parameters.Add("@passwordA", MySqlDbType.VarChar).Value = this.PasswordA;
		mySqlCommand.Parameters.Add("@userPath", MySqlDbType.VarChar).Value = this.UserPath;
		mySqlCommand.Parameters.Add("@tuiJianRen", MySqlDbType.VarChar).Value = this.TuiJianRen;
		mySqlCommand.Parameters.Add("@guanLiRen", MySqlDbType.VarChar).Value = this.GuanLiRen;
		mySqlCommand.Parameters.Add("@agencyName", MySqlDbType.VarChar).Value = this.AgencyName;
		mySqlCommand.Parameters.Add("@setMealId", MySqlDbType.Int16).Value = this.SetMealId;
		//mySqlCommand.Parameters.Add("@trueName", MySqlDbType.VarChar).Value = this.TrueName;
		//mySqlCommand.Parameters.Add("@cardNo", MySqlDbType.VarChar).Value = this.CardNo;
		mySqlCommand.Parameters.Add("@kaiHuBank", MySqlDbType.VarChar).Value = this.KaiHuBank;
        
		//mySqlCommand.Parameters.Add("@kaiHuAddress", MySqlDbType.VarChar).Value = this.KaiHuAddress;
		mySqlCommand.Parameters.Add("@kaiHuAccount", MySqlDbType.VarChar).Value = this.KaiHuAccount;
		mySqlCommand.Parameters.Add("@zhiFuBaoName", MySqlDbType.VarChar).Value = this.ZhiFuBaoName;
		mySqlCommand.Parameters.Add("@zhiFuBao", MySqlDbType.VarChar).Value = this.ZhiFuBao;
		mySqlCommand.Parameters.Add("@mobile", MySqlDbType.VarChar).Value = this.Mobile;
		mySqlCommand.Parameters.Add("@qQ", MySqlDbType.VarChar).Value = this.QQ;
        mySqlCommand.Parameters.Add("@fenZhi", MySqlDbType.Int16).Value = this.FenZhi;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@status", MySqlDbType.Int16).Value = this.Status;
		mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
        mySqlCommand.Parameters.Add("@zuoQu", MySqlDbType.Int16).Value = this.ZuoQu;
        mySqlCommand.Parameters.Add("@youQu", MySqlDbType.Int16).Value = this.YouQu;
		mySqlCommand.Parameters.Add("@jiangJin", MySqlDbType.VarChar).Value = this.JiangJin;
        //mySqlCommand.Parameters.Add("@jiFen", MySqlDbType.VarChar).Value = this.JiFen;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}

   
	public static void Delete(int id)
	{
		Database database = new Database();
		database.RunNonQurey("delete from Member where id=" + id);
	}
	public void Update()
	{
		Database database = new Database();
        MySqlCommand mySqlCommand = database.CreateCmd("update Member set userName=@userName,password=@password,passwordA=@passwordA,userPath=@userPath,tuiJianRen=@tuiJianRen,guanLiRen=@guanLiRen,agencyName=@agencyName,setMealId=@setMealId,kaiHuBank=@kaiHuBank,kaiHuAccount=@kaiHuAccount,zhiFuBaoName=@zhiFuBaoName,zhiFuBao=@zhiFuBao,mobile=@mobile,qQ=@qQ,fenZhi=@fenZhi,addDate=@addDate,status=@status,money=@money,zuoQu=@zuoQu,youQu=@youQu,jiangJin=@jiangJin where id=" + this.Id);
        //
		mySqlCommand.Parameters.Add("@userName", MySqlDbType.VarChar).Value = this.UserName;
		mySqlCommand.Parameters.Add("@password", MySqlDbType.VarChar).Value = this.Password;
		mySqlCommand.Parameters.Add("@passwordA", MySqlDbType.VarChar).Value = this.PasswordA;
		mySqlCommand.Parameters.Add("@userPath", MySqlDbType.VarChar).Value = this.UserPath;
		mySqlCommand.Parameters.Add("@tuiJianRen", MySqlDbType.VarChar).Value = this.TuiJianRen;
		mySqlCommand.Parameters.Add("@guanLiRen", MySqlDbType.VarChar).Value = this.GuanLiRen;
		mySqlCommand.Parameters.Add("@agencyName", MySqlDbType.VarChar).Value = this.AgencyName;
        mySqlCommand.Parameters.Add("@setMealId", MySqlDbType.Int16).Value = this.SetMealId;
		//mySqlCommand.Parameters.Add("@trueName", MySqlDbType.VarChar).Value = this.TrueName;
		//mySqlCommand.Parameters.Add("@cardNo", MySqlDbType.VarChar).Value = this.CardNo;
		mySqlCommand.Parameters.Add("@kaiHuBank", MySqlDbType.VarChar).Value = this.KaiHuBank;
		//mySqlCommand.Parameters.Add("@kaiHuAddress", MySqlDbType.VarChar).Value = this.KaiHuAddress;
		mySqlCommand.Parameters.Add("@kaiHuAccount", MySqlDbType.VarChar).Value = this.KaiHuAccount;
		mySqlCommand.Parameters.Add("@zhiFuBaoName", MySqlDbType.VarChar).Value = this.ZhiFuBaoName;
		mySqlCommand.Parameters.Add("@zhiFuBao", MySqlDbType.VarChar).Value = this.ZhiFuBao;
		mySqlCommand.Parameters.Add("@mobile", MySqlDbType.VarChar).Value = this.Mobile;
		mySqlCommand.Parameters.Add("@qQ", MySqlDbType.VarChar).Value = this.QQ;
        mySqlCommand.Parameters.Add("@fenZhi", MySqlDbType.Int16).Value = this.FenZhi;
		mySqlCommand.Parameters.Add("@addDate", MySqlDbType.VarChar).Value = this.AddDate;
        mySqlCommand.Parameters.Add("@status", MySqlDbType.Int16).Value = this.Status;
	    mySqlCommand.Parameters.Add("@money", MySqlDbType.VarChar).Value = this.Money;
        mySqlCommand.Parameters.Add("@zuoQu", MySqlDbType.Int16).Value = this.ZuoQu;
        mySqlCommand.Parameters.Add("@youQu", MySqlDbType.Int16).Value = this.YouQu;
		mySqlCommand.Parameters.Add("@jiangJin", MySqlDbType.VarChar).Value = this.JiangJin;
        //mySqlCommand.Parameters.Add("@jiFen", MySqlDbType.VarChar).Value = this.JiFen;
		mySqlCommand.ExecuteNonQuery();
		database.Dispose();
	}
	public static List<MemberInfo> ReadList(string whereStr)
	{
		List<MemberInfo> list = new List<MemberInfo>();
		Database database = new Database();
		DataView defaultView = database.RunProc("select * from Member " + whereStr).Tables[0].DefaultView;
		for (int i = 0; i < defaultView.Count; i++)
		{
			list.Add(MemberInfo.Read(int.Parse(defaultView[i]["id"].ToString())));
		}
		database.Dispose();
		return list;
	}
}
