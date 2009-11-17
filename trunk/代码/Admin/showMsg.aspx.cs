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
using XpCtrl;

public partial class Admin_showMsg : System.Web.UI.Page
{
    Bbs Msg;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"]);
        String conn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        Msg = new Bbs(conn);

        DataSet ds = Msg.ShowMessage(id);
        FvShowMsg.DataSource = ds;
        FvShowMsg.DataBind();
    }

    protected void LbReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("bbsManage.aspx");
    }

    protected void LbDelete_Click(object sender, EventArgs e)
    {
        String conn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        Msg = new Bbs(conn);

        Msg.DeleteMessage(id);
        Response.Redirect("bbsManage.aspx");
    }
}
