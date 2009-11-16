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

public partial class Admin_MasterPageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "云南希普防雷工程有限公司网站后台管理系统";
        Response.CacheControl = "No-cache";
        if (Session["admin"] == null || Session["admin"].ToString().Length == 0)
        {
            Response.Write("<script>location.href('logOut.aspx');</script>");
        }

    }
    protected void logOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Write("<script>location.href('logOut.aspx');</script>");
    }
}
