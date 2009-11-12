using System;

public partial class Culture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.Page.Title = "企业文化";
    }
}
