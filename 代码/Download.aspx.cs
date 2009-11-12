using System;
using System.Configuration;
using System.Data;
using System.IO;
using XpCtrl;

public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        DataSet ds = getDS(id);

        string path = Request.PhysicalApplicationPath + "/Uploaded/";
        switch(Convert.ToInt32(ds.Tables[0].Rows[0]["doType"]))
        {
            case 1:
                path += "技术规范/";
                break;
            case 2:
                path += "安装技术/";
                break;
            case 3:
                path += "参数解释/";
                break;
            case 4:
                path += "典型应用/";
                break;
            case 5:
                path += "其他/";
                break;
        }

        FileInfo download = new FileInfo( path + ds.Tables[0].Rows[0]["doName"]);

        if (download.Exists)
        {
            Response.Clear();
            Response.ClearHeaders();
            Response.Buffer = false;
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition",
                                  "attachment;filename=" +
                                  System.Web.HttpUtility.UrlEncode(download.FullName, System.Text.Encoding.UTF8));
            Response.AppendHeader("Content-Length", download.Length.ToString());
            Response.WriteFile(download.FullName);
            Response.Flush();
            Response.End();
        }
        else
        {
            //文档不存在
            Response.Write("<script language='javascript'>alert('可能已被删除，请与管理员联系');history.go(-1);</script>");
        }
    }

    private DataSet getDS(int id)
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        XpTec xpTec = new XpTec(strDbConn);

        DataSet ds = xpTec.GetTecByID(id);
        return ds;
    }
}
