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

public partial class jobDetail : System.Web.UI.Page
{
    HR jobD = null;
    String strConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        int jobId = Convert.ToInt32(Request.QueryString["jobId"]);
        if (!Page.IsPostBack)
        {
            this.Title = "云南希普防雷工程有限公司";
            strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            jobD = new HR(strConn);

            
            jobShow.DataSource = jobD.GetJobDetail(jobId);
            jobShow.DataBind();

        }

    }
}
