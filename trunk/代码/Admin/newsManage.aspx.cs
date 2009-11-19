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

public partial class Admin_newsManage : System.Web.UI.Page
{
    String DbConnectString = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            this.NewsCreatePL.Visible = true;
            this.NewsListPL.Visible = false;
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
        this.GridView1.DataSource = xpnews.GetNews();
        this.GridView1.DataBind();
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
}
