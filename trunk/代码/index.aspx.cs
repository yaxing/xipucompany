using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using XpCtrl;
using DbConnect;

public partial class index : System.Web.UI.Page
{
    
    DataSet ds;
    Index indexNews = null;
    String strConn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.Title = "云南希普防雷工程有限公司";
            strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            indexNews = new Index(strConn);

            ds = indexNews.GetNewsList();

            if (ds.Tables[0].Rows.Count==0)
            {
                newsListTrue.Visible = false;
                newsListFalse.Visible = true;
            }
            else
            {
                newsList.DataSource = ds;
                newsList.DataBind();
                newsListFalse.Visible = false;
                newsListTrue.Visible = true;
            }
        }
    }

}
