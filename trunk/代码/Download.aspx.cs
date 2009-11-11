using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using XpCtrl;

public partial class download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["ID"]);
        DataSet ds = getDS(id);
        

        FileInfo download = new FileInfo(Request.PhysicalApplicationPath + "/Uploaded/" + ds.Tables[0].Rows[0]["doName"]);

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
