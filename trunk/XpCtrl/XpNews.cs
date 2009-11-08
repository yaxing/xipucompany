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
                ret = conn.executeQuery("select * from tbl_News");
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
                string sql = "select ID, title, newsType, content, author, addTime, changeTime, clickNum from tbl_News where newsType=" + newsType;
                ret = conn.executeQuery(sql);
            }
            catch (System.Exception e)
            {
                ret = null;
            }
            return ret;
        }
    }
}
