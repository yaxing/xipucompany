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
using DbConnect;


public partial class ProjectsIntro : System.Web.UI.Page
{
    Projects projectsIntro = null;
    String strConn;
    protected void Page_Load(object sender, EventArgs e)
    {
        int proId = Convert.ToInt32(Request.QueryString["proId"]);
        if (!Page.IsPostBack)
        {
            this.Title = "云南希普防雷工程有限公司";
            strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            projectsIntro = new Projects(strConn);

            proIntro.DataSource = projectsIntro.GetProjectsDetails(proId);
            proIntro.DataBind();

        }

    }
}
