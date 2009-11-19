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

        /*功能：添加文档
          返回值：成功返回true，否则返回false*/
        public bool AddTec(string fileName ,string fileNumber ,string filetype)
        {
            bool successfulAdd = true;
            string sqlString = "insert into tbl_Documentation (doName,doNumber,doType,doDescription,doPath,addTime) values ('"
                +fileName + "','" + fileNumber + "','" + filetype + "','a','e:/','" + DateTime.Now + "')" ;
            try
            {
                conn.executeQuery(sqlString);
            }
            catch (Exception e)
            {
                successfulAdd = false;
            }
            return successfulAdd;
        }

        /*功能：删除文档
          返回值：成功返回true，否则返回false*/
        public bool DelTec(int id)
        {
            bool successfulDelete = true;
            string sqlString = "delete from tbl_Documentation where ID = " + id;
            try
            {
                conn.executeQuery(sqlString);
            }
            catch(Exception e)
            {
                successfulDelete = false;
            }
            return successfulDelete;
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
