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

public partial class customer : System.Web.UI.Page
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
        ds = salesinfo.GetCustomerInfo();
        this.CustomerGridView.DataSource = ds;
        this.CustomerGridView.DataBind();
    }

    protected void CustomerGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        CustomerGridView.PageIndex = e.NewPageIndex;

        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

        XpSales salesinfo = new XpSales(strDbConn);
        CustomerGridView.DataSource = salesinfo.GetCustomerInfo();
        CustomerGridView.DataBind();
    }
}
