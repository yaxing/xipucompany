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

public partial class projectImageShow : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "云南希普防雷工程有限公司";
        String source = Request.QueryString["path"];
        show.Src = source;
        //Response.Redirect("projectImageShow2.aspx?path="+source);
    }
}
