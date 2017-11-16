using System;
using System.Data.OleDb;
using System.Text;
using System.Web;
using MySql.Data.MySqlClient;
public class Common
{
	public static string GetTagsString(string tagsStr)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (tagsStr.Length > 0)
		{
			tagsStr = tagsStr.Replace("，", ",");
			string[] array = tagsStr.Split(new char[]
			{
				','
			});
			for (int i = 0; i < array.Length; i++)
			{
				stringBuilder.AppendLine(string.Concat(new string[]
				{
					"<a href='tag_",
					Utility.UrlEncode(array[i]),
					"_1.aspx'>",
					array[i],
					"</a>&nbsp;&nbsp;"
				}));
			}
		}
		return stringBuilder.ToString();
	}
	public void AddArticle(int id, string title, string tags, string intro, string content, string links)
	{
		Database database = new Database();
		try
		{
			MySqlCommand mySqlCommand = database.CreateCmd("insert into article (id,title,tags,intro,[content],links) values(@id,@title,@tags,@intro,@content,@links)");
            mySqlCommand.Parameters.Add("@id", MySqlDbType.Int16).Value = id;
            mySqlCommand.Parameters.Add("@title", MySqlDbType.VarChar).Value = title;
            mySqlCommand.Parameters.Add("@tags", MySqlDbType.VarChar).Value = tags;
            mySqlCommand.Parameters.Add("@intro", MySqlDbType.VarChar).Value = intro;
            mySqlCommand.Parameters.Add("@content", MySqlDbType.VarChar).Value = content;
            mySqlCommand.Parameters.Add("@links", MySqlDbType.VarChar).Value = links;
			mySqlCommand.ExecuteNonQuery();
			database.Dispose();
			if (tags.Length > 0)
			{
				string[] array = tags.Replace("，", ",").Split(new char[]
				{
					','
				});
				for (int i = 0; i < array.Length; i++)
				{
					MySqlCommand mySqlCommand2 = database.CreateCmd("select * from tags where name=@name");
                    mySqlCommand2.Parameters.Add("@name", MySqlDbType.VarChar).Value = array[i];
                    MySqlDataReader mySqlDataReader = mySqlCommand2.ExecuteReader();
					int num = 0;
					int num2 = 0;
					bool flag = false;
                    if (mySqlDataReader.Read())
					{
                        num = (int)mySqlDataReader["id"];
                        num2 = (int)mySqlDataReader["hits"];
						flag = true;
					}
                    mySqlDataReader.Close();
					if (!flag)
					{
						database.RunNonQurey("insert into tags([name],hits) values('" + array[i].Replace("'", "").Replace("\"", "") + "',1)");
					}
					else
					{
						database.RunNonQurey(string.Concat(new object[]
						{
							"update tags set hits=",
							num2 + 1,
							" where id=",
							num
						}));
					}
					database.Dispose();
				}
			}
			database.Dispose();
			HttpContext.Current.Response.Write("成功");
		}
		catch (Exception ex)
		{
			database.Dispose();
			HttpContext.Current.Response.Write(ex.Message);
		}
	}
}
