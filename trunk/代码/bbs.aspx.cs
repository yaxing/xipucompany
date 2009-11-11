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


public partial class bbs : System.Web.UI.Page
{
    int warnings;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "云南希普防雷工程有限公司";
        nameWarning.Visible = false;
        emailWarning.Visible = false;
        contentWarning1.Visible = false;
        contentWarning2.Visible = false;

    }

    protected void submitMessage_Click(object sender, EventArgs e)
    {
        Bbs db;
        String name = customerName.Text;
        String email = customerEmail.Text;
        String tel = customerPhone.Text;
        String qq = customerQQ.Text;
        String content = customerMessage.Text;

        warnings = 0;

        if (name == null || name.Length == 0) 
        {
            nameWarning.Visible = true;
            warnings++;
        }
        else if (name != null && name.Length > 0) 
        {
            nameWarning.Visible = false;
        }

        if (email == null || email.Length == 0)
        {
            emailWarning.Visible = true;
            warnings++;
        }
        else if (email != null && email.Length > 0)
        {
            emailWarning.Visible = false;
        }

        if (content == null || content.Length == 0)
        {
            contentWarning1.Visible = true;
            warnings++;
        }
        else if (content != null && content.Length > 0)
        {
            contentWarning1.Visible = false;
            if (content.Length < 10) 
            {
                warnings++;
                contentWarning2.Visible = true;
            }
        }

        if (warnings == 0)
        {
            int successFlag = 0;
            String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            db = new Bbs(strConn);
            successFlag = db.InsertMessage(name, email, tel, qq, content);
            if (successFlag == 0)
            {
                Response.Write("<script>alert('对不起，留言失败，请重新留言！');</script>");
            }
            else 
            {
                Response.Write("<script>alert('留言成功，感谢您对希普公司的支持！');</script>");
                Response.Write("<script>location.href('bbs.aspx');</script>");
            }
        }
    }
    protected void reset_Click(object sender, EventArgs e)
    {
       customerName.Text = "";
       customerEmail.Text = "";
       customerPhone.Text = "";
       customerQQ.Text = "";
       customerMessage.Text = "";
    }
}
