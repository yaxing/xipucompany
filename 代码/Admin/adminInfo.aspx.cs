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

public partial class Admin_adminInfo : System.Web.UI.Page
{
    adminManage adminCtrl;
    protected void Page_Load(object sender, EventArgs e)
    {
        int flag = Convert.ToInt32(Request.QueryString["ID"]);/*flag=0为信息显示PANEL，1为密码确认PANEL，2为修改信息PANEL*/

            if (flag == 0)
            {
                adminShow.Visible = true;
                adminCheck.Visible = false;
                adminEdit.Visible = false;
                lbAdminN.Text = Session["admin"].ToString();
                lbEmail.Text = Session["adminEmail"].ToString();
                lbTel.Text = Session["adminTel"].ToString();
            }
            if (flag == 1)
            {
                adminShow.Visible = false;
                adminCheck.Visible = true;
                adminEdit.Visible = false;
                lWPw.Visible = false;
            }
            if (flag == 2)
            {
                adminShow.Visible = false;
                adminCheck.Visible = false;
                adminEdit.Visible = true;
                lbEptEmail.Visible = false;
                lbEptName.Visible = false;
                if (!IsPostBack) 
                {
                    tbName.Text = Session["admin"].ToString();
                    tbEmail.Text = Session["adminEmail"].ToString();
                    tbTel.Text = Session["adminTel"].ToString();
                }
            }
        
    }

    public void LbEdit_Click(object sender, EventArgs e) 
    {
        Response.Redirect("adminInfo.aspx?ID=1");
    }

    protected void sumitPw_Click(object sender, EventArgs e)
    {
        String pw = adminPw.Text;
        String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        adminCtrl = new adminManage(strConn);
        String id = Session["admin"].ToString();
        DataSet ds = adminCtrl.CheckPw(pw,id);
        //Response.Write(pw+","+ds.Tables[0].Rows.Count);
        if (ds != null && ds.Tables[0].Rows.Count != 0)
        {
            Response.Redirect("adminInfo.aspx?ID=2");
        }
        else
        {
            lWPw.Visible = true;
        }
    }
    protected void submitEdit_Click(object sender, EventArgs e)
    {

        String[] args = new String[5];
        String strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        adminCtrl = new adminManage(strConn);

        args[0] = tbName.Text;
        args[1] = tbNewPw.Text;
        args[2] = tbEmail.Text;
        args[3] = tbTel.Text;
        int id = Convert.ToInt32(Session["adminId"].ToString());

        if (tbName.Text.Length <= 0||tbName.Text==null)
        {
            lbEptName.Visible = true;
        }
        if(tbEmail.Text.Length<=0||tbEmail.Text == null)
        {
            lbEptEmail.Visible = true;
        }
        else if(tbName.Text.Length>0&&tbEmail.Text.Length>0)
        {
            int n = adminCtrl.UpdateInfo(id, args);
            if (n <= 0)
            {
                Response.Write("<script>alert('修改失败，请重新操作！');</script>");
            }
            else
            {
                Response.Write("<script>alert('修改成功，请重新登录！');</script>");
                Session.Clear();
                Session.Abandon();
                Response.Write("<script>location.href('adminLogIn.aspx');</script>");
            }
        }
    }
    protected void cancelEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminInfo.aspx?ID=0");
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminInfo.aspx?ID=0");
    }
}
