using System;
using System.Configuration;
using System.Data;
using XpCtrl;

public partial class TecClassify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindSource();
    }

    private void BindSource()
    {
        int type = Convert.ToInt32(Request.QueryString["type"]);
        string title = "";
        switch(type)
        {
            case 1:
                title = "技术规范";
                TecClass.Text = "技术规范";
                break;
            case 2:
                title = "安装技术";
                TecClass.Text = "安装技术";
                break;
            case 3:
                title = "参数解释";
                TecClass.Text = "参数解释";
                break;
            case 4:
                title = "典型应用";
                TecClass.Text = "典型应用";
                break;
        }
        Page.Master.Page.Title = title;

        DataSet ds = getDS(type);

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

    private DataSet getDS(int type)
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        XpTec xpTec = new XpTec(strDbConn);

        DataSet ds = xpTec.GetTecByType(type);
        return ds;
    }
}
