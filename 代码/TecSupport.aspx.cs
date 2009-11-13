using System;
using System.Configuration;
using System.Data;
using XpCtrl;

public partial class TecSupport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.Page.Title = "技术文档";
        if (!IsPostBack)
            BindSource();
    }

    private void BindSource()
    {
        DataSet ds = getDS();

        if (ds.Tables[0].Rows.Count != 0)
        {
            XpTecList.DataSource = ds;
            XpTecList.DataBind();
        }
        else
        {
            XpTecList.Visible = false;
            Literal.Visible = true;
        }
    }

    private DataSet getDS()
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        XpTec xpTec = new XpTec(strDbConn);

        DataSet ds = xpTec.GetTecs();
        return ds;
    }
}
