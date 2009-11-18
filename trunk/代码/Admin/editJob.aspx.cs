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

public partial class Admin_editJob : System.Web.UI.Page
{
    HR jobE;
    DataSet ds;
    int id;
    String[] args;
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
           
            ((Label)FvJobInfo.FindControl("titleEpt")).Visible = false;
            ((Label)FvJobInfo.FindControl("titleL")).Visible = false;
            ((Label)FvJobInfo.FindControl("dptEpt")).Visible = false;
            ((Label)FvJobInfo.FindControl("posEpt")).Visible = false;
            ((Label)FvJobInfo.FindControl("posL")).Visible = false;
            ((Label)FvJobInfo.FindControl("slrEpt")).Visible = false;
            ((Label)FvJobInfo.FindControl("contactEpt")).Visible = false;
            ((Label)FvJobInfo.FindControl("contentL")).Visible = false;
            ((Label)FvJobInfo.FindControl("contentEpt")).Visible = false;
        }
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        int curId = Convert.ToInt32(Session["currentJob"].ToString());
        Session.Remove("currentJob");
        Response.Redirect("jobDetail.aspx?ID="+curId);
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        jobE = new HR(strConn);

        args = new String[10];

        args[0] = ((TextBox)FvJobInfo.FindControl("tbTitle")).Text;
        args[1] = ((TextBox)FvJobInfo.FindControl("tbDepartment")).Text;
        args[2] = ((TextBox)FvJobInfo.FindControl("tbPosition")).Text;
        args[3] = ((TextBox)FvJobInfo.FindControl("tbSalary")).Text;
        args[4] = ((TextBox)FvJobInfo.FindControl("tbContent")).Text;
        args[5] = ((TextBox)FvJobInfo.FindControl("tbAuthor")).Text;
        args[6] = ((TextBox)FvJobInfo.FindControl("tbContact")).Text;

        if (Check() == 0)
        {
            //Response.Write(t.ToString()+","+args[0]);
            int curId = Convert.ToInt32(Session["currentJob"].ToString());
            //Response.Write(curId);
            int n = jobE.UpdateJob(curId, args);
            if (n == 0)
            {
                Response.Write("<script>alert('修改失败，请重新修改！');</script>");
            }
            else
            {
                Session.Remove("currentJob");
                Response.Write("<script>alert('修改成功！');</script>");
                Response.Write("<script>location.href('jobDetail.aspx?ID=" + curId + "');</script>");
            }
        }
    }

    public int Check()
    {
        int faults = 0;

        ((Label)FvJobInfo.FindControl("titleEpt")).Visible = false;
        ((Label)FvJobInfo.FindControl("titleL")).Visible = false;
        ((Label)FvJobInfo.FindControl("dptEpt")).Visible = false;
        ((Label)FvJobInfo.FindControl("posEpt")).Visible = false;
        ((Label)FvJobInfo.FindControl("posL")).Visible = false;
        ((Label)FvJobInfo.FindControl("slrEpt")).Visible = false;
        ((Label)FvJobInfo.FindControl("contactEpt")).Visible = false;
        ((Label)FvJobInfo.FindControl("contentL")).Visible = false;
        ((Label)FvJobInfo.FindControl("contentEpt")).Visible = false;

        if (args[0].Length > 8)
        {
            ((Label)FvJobInfo.FindControl("titleL")).Visible = true;
            faults = 1;
        }
        if (args[0].Length <= 0)
        {
            ((Label)FvJobInfo.FindControl("titleEpt")).Visible = true;
            faults = 1;
        }
        if (args[1].Length <= 0)
        {
            ((Label)FvJobInfo.FindControl("dptEpt")).Visible = true;
            faults = 1;
        }
        if (args[2].Length > 8)
        {
            ((Label)FvJobInfo.FindControl("posL")).Visible = true;
            faults = 1;
        }
        if (args[2].Length <= 0)
        {
            ((Label)FvJobInfo.FindControl("posEpt")).Visible = true;
            faults = 1;
        }
        if (args[3].Length <= 0)
        {
            ((Label)FvJobInfo.FindControl("slrEpt")).Visible = true;
            faults = 1;
        }
        if (args[4].Length > 500)
        {
            ((Label)FvJobInfo.FindControl("contentL")).Visible = true;
            faults = 1;
        }
        if (args[4].Length <= 0)
        {
            ((Label)FvJobInfo.FindControl("contentEpt")).Visible = true;
            faults = 1;
        }
        if (args[6].Length <= 0)
        {
            ((Label)FvJobInfo.FindControl("contactEpt")).Visible = true;
            faults = 1;
        }
        return faults;
    }
}
