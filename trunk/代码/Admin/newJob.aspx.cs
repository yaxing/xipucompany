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

public partial class Admin_newJob : System.Web.UI.Page
{
    HR jobE;
    DataSet ds;
    int id;
    String[] args;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            titleEpt.Visible = false;
            titleL.Visible = false;
            dptEpt.Visible = false;
            posEpt.Visible = false;
            posL.Visible = false;
            slrEpt.Visible = false;
            contactEpt.Visible = false;
            contentL.Visible = false;
            contentEpt.Visible = false;
        }
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("HrManage.aspx");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        jobE = new HR(strConn);

        args = new String[10];

        args[0] = tbTitle.Text;
        args[1] = tbDepartment.Text;
        args[2] = tbPosition.Text;
        args[3] = tbSalary.Text;
        args[4] = tbContent.Text;
        args[5] = tbAuthor.Text;
        args[6] = tbContact.Text;

        if (Check() == 0)
        {

            int n = jobE.InsertJob(args);
            ds = jobE.GetJobList();
            int curId = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            //Response.Write(args[0] + "+" + args[1] + "+" + args[2] + "+" + args[3] + "+" + args[4] + "+" + args[5] + "+" + args[6] + "+" + n);


            if (n == 0)
            {
                Response.Write("<script>alert('发布失败，请重新操作！');</script>");
            }
            else
            {
                Response.Write("<script>alert('发布成功！');</script>");
                Response.Write("<script>location.href('jobDetail.aspx?ID=" + curId + "');</script>");
            }
        }
    }

    public int Check() 
    {
        int faults = 0;

        titleEpt.Visible = false;
        titleL.Visible = false;
        dptEpt.Visible = false;
        posEpt.Visible = false;
        posL.Visible = false;
        slrEpt.Visible = false;
        contactEpt.Visible = false;
        contentL.Visible = false;
        contentEpt.Visible = false;

        if (args[0].Length > 8)
        {
            titleL.Visible = true;
            faults = 1;
        }
        if (args[0].Length <= 0) 
        {
            titleEpt.Visible = true;
            faults = 1;
        }
        if (args[1].Length <= 0) 
        {
            dptEpt.Visible = true;
            faults = 1;
        }
        if (args[2].Length > 8) 
        {
            posL.Visible = true;
            faults = 1;
        }
        if (args[2].Length <= 0) 
        {
            posEpt.Visible = true;
            faults = 1;
        }
        if (args[3].Length <= 0) 
        {
            slrEpt.Visible = true;
            faults = 1;
        }
        if (args[4].Length > 500) 
        {
            contentL.Visible = true;
            faults = 1;
        }
        if (args[4].Length <= 0)
        {
            contentEpt.Visible = true;
            faults = 1;
        }
        if (args[6].Length <= 0)
        {
            contactEpt.Visible = true;
            faults = 1;
        }
        return faults;
    }
}
