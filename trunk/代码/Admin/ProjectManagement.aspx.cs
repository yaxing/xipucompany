using System;
using System.Configuration;
using System.Data;
using System.IO;
using System.Web.UI.WebControls;
using XpCtrl;

public partial class Admin_ProjectManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindSource();
    }

    private void BindSource()
    {
        string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
        Projects projects = new Projects(strDbConn);

        DataSet ds = projects.GetAllProjects();
        project.DataSource = ds;
        project.DataBind();
    }
    protected void project_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        DataRowView drv = (DataRowView)e.Row.DataItem;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            switch (Convert.ToInt32(drv.Row.ItemArray[3]))
            {
                case 0:
                    e.Row.Cells[2].Text = "烟草系统";
                    break;
                case 1:
                    e.Row.Cells[2].Text = "银行系统";
                    break;
                case 2:
                    e.Row.Cells[2].Text = "证券系统";
                    break;
                case 3:
                    e.Row.Cells[2].Text = "酒店系统";
                    break;
                case 4:
                    e.Row.Cells[2].Text = "大楼、大厦";
                    break;
                case 5:
                    e.Row.Cells[2].Text = "厂矿";
                    break;
                case 6:
                    e.Row.Cells[2].Text = "民航机场";
                    break;
                case 7:
                    e.Row.Cells[2].Text = "公园";
                    break;
                case 8:
                    e.Row.Cells[2].Text = "公安";
                    break;
                case 9:
                    e.Row.Cells[2].Text = "政府机关";
                    break;
                case 10:
                    e.Row.Cells[2].Text = "学校";
                    break;
            }
        }
    }

    protected void project_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(project.DataKeys[Convert.ToInt32(e.RowIndex)].Value);
            string strDbConn = ConfigurationManager.ConnectionStrings["xipuConnectionString"].ToString();
            Projects projects = new Projects(strDbConn);
            DataSet ds = new DataSet();
            ds = projects.GetProjectsDetails(id);
            FileInfo file = new FileInfo("~/project_images/" + ds.Tables[0].Rows[0]["imageName"]);
            file.Delete();
            if (!projects.DeleteProjectByID(id))
            {
                Response.Write("<script language='javascript'>alert('删除失败，请重新尝试');history.go(-1);</script>");
                return;
            }
            Response.Write("<script language='javascript'>alert('删除成功');</script>");
            BindSource();
        }
        catch(Exception ee)
        {
            Response.Write("<script language='javascript'>alert('删除失败，请重新尝试');history.go(-1);</script>");
        }
    }
}
