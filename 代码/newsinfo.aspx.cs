using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using XpCtrl;

public partial class newsinfo : System.Web.UI.Page
{
    String strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["newsID"] != null)
            {
                this.PageInfo_Load();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('错误的新闻索引值');location.href('news.aspx')</script>");
            }
        }
        Add_Click_Num();
    }

    protected void PageInfo_Load()
    {
        int newsID = Convert.ToInt32(Request.QueryString["newsID"]);
        XpNews newsInfo = new XpNews(strDbConn);
        DataSet ds = new DataSet();
        ds = newsInfo.GetNewsInfo(newsID);
        this.newsTitleLB.Text = ds.Tables[0].Rows[0][1].ToString();
        String content = Convert.ToString(ds.Tables[0].Rows[0]["content"]);
        this.newsContentLT.Text = Server.HtmlDecode(content);
        this.authorLB.Text = ds.Tables[0].Rows[0][4].ToString();
        this.changeDateLB.Text = ds.Tables[0].Rows[0][6].ToString();
        this.clickNumLB.Text = ds.Tables[0].Rows[0][7].ToString();
    }

    protected void Add_Click_Num()
    {
        int newsID = Convert.ToInt32(Request.QueryString["newsID"]);
        XpNews newsInfo = new XpNews(strDbConn);
        newsInfo.AddNewsClick(newsID);
    }
}
