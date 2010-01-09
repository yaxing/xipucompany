using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Xml;
using DbConnect;

namespace XpCtrl
{
    public class adminManage
    {
        private String strDbConn;
        private DbConnector conn;

        public adminManage(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        /*修改信息之前验证密码*/
        public DataSet CheckPw(String curPw,String id) 
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Admin where account='"+id+"' and password = '"+curPw+"'");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*更新用户信息*/
        public int UpdateInfo(int id,String[] info) 
        {
            int n;
            try
            {
                if (info[1].Length > 0)
                {
                    n = conn.executeUpdate("update tbl_Admin set account = '" + info[0] + "',password = '" + info[1] + "',email = '" + info[2] + "',tel = '" + info[3] + "' where ID='"+id+"'");
                }
                else 
                {
                    n = conn.executeUpdate("update tbl_Admin set account = '" + info[0] + "',email = '" + info[2] + "',tel = '" + info[3] + "'where ID='" + id + "'");
                }
            }
            catch (Exception e)
            {
                n = 0;
            }
            return n;
        }
    }
}
