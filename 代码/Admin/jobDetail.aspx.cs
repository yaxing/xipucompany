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

public partial class Admin_jobDetail : System.Web.UI.Page
{
    HR jobE;
    DataSet ds;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            id = Convert.ToInt32(Request.QueryString["ID"]);
            String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            jobE = new HR(strConn);

            ds = jobE.GetJobDetail(id);
            FvJobInfo.DataSource = ds;
            FvJobInfo.DataBind();
            if (Session["currentJob"] == null)
            {
                Session.Add("currentJob", id);
            }
            else
            {
                Session.Remove("currentJob");
                Session.Add("currentJob", id);
            }
        }
    }

    protected void edit_Click(object sender, EventArgs e)
    {
        int curId = Convert.ToInt32(Session["currentJob"].ToString());
        Session.Remove("currentJob");
        Response.Redirect("editJob.aspx?ID="+curId);
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        int curId = Convert.ToInt32(Session["currentJob"].ToString());
        Session.Remove("currentJob");
        String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        jobE = new HR(strConn);
        jobE.DeleteJob(curId);
        Response.Write("<script>alert('删除成功！');</script>");
        Response.Write("<script>location.href('HrManage.aspx');</script>");
    }
}
