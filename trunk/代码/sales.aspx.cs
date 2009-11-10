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

public partial class sales : System.Web.UI.Page
{
    String strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.PageInfo_Load();  
        }
    }

    protected void PageInfo_Load()
    {
        XpSales salesinfo = new XpSales(strDbConn);
        DataSet ds = new DataSet();
        DataSet dr = new DataSet();
        ds = salesinfo.GetMarketingImage();
        dr = salesinfo.GetSalesInfo();
        this.SalesImage.ImageUrl = ds.Tables[0].Rows[0][1].ToString();
        this.SalesGridView.DataSource = dr;
        this.SalesGridView.DataBind();
    }

    protected void SalesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        SalesGridView.PageIndex = e.NewPageIndex;

        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

        XpSales salesinfo = new XpSales(strDbConn);
        SalesGridView.DataSource = salesinfo.GetSalesInfo();
        SalesGridView.DataBind();
    }
}
