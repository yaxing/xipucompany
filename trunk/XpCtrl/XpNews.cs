using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DbConnect;

namespace XpCtrl
{
    public class XpNews
    {
        private String strDbServer;
        private String strDbUserName;
        private String strDbPassWord;
        private String strDbConn;
        private DbConnector conn;

        public XpNews(String strDbServer, String strDbUserName, String strDbPassWord)
        {
            this.strDbServer = strDbServer;
            this.strDbUserName = strDbUserName;
            this.strDbPassWord = strDbPassWord;
            conn = new DbConnector();
            conn.connDB(strDbServer, strDbUserName, strDbPassWord);
        }

        public XpNews(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        /*功能：获取新闻信息
          返回值：返回新闻信息表集合*/
        public DataSet GetNews()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_News order by changeTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：获得newsType对应的所有新闻信息
         * 返回值：新闻信息
         */
        public DataSet GetClassNews(string newsType)
        {
            DataSet ret = null;
            try
            {
                string sql = "select ID, title, newsType, content, author, addTime, changeTime, clickNum from tbl_News where newsType = '" + newsType+"'" + "order by changeTime desc";
                ret = conn.executeQuery(sql);
            }
            catch (System.Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：获取一条新闻的信息
         参数：newsId   新闻的索引号
        返回值：标记新闻的所有信息。形式即为表的结构*/
        public DataSet GetNewsInfo(int iNewsId)
        {
            DataSet ret = conn.executeQuery("select * from tbl_News where ID = '" + iNewsId + "'");
            return ret;
        }

        /*功能：给一条新闻的点击量加1
         参数：newsId   新闻的索引号
        返回值：无*/
        public Boolean AddNewsClick(int iNewsId)
        {
            String sqlcmd = "Update tbl_News set clickNum = clickNum+1 where ID = " + iNewsId;
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*功能： 根据strKeyWords数组查询图书
          返回值：查询到的图书详细信息*/
        public DataSet SearchNews(string[] strKeyWords)
        {
            DataSet ret = null;
            try
            {
                string sql = "select * from tbl_News where ";
                bool bFirst = true;
                foreach (string str in strKeyWords)
                {
                    if (!bFirst)
                        sql = sql + " or ";
                    sql = sql + "title like '%" + str + "%'";
                    bFirst = false;
                }
                ret = conn.executeQuery(sql);
            }
            catch (System.Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*添加新闻*/
        public Boolean InsertNews(String newsTitle, String typeName, String author, String newsContent)
        {
            String indate = DateTime.Now.ToString();
            String sqlcmd = "Insert into tbl_News(title,newsType,author,content,addTime,changeTime,clickNum) values('" + newsTitle + "','" + typeName + "','" + author + "','" + newsContent + "','" + indate + "','" + indate + "',0)";
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*删除单个新闻*/
        public Boolean DeleteOneNews(String newsID)
        {
            String sql = "Select * from tbl_News where ID = " + newsID;
            DataSet ds = new DataSet();
            try
            {
                ds = conn.executeQuery(sql);
            }
            catch (System.Exception e)
            {
                return false;
            }
            if (ds == null || ds.Tables[0].Rows.Count > 1)
            {
                return false;
            }
            String sqlcmd = "Delete from tbl_News where ID = " + newsID;
            if (conn.executeUpdate(sqlcmd) >= 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*更新新闻信息*/
        public Boolean UpdateOneNews(String newsID, String newsTitle, String typeName, String newsContent, String author)
        {
            String indate = DateTime.Now.ToString();
            String sqlcmd = "Update tbl_News set title = '" + newsTitle + "',newsType = '" + typeName + "',content = '" + newsContent + "',author = '" + author + "',changeTime = '" + indate + "' where ID = " + newsID;
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*功能：查看此新闻的类别
          参数：status存放新闻类别状态*/
        public static String ShowNewsType(int status)
        {
            String type="";

            if (status == 1)
            {
                type = "内部新闻";
            }
            else if (status == 2)
            {
                type = "业界新闻";
            }
            return type;
        }
    }
}
