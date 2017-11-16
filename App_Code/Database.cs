using System;
using System.Data;
using System.Data.OleDb;
using System.Web;
using System.Configuration;
using MySql.Data.MySqlClient;
public class Database
{
	private string ConnStr;
	//private OleDbConnection Conn;
    private MySqlConnection Conn;
	public Database()
	{
		//this.ConnStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/data/adskljf_hlzg.config");
        //this.ConnStr = "server=localhost;uid=root;pwd=;Charset=utf8;Database=shuangguizhi";
        this.ConnStr = ConfigurationManager.ConnectionStrings["SQLConnString"].ConnectionString;
	}
    public MySqlConnection ReturnConn()
	{
		try
		{
            this.Conn = new MySqlConnection(this.ConnStr);
			this.Conn.Open();
		}
		catch
		{
			this.Dispose();
            this.Conn = new MySqlConnection(this.ConnStr);
			this.Conn.Open();
		}
		return this.Conn;
	}
	public void Dispose()
	{
		if (this.Conn != null)
		{
			this.Conn.Close();
			this.Conn.Dispose();
		}
		GC.Collect();
	}
	public void RunNonQurey(string SQL)
	{
		this.Conn = this.ReturnConn();
		MySqlCommand mySqlCommand = this.CreateCmd(SQL, this.Conn);
		try
		{
            mySqlCommand.ExecuteNonQuery();
		}
		catch (Exception ex)
		{
			throw new Exception(ex.ToString());
		}
		this.Dispose();
	}
    public MySqlCommand CreateCmd(string SQL, MySqlConnection Conn)
	{
        return new MySqlCommand(SQL, Conn);
	}
    public MySqlCommand CreateCmd(string SQL)
	{
		this.Conn = this.ReturnConn();
        return new MySqlCommand(SQL, this.Conn);
	}
    public MySqlDataAdapter CreateDa(string SQL)
	{
		this.Conn = this.ReturnConn();
		return new MySqlDataAdapter(SQL, this.Conn);
	}
	public DataSet RunProc(string SQL)
	{
		this.Conn = this.ReturnConn();
        MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(SQL, this.Conn);
		DataSet dataSet = new DataSet();
		try
		{
            mySqlDataAdapter.Fill(dataSet);
		}
		catch (Exception ex)
		{
			throw ex;
		}
		this.Dispose();
		return dataSet;
	}
	public DataSet RunProc(string SQL, DataSet Ds, string tablename)
	{
		this.Conn = this.ReturnConn();
        MySqlDataAdapter mySqlDataAdapter = this.CreateDa(SQL);
		try
		{
            mySqlDataAdapter.Fill(Ds, tablename);
		}
		catch (Exception ex)
		{
			throw ex;
		}
		this.Dispose();
		return Ds;
	}
	public DataSet RunProc(string SQL, DataSet Ds, int StartIndex, int PageSize, string tablename)
	{
		this.Conn = this.ReturnConn();
        MySqlDataAdapter mySqlDataAdapter = this.CreateDa(SQL);
		try
		{
            mySqlDataAdapter.Fill(Ds, StartIndex, PageSize, tablename);
		}
		catch (Exception ex)
		{
			throw ex;
		}
		this.Dispose();
		return Ds;
	}
	public MySqlDataReader RunProcGetReader(string SQL)
	{
		this.Conn = this.ReturnConn();
        MySqlCommand mySqlCommand = this.CreateCmd(SQL, this.Conn);
        MySqlDataReader result;
		try
		{
            result = mySqlCommand.ExecuteReader(CommandBehavior.Default);
		}
		catch (Exception ex)
		{
			throw new Exception(ex.ToString());
		}
		return result;
	}
	public DataView RunProcGetDataView(string SQL)
	{
		this.Conn = this.ReturnConn();
        MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(SQL, this.Conn);
		DataSet dataSet = new DataSet();
		try
		{
            mySqlDataAdapter.Fill(dataSet);
		}
		catch (Exception ex)
		{
			throw ex;
		}
		this.Dispose();
		return dataSet.Tables[0].DefaultView;
	}
	public int RunProcGetCount(string sql)
	{
		int result = 0;
		try
		{
			MySqlDataReader mySqlDataReader = this.CreateCmd(sql).ExecuteReader();
            if (mySqlDataReader.Read())
			{
                result = int.Parse(mySqlDataReader.GetValue(0).ToString());
			}
            mySqlDataReader.Close();
		}
		catch
		{
		}
		this.Dispose();
		return result;
	}
	public bool ExistData(string SQL)
	{
		bool result = false;
		this.Conn = this.ReturnConn();
        MySqlDataReader mySqlDataReader = this.CreateCmd(SQL, this.Conn).ExecuteReader();
        if (mySqlDataReader.Read())
		{
			this.Dispose();
			result = true;
		}
		return result;
	}
	public DataView RunProcGetDataView(string sql, int rowOffset, int rowLimit, out int count)
	{
		count = this.RunProcGetCount("select count(*) from (" + sql + ") as A");
		DataTable dataTable = new DataTable();
		dataTable.Columns.Clear();
        MySqlDataReader mySqlDataReader = this.RunProcGetReader(sql);
        for (int i = 0; i < mySqlDataReader.FieldCount; i++)
		{
            dataTable.Columns.Add(mySqlDataReader.GetName(i), mySqlDataReader.GetFieldType(i));
		}
		int num = 0;
        while (mySqlDataReader.Read())
		{
			if (num > rowOffset - 1 && num < rowOffset + rowLimit)
			{
				DataRow dataRow = dataTable.NewRow();
                for (int j = 0; j < mySqlDataReader.FieldCount; j++)
				{
                    dataRow[j] = mySqlDataReader[j];
				}
				dataTable.Rows.Add(dataRow);
			}
			if (num >= rowOffset + rowLimit)
			{
				break;
			}
			num++;
		}
        mySqlDataReader.Close();
		this.Dispose();
		return dataTable.DefaultView;
	}
}
