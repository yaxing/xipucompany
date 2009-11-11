using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using DbConnect;

namespace XpCtrl
{
    public class XpTec
    {
        private String strDbServer;
        private String strDbUserName;
        private String strDbPassWord;
        private String strDbConn;
        private DbConnector conn;

        public XpTec(String strDbServer, String strDbUserName, String strDbPassWord)
        {
            this.strDbServer = strDbServer;
            this.strDbUserName = strDbUserName;
            this.strDbPassWord = strDbPassWord;
            conn = new DbConnector();
            conn.connDB(strDbServer, strDbUserName, strDbPassWord);
        }

        public XpTec(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        /*功能：获取技术文档列表
          返回值：返回技术文档集合*/
        public DataSet GetTecs()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Documentation order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：通过id获取技术文档
          返回值：返回技术文档*/
        public DataSet GetTecByID(int id)
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Documentation where ID = " + id + " order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：通过类型获取技术文档
          返回值：返回技术文档集合*/
        public DataSet GetTecByType(int type)
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Documentation where doType = " + type + " order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

    }
}
