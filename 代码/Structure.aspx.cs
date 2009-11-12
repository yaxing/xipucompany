using System;

public partial class Structure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.Page.Title = "公司结构";
    }
}
