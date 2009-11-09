using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using XpCtrl;

public partial class news : System.Web.UI.Page
{
    private XpNews xpnews = null;
    private int is_all = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            xpnews = new XpNews(strDbConn);

            //分类列表
            string newstype = Request.QueryString["newstype"];
            if (newstype == null)
                is_all = 1;
            DataSet ds = xpnews.GetClassNews(newstype);
            if (is_all == 0 && ds.Tables[0].Rows.Count != 0)
            {
                xpNewsList.DataSource = ds;
                xpNewsList.DataBind();
            }
            else
            {
                xpNewsList.DataSource = xpnews.GetNews();
                xpNewsList.DataBind();
            }
        }
    }

    protected void xpNewsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        xpNewsList.PageIndex = e.NewPageIndex;

        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        int is_all= 0;
        string newstype = Request.QueryString["newstype"];

        if (newstype == null)
            is_all = 1;

        xpnews = new XpNews(strDbConn);

        if (is_all == 1)
        {
            xpNewsList.DataSource = xpnews.GetNews();
            xpNewsList.DataBind();
        }
        else
        {
            xpNewsList.DataSource = xpnews.GetClassNews(newstype);
            xpNewsList.DataBind();
        }
    }
}
