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
using System.Drawing;

public partial class Admin_adminLogIn : System.Web.UI.Page
{
    String strConn;
    String code;
    adminLogIn check;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "希普公司网站后台管理系统";
        Response.CacheControl = "No-cache";
        if (!Page.IsPostBack)
        {
            code = RandomWords(4);
            if (code != null)
            {
                Session.Add("code", code);
            }
            ChangeCode(code);
        }
        
    }

    protected void ChangeCode(String code) //更换验证码图片
    {
        assure.ImageUrl = "assureCode.aspx?code="+code;
    }

    protected void changeCode_Click(object sender, EventArgs e)//点击看不清，更换图片
    {
        code = RandomWords(4);//重新生成随机数
        if (code != null)//如果CODE非空，加入SESSION
        {
            Session.Add("code", code);
        }
        ChangeCode(code);
    }

    public string RandomWords(int maxLength)
    {
        string words = "1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z";
        string[] wordsArr = words.Split(new char[] { ',' });
        Random random = new Random();
        string code = string.Empty;
        for (int i = 0; i < maxLength; i++)
        {
            code += wordsArr[random.Next(0, 33)];
        }
        return code;
    }

    protected void logIn_Click(object sender, EventArgs e)
    {
        DataSet ds = null;

        strConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        check = new adminLogIn(strConn);
        ds = check.CheckAdmin(userName.Text, userPw.Text);
        
        if (ds != null && ds.Tables[0].Rows.Count != 0)
        {
            //Response.Write(Session["code"].ToString());
            if (Session["code"] == null) 
            {
                code = RandomWords(4);
                if (code != null)
                {
                    Session.Add("code", code);
                }
                ChangeCode(code);
                Response.Write("<script>alert('验证码错误！');</script>");
            }

            else if (!Session["code"].ToString().Equals(codeInput.Text))
            {
                Response.Write("<script>alert('验证码错误！');</script>");
            }
            else
            {
                Session.Add("admin", userName.Text);
                Response.Redirect("adminIndex.aspx");

            }
        }
        else
        {
            Response.Write("<script>alert('用户名或密码错误！');</script>");
        }
    }
}
