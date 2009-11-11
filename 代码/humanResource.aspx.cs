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
using System.Drawing;

public partial class humanResource : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        SourceBind();


    }

    protected void SourceBind()
    {

        this.Title = "云南希普防雷工程有限公司";
        HR humanR = new HR(ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString());
        DataSet ds = humanR.GetJobList();

        jobList.AllowPaging = true;
        jobList.PageSize = 8;

        jobList.DataSource = ds;
        jobList.DataBind();
    }

    protected void jobList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        jobList.PageIndex = e.NewPageIndex;

        SourceBind();

    }

    protected void jobList_RowCreated(object sender, GridViewRowEventArgs e)
    {
        #region 翻页绑定
        if (e.Row.RowType == DataControlRowType.Pager)
        {
            Label label_Index = new Label();
            LinkButton Button_IndexFirst = new LinkButton();
            LinkButton Button_IndexLast = new LinkButton();
            LinkButton Button_IndexNext = new LinkButton();
            LinkButton Button_IndexPrevious = new LinkButton();

            Button_IndexFirst.Text = "第一页 ";
            Button_IndexFirst.CommandName = "first";
            Button_IndexFirst.ForeColor = Color.Gray;
            Button_IndexFirst.Click += new EventHandler(PageButtonClick);

            Button_IndexNext.Text = "   下一页 ";
            Button_IndexNext.CommandName = "next";
            Button_IndexNext.ForeColor = Color.Gray;

            Button_IndexNext.Click += new EventHandler(PageButtonClick);

            Button_IndexPrevious.Text = "前一页 ";
            Button_IndexPrevious.CommandName = "previous";
            Button_IndexPrevious.ForeColor = Color.Gray;
            Button_IndexPrevious.Click += new EventHandler(PageButtonClick);

            Button_IndexLast.Text = "最末页 ";
            Button_IndexLast.CommandName = "last";
            Button_IndexLast.ForeColor = Color.Gray;
            Button_IndexLast.Click += new EventHandler(PageButtonClick);

            label_Index.Text = "当前为第" + (jobList.PageIndex + 1) + "页,共有" + ((GridView)sender).PageCount + "页";
            e.Row.Controls[0].Controls[0].Controls[0].Controls[0].Controls.AddAt(0, (Button_IndexFirst));
            e.Row.Controls[0].Controls[0].Controls[0].Controls[0].Controls.AddAt(1, (Button_IndexPrevious));

            int controlTmp = e.Row.Controls[0].Controls[0].Controls[0].Controls.Count - 1;
            e.Row.Controls[0].Controls[0].Controls[0].Controls[controlTmp].Controls.Add(Button_IndexNext);
            e.Row.Controls[0].Controls[0].Controls[0].Controls[controlTmp].Controls.Add(Button_IndexLast);

            e.Row.Controls[0].Controls[0].Controls[0].Controls[controlTmp].Controls.Add(label_Index);

            //e.Row.Controls[0].Controls.Add(label_Index);
        }
        #endregion
    }


    protected void PageButtonClick(object sender, EventArgs e)
    {
        LinkButton clickedButton = ((LinkButton)sender);
        if (clickedButton.CommandName == "first")
        {
            jobList.PageIndex = 0;
        }
        else if (clickedButton.CommandName == "next")
        {
            if (jobList.PageIndex < jobList.PageCount - 1)
            {
                jobList.PageIndex += 1;
            }
        }
        else if (clickedButton.CommandName == "previous")
        {
            if (jobList.PageIndex >= 1)
            {
                jobList.PageIndex -= 1;
            }
        }
        else if (clickedButton.CommandName == "last")
        {
            jobList.PageIndex = jobList.PageCount - 1;
        }
        SourceBind();
    }


}
