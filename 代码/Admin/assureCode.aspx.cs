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
using System.Drawing;

public partial class Admin_assureCode : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String code = Request.QueryString["code"];
        CreateImage(code);
    }

    public void CreateImage(string content)
    {
        //图片长度
        int imageWidth = (int)(content.Length * 22);
        //创建位图
        Bitmap image = new Bitmap(imageWidth, 30);
        //根据图片大小生成画板
        Graphics grap = Graphics.FromImage(image);
        //字体
        Font font = new Font("Arial", 22, FontStyle.Italic);
        //笔刷
        Brush brush = new SolidBrush(Color.FromArgb(204, 0, 240));
        //生成画板背景
        grap.Clear(Color.FromArgb(235, 235, 235));
        //画笔
        Pen pen = new Pen(Color.White, 1);
        //生成三条背景线
        Random random = new Random();
        for (int i = 0; i < 3; i++)
        {
            int y = random.Next(image.Height);
            grap.DrawLine(pen, 0, y, image.Width, y);
        }
        //在画板上画随机码内容
        grap.DrawString(content, font, brush, 1, 1);

        //增加随机噪点
        Random randomPoints = new Random((int)DateTime.Now.Ticks);
        Random randomXY = new Random(unchecked((int)DateTime.Now.Ticks));
        for (int i = 0; i < 10; i++)
        {
            int x = random.Next(image.Width);
            int y = random.Next(image.Height);

            grap.DrawLine(new Pen(Color.FromArgb(randomPoints.Next(0, 255), randomPoints.Next(0, 255), randomPoints.Next(0, 255)), 1), x, y, x + randomXY.Next(0, 10), y + randomXY.Next(0, 10));
        }

        for (int i = 0; i < 100; i++)
        {
            int x = random.Next(image.Width);
            int y = random.Next(image.Height);

            grap.DrawLine(new Pen(Color.FromArgb(randomPoints.Next(0, 255), randomPoints.Next(0, 255), randomPoints.Next(0, 255)), 0), x, y, x + randomXY.Next(0, 3), y + randomXY.Next(0, 3));
        }

        //以流的形式返回图片
        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        image.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);
        Response.ClearContent();
        Response.ContentType = "image/Jpeg";
        Response.BinaryWrite(ms.ToArray());
        grap.Dispose();

        image.Dispose();

    }
}
