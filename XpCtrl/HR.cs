using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Xml;
using DbConnect;

namespace XpCtrl
{
    public class HR
    {

        private String strDbConn;
        private DbConnector conn;

        public HR(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        public DataSet GetJobList()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Employment order by changeTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        public DataSet GetJobDetail(int jobId) 
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Employment where ID = "+jobId);
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

    }
}
