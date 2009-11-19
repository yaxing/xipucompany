using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Xml;
using DbConnect;

namespace XpCtrl
{
    public class Bbs
    {

        private String strDbConn;
        private DbConnector conn;

        public Bbs(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        public int InsertMessage(String name, String email, String tel, String qq, String content)
        {
            int ret = 0;
            try
            {
                ret = conn.executeUpdate("insert into tbl_CustomerMessage(Name,Email,Tel,QQ,Content,addTime) values('"+ name +"','"+email+"','"+tel+"','"+qq+"','"+content+"','"+DateTime.Now.ToString()+"')");
            }
            catch (Exception e)
            {
                ret = 0;
            }
            return ret;
        }

        public DataSet GetAllMessage()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_CustomerMessage order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        public int DeleteMessage(int id) 
        {
            int n;
            try
            {
                n = conn.executeUpdate("delete from tbl_CustomerMessage where ID = '"+id+"'");
            }
            catch (Exception e)
            {
               n = 0;
            }
            return 0;
        }

        public DataSet ShowMessage(int ID)
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_CustomerMessage where ID = '"+ID+"'");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

    }
}
