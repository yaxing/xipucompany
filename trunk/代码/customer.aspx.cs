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

public partial class customer : System.Web.UI.Page
{
    String strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.SourceBind();
        }
    }

    protected void SourceBind()
    {
        XpSales salesinfo = new XpSales(strDbConn);
        DataSet ds = new DataSet();
        ds = salesinfo.GetCustomerInfo();
        this.CustomerGridView.DataSource = ds;
        this.CustomerGridView.DataBind();
    }

    protected void CustomerGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        CustomerGridView.PageIndex = e.NewPageIndex;
        SourceBind();
    }

    protected void CustomerGridView_RowCreated(object sender, GridViewRowEventArgs e)
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

            Button_IndexNext.Text = " 下一页 ";
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

            label_Index.Text = "第" + (CustomerGridView.PageIndex + 1) + "/" + ((GridView)sender).PageCount + "页";
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
            CustomerGridView.PageIndex = 0;
        }
        else if (clickedButton.CommandName == "next")
        {
            if (CustomerGridView.PageIndex < CustomerGridView.PageCount - 1)
            {
                CustomerGridView.PageIndex += 1;
            }
        }
        else if (clickedButton.CommandName == "previous")
        {
            if (CustomerGridView.PageIndex >= 1)
            {
                CustomerGridView.PageIndex -= 1;
            }
        }
        else if (clickedButton.CommandName == "last")
        {
            CustomerGridView.PageIndex = CustomerGridView.PageCount - 1;
        }
        SourceBind();
    }
}
