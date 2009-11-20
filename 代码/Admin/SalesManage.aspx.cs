using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using XpCtrl;

public partial class Admin_SalesManage : System.Web.UI.Page
{
    String DbConnectString = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Request["display"] != null)
            {
                int display = Convert.ToInt32(Request.QueryString["display"]);
                this.Page_Display(display);
            }
            else
            {
                this.SalesAddPanel.Visible = true;
                this.SalesListPanel.Visible = false;
                this.SalesUpdatePanel.Visible = false;
                this.CustomerAddPanel.Visible = false;
                this.CustomerListPanel.Visible = false;
                this.CustomerUpdatePanel.Visible = false;
                this.TotalPanel.Visible = false;
            }
            SourceBind();
        }
    }
    protected void Page_Display(int display)
    {
        if (display == 1)
        {
            this.SalesAddPanel.Visible = false;
            this.SalesListPanel.Visible = true;
            this.SalesUpdatePanel.Visible = false;
            this.CustomerAddPanel.Visible = false;
            this.CustomerListPanel.Visible = false;
            this.CustomerUpdatePanel.Visible = false;
            this.TotalPanel.Visible = true;
        }
        else
        {
            this.SalesAddPanel.Visible = false;
            this.SalesListPanel.Visible = false;
            this.SalesUpdatePanel.Visible = false;
            this.CustomerAddPanel.Visible = false;
            this.CustomerListPanel.Visible = true;
            this.CustomerUpdatePanel.Visible = false;
            this.TotalPanel.Visible = true;
        }
        SourceBind();
    }
    protected void SourceBind()
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        XpSales salesin = new XpSales(strDbConn);
        if (this.SalesListPanel.Visible == true)
        {
            DataSet ds = salesin.GetSalesInfo();
            this.SalesGridView.DataSource = ds;
            this.SalesGridView.DataBind();
            LabTatalNo.Text = ds.Tables[0].Rows.Count.ToString();
            int buffer = this.SalesGridView.PageIndex * 10 + 1;
            LabCurrentStart.Text = buffer.ToString();
            if (this.SalesGridView.PageIndex * 10 + 10 >= ds.Tables[0].Rows.Count)
            {
                LabCurrentEnd.Text = ds.Tables[0].Rows.Count.ToString();
            }
            else
            {
                buffer = this.SalesGridView.PageIndex * 10 + 10;
                LabCurrentEnd.Text = buffer.ToString();
            }
        }
        else
        {
            DataSet ds = salesin.GetCustomerInfo();
            this.CustomerGridView.DataSource = ds;
            this.CustomerGridView.DataBind();
            LabTatalNo.Text = ds.Tables[0].Rows.Count.ToString();
            int buffer = this.CustomerGridView.PageIndex * 10 + 1;
            LabCurrentStart.Text = buffer.ToString();
            if (this.CustomerGridView.PageIndex * 10 + 10 >= ds.Tables[0].Rows.Count)
            {
                LabCurrentEnd.Text = ds.Tables[0].Rows.Count.ToString();
            }
            else
            {
                buffer = this.CustomerGridView.PageIndex * 10 + 10;
                LabCurrentEnd.Text = buffer.ToString();
            }
        }
    }
    protected void SalesAddLBt_Click(object sender, EventArgs e)
    {
        this.SalesAddPanel.Visible = true;
        this.SalesListPanel.Visible = false;
        this.SalesUpdatePanel.Visible = false;
        this.CustomerAddPanel.Visible = false;
        this.CustomerListPanel.Visible = false;
        this.CustomerUpdatePanel.Visible = false;
        this.TotalPanel.Visible = false;
        SourceBind();
    }
    protected void SalesListLBt_Click(object sender, EventArgs e)
    {
        this.SalesAddPanel.Visible = false;
        this.SalesListPanel.Visible = true;
        this.SalesUpdatePanel.Visible = false;
        this.CustomerAddPanel.Visible = false;
        this.CustomerListPanel.Visible = false;
        this.CustomerUpdatePanel.Visible = false;
        this.TotalPanel.Visible = true;
        SourceBind();
    }
    protected void CustomerAddLBt_Click(object sender, EventArgs e)
    {
        this.SalesAddPanel.Visible = false;
        this.SalesListPanel.Visible = false;
        this.SalesUpdatePanel.Visible = false;
        this.CustomerAddPanel.Visible = true;
        this.CustomerListPanel.Visible = false;
        this.CustomerUpdatePanel.Visible = false;
        this.TotalPanel.Visible = false;
        SourceBind();
    }
    protected void CustomerListLBt_Click(object sender, EventArgs e)
    {
        this.SalesAddPanel.Visible = false;
        this.SalesListPanel.Visible = false;
        this.SalesUpdatePanel.Visible = false;
        this.CustomerAddPanel.Visible = false;
        this.CustomerListPanel.Visible = true;
        this.CustomerUpdatePanel.Visible = false;
        this.TotalPanel.Visible = true;
        SourceBind();
    }
    protected void SalesAddSubBt_Click(object sender, EventArgs e)
    {
        String area = this.TxtSalesArea.Text.Trim();
        String name = this.TxtSalesName.Text.Trim();
        String tel = this.TxtTel.Text.Trim();
        String address = this.TxtAddress.Text.Trim();
        XpSales salein = new XpSales(DbConnectString);
        if (salein.InsertSales(area, name, address, tel))
        {
            Response.Write("<script language='javascript'>alert('添加成功。');location.href('SalesManage.aspx?display=1');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('添加失败。请重新添加。');location.href('SalesManage.aspx');</script>");
        }
    }
    protected void SalesUpdateSubBt_Click(object sender, EventArgs e)
    {
        String salesID = this.SalesID_HiddenField.Value.Trim();
        String area = this.TxtSalesAreaU.Text.Trim();
        String name = this.TxtSalesNameU.Text.Trim();
        String tel = this.TxtTelU.Text.Trim();
        String address = this.TxtAddressU.Text.Trim();
        XpSales salein = new XpSales(DbConnectString);
        if (salein.UpdateOneSales(salesID, area, name, address, tel))
        {
            Response.Write("<script language='javascript'>alert('更新成功。');location.href('SalesManage.aspx?display=1');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('更新失败。请重新添加。');location.href('SalesManage.aspx');</script>");
        }
    }
    protected void CustomerAddSBt_Click(object sender, EventArgs e)
    {
        String name = this.TxtCustomerName.Text.Trim();
        String intro = this.TxtIntroduction.Text.ToString();
        String address = this.TxtCAddress.Text.Trim();
        String tel = this.TxtCTel.Text.Trim();
        XpSales salein = new XpSales(DbConnectString);
        if (salein.InsertCustomer(name, intro, address, tel))
        {
            Response.Write("<script language='javascript'>alert('添加成功。');location.href('SalesManage.aspx?display=2');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('添加失败。请重新添加。');location.href('SalesManage.aspx');</script>");
        }
    }
    protected void CustomerUpdateSBt_Click(object sender, EventArgs e)
    {
        String customerID = this.CustomerID_HiddenField.Value.Trim();
        String name = this.TxtCustomerNameU.Text.Trim();
        String intro = this.TxtIntroductionU.Text.Trim();
        String address = this.TxtCAddressU.Text.Trim();
        String tel = this.TxtCTelU.Text.Trim();
        
        XpSales salein = new XpSales(DbConnectString);
        if (salein.UpdateOneCustomer(customerID, name, intro, address, tel))
        {
            Response.Write("<script language='javascript'>alert('更新成功。');location.href('SalesManage.aspx?display=2');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('更新失败。请重新添加。');location.href('SalesManage.aspx');</script>");
        }
    }
    protected void SalesGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        SalesGridView.PageIndex = e.NewPageIndex;
        SourceBind();
    }
    protected void SalesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataKey key = this.SalesGridView.DataKeys[e.RowIndex];
        String salesID = key[0].ToString();
        XpSales xpsales = new XpSales(DbConnectString);
        DataSet ds = new DataSet();

        if (xpsales.DeleteOneSales(salesID))
        {
            Response.Write("<script language='javascript'>alert('删除成功');location.href('SalesManage.aspx?display=1');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('删除失败');location.href('SalesManage.aspx');</script>");
        }
    }
    protected void SalesGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataKey key = this.SalesGridView.DataKeys[e.NewEditIndex];
        int salesID = Convert.ToInt32(key[0]);
        XpSales xpsales = new XpSales(DbConnectString);
        DataSet ds = new DataSet();
        ds = xpsales.GetOneSalesInfo(salesID);
        this.SalesID_HiddenField.Value = ds.Tables[0].Rows[0][0].ToString();
        this.TxtSalesAreaU.Text = ds.Tables[0].Rows[0][1].ToString();
        this.TxtSalesNameU.Text = ds.Tables[0].Rows[0][2].ToString();
        this.TxtAddressU.Text = ds.Tables[0].Rows[0][3].ToString();
        this.TxtTelU.Text = ds.Tables[0].Rows[0][4].ToString();
        this.SalesAddPanel.Visible = false;
        this.SalesListPanel.Visible = false;
        this.SalesUpdatePanel.Visible = true;
        this.CustomerAddPanel.Visible = false;
        this.CustomerListPanel.Visible = false;
        this.CustomerUpdatePanel.Visible = false;
        this.TotalPanel.Visible = false;
    }
    protected void CustomerGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        CustomerGridView.PageIndex = e.NewPageIndex;
        SourceBind();
    }
    protected void CustomerGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataKey key = this.CustomerGridView.DataKeys[e.RowIndex];
        String customerID = key[0].ToString();
        XpSales xpsales = new XpSales(DbConnectString);
        DataSet ds = new DataSet();

        if (xpsales.DeleteOneCustomer(customerID))
        {
            Response.Write("<script language='javascript'>alert('删除成功');location.href('SalesManage.aspx?display=2');</script>");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('删除失败');location.href('SalesManage.aspx');</script>");
        }
        ds = xpsales.GetSalesInfo();
        this.SalesGridView.DataSource = ds;
        this.SalesGridView.DataBind();
    }
    protected void CustomerGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataKey key = this.CustomerGridView.DataKeys[e.NewEditIndex];
        int customerID = Convert.ToInt32(key[0]);
        XpSales xpsales = new XpSales(DbConnectString);
        DataSet ds = new DataSet();
        ds = xpsales.GetOneCustomerInfo(customerID);
        this.CustomerID_HiddenField.Value = ds.Tables[0].Rows[0][0].ToString();
        this.TxtCustomerNameU.Text = ds.Tables[0].Rows[0][1].ToString();
        this.TxtIntroductionU.Text = ds.Tables[0].Rows[0][2].ToString();
        this.TxtCAddressU.Text = ds.Tables[0].Rows[0][3].ToString();
        this.TxtTelU.Text = ds.Tables[0].Rows[0][4].ToString();
        this.SalesAddPanel.Visible = false;
        this.SalesListPanel.Visible = false;
        this.SalesUpdatePanel.Visible = false;
        this.CustomerAddPanel.Visible = false;
        this.CustomerListPanel.Visible = false;
        this.CustomerUpdatePanel.Visible = true;
        this.TotalPanel.Visible = false;
    }
    protected void SalesGridView_RowCreated(object sender, GridViewRowEventArgs e)
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
            Button_IndexFirst.Click += new EventHandler(SalesPageButtonClick);

            Button_IndexNext.Text = "   下一页 ";
            Button_IndexNext.Font.Size = 10;
            Button_IndexNext.Font.Name = "黑体";
            Button_IndexNext.CommandName = "next";
            Button_IndexNext.ForeColor = Color.Black;

            Button_IndexNext.Click += new EventHandler(SalesPageButtonClick);

            Button_IndexPrevious.Text = "前一页 ";
            Button_IndexPrevious.Font.Size = 10;
            Button_IndexPrevious.Font.Name = "黑体";
            Button_IndexPrevious.CommandName = "previous";
            Button_IndexPrevious.ForeColor = Color.Black;
            Button_IndexPrevious.Click += new EventHandler(SalesPageButtonClick);

            Button_IndexLast.Text = "最末页 ";
            Button_IndexLast.Font.Size = 10;
            Button_IndexLast.Font.Name = "黑体";
            Button_IndexLast.CommandName = "last";
            Button_IndexLast.ForeColor = Color.Black;
            Button_IndexLast.Click += new EventHandler(SalesPageButtonClick);

            label_Index.Text = (SalesGridView.PageIndex + 1) + "/" + ((GridView)sender).PageCount + "页";
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
    protected void SalesPageButtonClick(object sender, EventArgs e)
    {
        LinkButton clickedButton = ((LinkButton)sender);
        if (clickedButton.CommandName == "first")
        {
            SalesGridView.PageIndex = 0;
        }
        else if (clickedButton.CommandName == "next")
        {
            if (SalesGridView.PageIndex < SalesGridView.PageCount - 1)
            {
                SalesGridView.PageIndex += 1;
            }
        }
        else if (clickedButton.CommandName == "previous")
        {
            if (SalesGridView.PageIndex >= 1)
            {
                SalesGridView.PageIndex -= 1;
            }
        }
        else if (clickedButton.CommandName == "last")
        {
            SalesGridView.PageIndex = SalesGridView.PageCount - 1;
        }
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
            Button_IndexFirst.Font.Size = 10;
            Button_IndexFirst.Font.Name = "黑体";
            Button_IndexFirst.CommandName = "first";
            Button_IndexFirst.ForeColor = Color.Black;
            Button_IndexFirst.Click += new EventHandler(CustomerPageButtonClick);

            Button_IndexNext.Text = "   下一页 ";
            Button_IndexNext.Font.Size = 10;
            Button_IndexNext.Font.Name = "黑体";
            Button_IndexNext.CommandName = "next";
            Button_IndexNext.ForeColor = Color.Black;

            Button_IndexNext.Click += new EventHandler(CustomerPageButtonClick);

            Button_IndexPrevious.Text = "前一页 ";
            Button_IndexPrevious.Font.Size = 10;
            Button_IndexPrevious.Font.Name = "黑体";
            Button_IndexPrevious.CommandName = "previous";
            Button_IndexPrevious.ForeColor = Color.Black;
            Button_IndexPrevious.Click += new EventHandler(CustomerPageButtonClick);

            Button_IndexLast.Text = "最末页 ";
            Button_IndexLast.Font.Size = 10;
            Button_IndexLast.Font.Name = "黑体";
            Button_IndexLast.CommandName = "last";
            Button_IndexLast.ForeColor = Color.Black;
            Button_IndexLast.Click += new EventHandler(CustomerPageButtonClick);

            label_Index.Text = (CustomerGridView.PageIndex + 1) + "/" + ((GridView)sender).PageCount + "页";
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

    protected void CustomerPageButtonClick(object sender, EventArgs e)
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
