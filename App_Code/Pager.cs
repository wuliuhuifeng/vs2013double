using System;
using System.Text;
public class Pager
{
	private int _pageSize = 10;
	private int _recordCount;
	private int _currentPage = 1;
	private string _urlFormat = "";
	private int _pageCount = 1;
	private int _numberButton = 5;
	private string _firstUrl = "";
	public int PageSize
	{
		get
		{
			return this._pageSize;
		}
		set
		{
			this._pageSize = value;
		}
	}
	public int RecordConnt
	{
		get
		{
			return this._recordCount;
		}
		set
		{
			this._recordCount = value;
		}
	}
	public int CurrentPage
	{
		get
		{
			return this._currentPage;
		}
		set
		{
			this._currentPage = value;
		}
	}
	public string UrlFormat
	{
		get
		{
			return this._urlFormat;
		}
		set
		{
			this._urlFormat = value;
		}
	}
	public int PageCount
	{
		get
		{
			if (this._recordCount % this._pageSize != 0)
			{
				return this._recordCount / this._pageSize + 1;
			}
			return this._recordCount / this._pageSize;
		}
	}
	public int NumberButton
	{
		get
		{
			return this._numberButton;
		}
		set
		{
			this._numberButton = value;
		}
	}
	public string FirstUrl
	{
		get
		{
			return this._firstUrl;
		}
		set
		{
			this._firstUrl = value;
		}
	}
	public string CreaterHtml()
	{
		string result = "";
		this._pageCount = ((this._recordCount % this._pageSize == 0) ? (this._recordCount / this._pageSize) : (this._recordCount / this._pageSize + 1));
		if (this._currentPage > this._pageCount)
		{
			this._currentPage = this._pageCount;
		}
		if (this._currentPage < 1)
		{
			this._currentPage = 1;
		}
		string text = "";
		string text2 = "";
		string text3 = "";
		string text4 = "";
		if (this._currentPage > 1)
		{
			if (this._firstUrl == "")
			{
				text = "<a href='" + string.Format(this._urlFormat, "1") + "'>首页</a> ";
			}
			else
			{
				text = "<a href='" + this._firstUrl + "'>首页</a> ";
			}
			if (this._currentPage != 2)
			{
				text3 = "<a href='" + string.Format(this._urlFormat, this._currentPage - 1) + "'>上一页</a> ";
			}
			else
			{
				text3 = "<a href='" + string.Format(this._urlFormat, "") + "'>上一页</a> ";
			}
		}
		if (this._currentPage != this._pageCount)
		{
			text2 = "<a href='" + string.Format(this._urlFormat, this._pageCount) + "'>尾页</a> ";
			text4 = "<a href='" + string.Format(this._urlFormat, this._currentPage + 1) + "'>下一页</a> ";
		}
		StringBuilder stringBuilder = new StringBuilder();
		int num = (this._currentPage % this._numberButton == 0 && this._currentPage / this._numberButton >= 1) ? (this._currentPage / this._numberButton - 1) : (this._currentPage / this._numberButton);
		int num2 = num * this._numberButton + 1;
		while (num2 <= num * this._numberButton + this._numberButton && num2 <= this._pageCount)
		{
			if (this._currentPage == num2)
			{
				stringBuilder.Append("<span class=\"cp\">" + num2 + "</span> ");
			}
			else
			{
				if (num2 == 1)
				{
					if (this._firstUrl == "")
					{
						stringBuilder.Append(string.Concat(new object[]
						{
							"<a href='",
							string.Format(this._urlFormat, "1"),
							"'>",
							num2,
							"</a> "
						}));
					}
					else
					{
						stringBuilder.Append(string.Concat(new object[]
						{
							"<a href='",
							this._firstUrl,
							"'>",
							num2,
							"</a> "
						}));
					}
				}
				else
				{
					stringBuilder.Append(string.Concat(new object[]
					{
						"<a href='",
						string.Format(this._urlFormat, num2),
						"'>",
						num2,
						"</a> "
					}));
				}
			}
			num2++;
		}
		if (this.PageCount > 1)
		{
			result = string.Concat(new string[]
			{
				text,
				text3,
				stringBuilder.ToString(),
				text4,
				text2
			});
		}
		return result;
	}
}
