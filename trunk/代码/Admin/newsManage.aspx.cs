using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using XpCtrl;
using System.Drawing;

public partial class Admin_newsManage : System.Web.UI.Page
{
    String DbConnectString = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            this.NewsCreatePL.Visible = false;
            this.NewsListPL.Visible = true;
            this.NewsUpdatePL.Visible = false;
            SourceBind();
        }
    }
    protected void BtnSub_Click(object sender, EventArgs e)
    {
        String newsTitle = this.TxtNewsTitle.Text.ToString();
        String typeName = this.NewsTypeDDL.SelectedValue.Trim();
        String newsContent = this.TxtScript.Text.ToString();
        String author = this.TxtAuthor.Text.ToString();
        XpNews newsIn = new XpNews(DbConnectString);
        if (newsIn.InsertNews(newsTitle, typeName, author, newsContent))
        {
            Response.Write("<script language='javascript'>alert('添加成功。');location.href('newsManage.aspx');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('添加失败。请重新添加。');</script>");
        }
    }
    protected void CreateNewsLB_Click(object sender, EventArgs e)
    {
        this.NewsCreatePL.Visible = true;
        this.NewsListPL.Visible = false;
        this.NewsUpdatePL.Visible = false;
    }
    protected void NewsListLB_Click(object sender, EventArgs e)
    {
        this.NewsCreatePL.Visible = false;
        this.NewsListPL.Visible = true;
        this.NewsUpdatePL.Visible = false;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataKey key = this.GridView1.DataKeys[e.NewEditIndex];
        int newsID = Convert.ToInt32(key[0]);
        XpNews xpnews = new XpNews(DbConnectString);
        DataSet ds = new DataSet();
        ds = xpnews.GetNewsInfo(newsID);
        this.NewsID_HiddenField.Value = ds.Tables[0].Rows[0][0].ToString();
        this.TxtNewsTitleUpdate.Text = ds.Tables[0].Rows[0][1].ToString();
        this.TxtAuthorUpdate.Text = ds.Tables[0].Rows[0][4].ToString();
        this.TxtScriptUpdate.Text = ds.Tables[0].Rows[0][3].ToString();
        this.NewsCreatePL.Visible = false;
        this.NewsListPL.Visible = false;
        this.NewsUpdatePL.Visible = true;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataKey key = this.GridView1.DataKeys[e.RowIndex];
        String newsID = key[0].ToString();
        int news_ID = Convert.ToInt32(key[0]);
        XpNews xpnews = new XpNews(DbConnectString);
        DataSet ds = new DataSet();
        
        if (xpnews.DeleteOneNews(newsID))
        {
            Response.Write("<script language='javascript'>alert('删除成功');location.href('newsManage.aspx');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('删除失败');location.href('newsManage.aspx');</script>");
        }
        ds = xpnews.GetNews();
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
        this.NewsCreatePL.Visible = false;
        this.NewsListPL.Visible = true;
        this.NewsUpdatePL.Visible = false;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        SourceBind();
    }
    protected void SourceBind()
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        XpNews xpnews = new XpNews(strDbConn);
        DataSet ds = xpnews.GetNews();
        this.GridView1.DataSource = ds;
        this.GridView1.DataBind();
        LabTatalNo.Text = ds.Tables[0].Rows.Count.ToString();
        int buffer = this.GridView1.PageIndex * 10 + 1;
        LabCurrentStart.Text = buffer.ToString();
        if (this.GridView1.PageIndex * 10 + 10 >= ds.Tables[0].Rows.Count)
        {
            LabCurrentEnd.Text = ds.Tables[0].Rows.Count.ToString();
        }
        else
        {
            buffer = this.GridView1.PageIndex * 10 + 10;
            LabCurrentEnd.Text = buffer.ToString();
        }
    }
    protected void BtUpdate_Click(object sender, EventArgs e)
    {
        String newsID = this.NewsID_HiddenField.Value.ToString();
        String newsTitle = this.TxtNewsTitleUpdate.Text.ToString();
        String typeName = this.NewsTypeDDLUpdate.SelectedValue.Trim();
        String newsContent = this.TxtScriptUpdate.Text.ToString();
        String author = this.TxtAuthorUpdate.Text.ToString();
        XpNews newsIn = new XpNews(DbConnectString);
        if (newsIn.UpdateOneNews(newsID, newsTitle, typeName, newsContent, author))
        {
            Response.Write("<script language='javascript'>alert('更新成功。');location.href('newsManage.aspx');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('更新失败。请重新添加。');location.href('newsManage.aspx');</script>");
        }
        this.NewsCreatePL.Visible = false;
        this.NewsListPL.Visible = true;
        this.NewsUpdatePL.Visible = false;
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
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
            Button_IndexFirst.Font.Size = 10;
            Button_IndexFirst.Font.Name = "黑体";
            Button_IndexFirst.CommandName = "first";
            Button_IndexFirst.ForeColor = Color.Black;
            Button_IndexFirst.Click += new EventHandler(PageButtonClick);

            Button_IndexNext.Text = "   下一页 ";
            Button_IndexNext.Font.Size = 10;
            Button_IndexNext.Font.Name = "黑体";
            Button_IndexNext.CommandName = "next";
            Button_IndexNext.ForeColor = Color.Black;

            Button_IndexNext.Click += new EventHandler(PageButtonClick);

            Button_IndexPrevious.Text = "前一页 ";
            Button_IndexPrevious.Font.Size = 10;
            Button_IndexPrevious.Font.Name = "黑体";
            Button_IndexPrevious.CommandName = "previous";
            Button_IndexPrevious.ForeColor = Color.Black;
            Button_IndexPrevious.Click += new EventHandler(PageButtonClick);

            Button_IndexLast.Text = "最末页 ";
            Button_IndexLast.Font.Size = 10;
            Button_IndexLast.Font.Name = "黑体";
            Button_IndexLast.CommandName = "last";
            Button_IndexLast.ForeColor = Color.Black;
            Button_IndexLast.Click += new EventHandler(PageButtonClick);

            label_Index.Text = (GridView1.PageIndex + 1) + "/" + ((GridView)sender).PageCount + "页";
            label_Index.Font.Size = 8;
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
            GridView1.PageIndex = 0;
        }
        else if (clickedButton.CommandName == "next")
        {
            if (GridView1.PageIndex < GridView1.PageCount - 1)
            {
                GridView1.PageIndex += 1;
            }
        }
        else if (clickedButton.CommandName == "previous")
        {
            if (GridView1.PageIndex >= 1)
            {
                GridView1.PageIndex -= 1;
            }
        }
        else if (clickedButton.CommandName == "last")
        {
            GridView1.PageIndex = GridView1.PageCount - 1;
        }
        SourceBind();
    }
}
