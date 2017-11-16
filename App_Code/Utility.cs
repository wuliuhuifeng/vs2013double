using System;
using System.Globalization;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
public class Utility
{
	public static string UrlEncode(string strEncode)
	{
		string text = "";
		char[] array = strEncode.ToCharArray();
		for (int i = 0; i < array.Length; i++)
		{
			text += ((short)array[i]).ToString("X4");
		}
		return text;
	}
	public static string UrlDecode(string strDecode)
	{
		string text = "";
		for (int i = 0; i < strDecode.Length / 4; i++)
		{
			text += (char)short.Parse(strDecode.Substring(i * 4, 4), NumberStyles.HexNumber);
		}
		return text;
	}
	public static string URLString(string url)
	{
		StringBuilder stringBuilder = new StringBuilder();
		for (int i = 0; i < url.Length; i++)
		{
			if (!char.IsLetterOrDigit(url[i]))
			{
				stringBuilder.Append("-");
			}
			else
			{
				stringBuilder.Append(url[i]);
			}
		}
		return stringBuilder.ToString().Replace("--", "-").TrimEnd(new char[]
		{
			'-'
		});
	}
	public static string SQLString(string str)
	{
		return str.Replace("'", "").Replace("\"", "");
	}
	public static string StringToSmal(string str, int maxlenth)
	{
		string text = Regex.Replace(str, "</?(?!v)[^>]*>", "", RegexOptions.IgnoreCase).Trim();
		text = Regex.Replace(text, "\\s+", "", RegexOptions.IgnoreCase);
		if (text.Length >= maxlenth)
		{
			return text.Substring(0, maxlenth - 1) + "…";
		}
		return text;
	}
	public static string FirstToLower(string str)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (str.Length > 0)
		{
			char[] array = str.ToCharArray();
			for (int i = 0; i < array.Length; i++)
			{
				if (i == 0)
				{
					stringBuilder.Append(array[i].ToString().ToLower());
				}
				else
				{
					stringBuilder.Append(array[i].ToString());
				}
			}
		}
		return stringBuilder.ToString();
	}
	public static string FirstToUpper(string str)
	{
		StringBuilder stringBuilder = new StringBuilder();
		if (str.Length > 0)
		{
			char[] array = str.ToCharArray();
			for (int i = 0; i < array.Length; i++)
			{
				if (i == 0)
				{
					stringBuilder.Append(array[i].ToString().ToUpper());
				}
				else
				{
					stringBuilder.Append(array[i].ToString());
				}
			}
		}
		return stringBuilder.ToString();
	}
	public static string ToUrlCode(string str, string codeType)
	{
		return HttpUtility.UrlEncode(str, Encoding.GetEncoding(codeType));
	}
}
