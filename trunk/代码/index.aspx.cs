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

public partial class index : System.Web.UI.Page
{
    SqlConnection sqlConnection;
    SqlCommand commend;
    DataSet ds;
    String strConn;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        strConn = "Data Source = localhost;Integrated Security = SSPI;Initial Catalog = xipu";
        try
        {
            sqlConnection = new SqlConnection(strConn);
            sqlConnection.Open();
        }
        catch (Exception ee)
        {
        }
        String sql = "select * from tbl_News order by changeTime desc";
        commend = new SqlCommand(sql, sqlConnection);
        SqlDataAdapter MyDataAdapter = new SqlDataAdapter(commend);
        ds = new DataSet();
        MyDataAdapter.Fill(ds);

        newsList.DataSource = ds;
        newsList.DataBind();
    }
}
