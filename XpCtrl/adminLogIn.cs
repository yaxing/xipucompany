using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using DbConnect;

namespace XpCtrl
{
    public class adminLogIn
    {
        private String strDbConn;
        private DbConnector conn;

        public adminLogIn(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        public DataSet CheckAdmin(String adminName, String adminPw)
        {
            DataSet ret = null;
            try
            {
               ret = conn.executeQuery("select * from tbl_Admin where account = '"+adminName+"' and password = '"+adminPw+"'");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

    }
}
