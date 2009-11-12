using System;

public partial class Word : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.Page.Title = "总经理的话";
    }
}
