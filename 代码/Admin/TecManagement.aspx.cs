using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using XpCtrl;

public partial class Admin_TecManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Master.Page.Title = "技术文档";
        if (!IsPostBack)
            BindSource();
    }

    private void BindSource()
    {
        DataSet ds = getDS();

        if (ds.Tables[0].Rows.Count != 0)
        {
            XpTecList.DataSource = ds;
            XpTecList.DataBind();
            upload.DataSource = ds;
            upload.DataBind();
        }
        else
        {
            XpTecList.Visible = false;
        }
    }

    private DataSet getDS()
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        XpTec xpTec = new XpTec(strDbConn);

        DataSet ds = xpTec.GetTecs();
        return ds;
    }


    protected void upload_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("changemode"))
            upload.ChangeMode(FormViewMode.Insert);
        else if (e.CommandName.Equals("upload"))
        {
            FileUpload fileupload = (FileUpload)upload.Row.FindControl("fileUpload");
            
            Boolean fileOK = false;
            String path = Server.MapPath("~/Uploaded/");

            try
            {
                if (fileupload.HasFile)
                {
                    String fileExtension = System.IO.Path.GetExtension(fileupload.FileName).ToLower();
                    String[] allowedExtensions = {".doc", ".txt"};
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('文件不存在，请仔细检查');history.go(-1);</script>");
                    return;
                }
            }
            catch(Exception ex)
            {
               Response.Write("<script language='javascript'>alert('请选择上传的文件');history.go(-1);</script>");
                return;
            }

            DropDownList filetype = (DropDownList) upload.Row.FindControl("fileType");

            switch(Convert.ToInt32(filetype.SelectedValue))
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

            if (fileOK)
            {
                try
                {
                    FileInfo fileExist = new FileInfo(path + fileupload.FileName);
                    if(fileExist.Exists)
                    {
                        Response.Write("<script language='javascript'>alert('文件已经存在，请删除后重新上传');history.go(-1);</script>");
                        return;
                    }
                    fileupload.PostedFile.SaveAs( path + fileupload.FileName);

                    TextBox fileName = (TextBox) upload.Row.FindControl("fileName");
                    TextBox fileNumber = (TextBox)upload.Row.FindControl("fileNumber");

                    string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
                    XpTec xpTec = new XpTec(strDbConn);

                    if (!xpTec.AddTec(fileName.Text,fileNumber.Text,filetype.SelectedValue))
                    {
                        FileInfo file = new FileInfo(path + fileupload.FileName);
                        file.Delete();
                        Response.Write("<script language='javascript'>alert('文件上传失败，请重新尝试');history.go(-1);</script>");
                    }
                    else
                        Response.Write("<script language='javascript'>alert('文件上传成功');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script language='javascript'>alert('文件上传失败，请重新尝试');history.go(-1);</script>");
                    return;
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('文件格式不正确，请重新选择文件');history.go(-1);</script>");
                return;
            }
            upload.ChangeMode(FormViewMode.ReadOnly);
            BindSource();
        }
    }
    protected void XpTecList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(XpTecList.DataKeys[Convert.ToInt32(e.RowIndex)].Value);
            string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            XpTec xpTec = new XpTec(strDbConn);
            DataSet ds = xpTec.GetTecByID(id);
            if(xpTec.DelTec(id))
            {
                String path = Server.MapPath("~/Uploaded/");
                switch (Convert.ToInt32(ds.Tables[0].Rows[0]["doType"]))
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
                FileInfo download = new FileInfo(path + ds.Tables[0].Rows[0]["doName"]);
                download.Delete();
                Response.Write("<script language='javascript'>alert('文件删除成功');</script>");
                BindSource();
            }
            else
            {
                Response.Write("<script language='javascript'>alert('文件删除失败，请重新尝试');history.go(-1);</script>");
            }
        }
        catch(Exception ee)
        {
            
        }
    }
}
