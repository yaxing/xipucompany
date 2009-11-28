using System;
using System.Configuration;
using System.IO;
using XpCtrl;

public partial class Admin_AddProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        string fileName = string.Empty;
        if (upload.HasFile)
        {
            fileName = upload.FileName;
            Boolean fileOK = false;
            String path = Server.MapPath("~/project_images/");
            if (upload.HasFile)
            {
                String fileExtension =
                    System.IO.Path.GetExtension(upload.FileName).ToLower();
                String[] allowedExtensions = { ".jpg", ".gif" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                        break;
                    }
                }
            }

            if (fileOK)
            {
                try
                {
                    FileInfo img = new FileInfo(path + upload.FileName);
                    if (img.Exists)
                        img.Delete();
                    upload.PostedFile.SaveAs(path + upload.FileName);
                    Image.Visible = false;
                }
                catch (Exception ex)
                {
                    Response.Write("<script language='javascript'>alert('图片上传失败，请重新尝试');history.go(-1);</script>");
                }
            }
            else
            {
                Response.Write("<script language='javascript'>alert('图片格式不正确');history.go(-1);</script>");
            }
        }
        else
        {
            FileInfo img = null;
            if (!Image.ImageUrl.Equals(""))
            {
                fileName = Image.ImageUrl.Substring(21);
                img = new FileInfo(Server.MapPath("~/project_images/tmp/") + fileName);
                FileInfo imgto = new FileInfo(Server.MapPath("~/project_images/") + fileName);
                if (imgto.Exists)
                    imgto.Delete();
                img.MoveTo(Server.MapPath("~/project_images/") + fileName);
                Image.Visible = false;
                Directory.Delete(Server.MapPath("~/project_images/tmp/"));
                Directory.CreateDirectory(Server.MapPath("~/project_images/tmp/"));
            }
        }

        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        Projects project = new Projects(strDbConn);
        project.AddProject(projectName.Text, description.Text, Convert.ToInt32(customerType.SelectedValue), fileName);
        Response.Write("<script language='javascript'>alert('图片上传成功');</script>");
        Response.Redirect("~/Admin/ProjectManagement.aspx");
    }
    protected void scan_Click(object sender, EventArgs e)
    {
        ///文件夹操作
       
        if(!Directory.Exists(Server.MapPath("~/project_images/tmp/")))
            Directory.CreateDirectory(Server.MapPath("~/project_images/tmp/"));

        ///图片操作
        Boolean fileOK = false;
        String path = Server.MapPath("~/project_images/tmp/");
        if (upload.HasFile)
        {
            String fileExtension =
                System.IO.Path.GetExtension(upload.FileName).ToLower();
            String[] allowedExtensions = { ".jpg", ".gif" };
            for (int i = 0; i < allowedExtensions.Length; i++)
            {
                if (fileExtension == allowedExtensions[i])
                {
                    fileOK = true;
                    break;
                }
            }
        }

        if (fileOK)
        {
            try
            {
                FileInfo img = new FileInfo(path + upload.FileName);
                if(img.Exists)
                    img.Delete();
                upload.PostedFile.SaveAs(path + upload.FileName);
                Image.ImageUrl = "~/project_images/tmp/" + upload.FileName;
                Image.Visible = true;
                //Label1.Text = "File uploaded!";
            }
            catch (Exception ex)
            {
                Response.Write("<script language='javascript'>alert('图片上传失败，请重新尝试');history.go(-1);</script>");
            }
        }
        else
        {
            Response.Write("<script language='javascript'>alert('图片格式不正确！');history.go(-1);</script>");
        }
    }
}
