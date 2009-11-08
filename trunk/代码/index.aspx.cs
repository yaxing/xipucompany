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
    
    SqlConnection sqlConnection;
    SqlCommand commend;
    DataSet ds;
    Index indexNews = null;
    String strConn;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            indexNews = new Index(strConn);

            newsList.DataSource = indexNews.GetNewsList();
            newsList.DataBind();

            //try
            //{
            //    sqlConnection = new SqlConnection(strConn);
            //    sqlConnection.Open();
            //}
            //catch (Exception ee)
            //{
            //}
            //String sql = "select * from tbl_News order by changeTime desc";
            //commend = new SqlCommand(sql, sqlConnection);
            //SqlDataAdapter MyDataAdapter = new SqlDataAdapter(commend);
            //ds = new DataSet();
            //MyDataAdapter.Fill(ds);

            //newsList.DataSource = ds;
            //newsList.DataBind();

        }
    }

}
