using System;

public partial class Situation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.Page.Title = "公司简介";
    }
}
