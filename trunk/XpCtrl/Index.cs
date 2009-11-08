using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Xml;
using DbConnect;

namespace XpCtrl
{
    public class Index
    {
        
        private String strDbConn;
        private DbConnector conn;

        public Index(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        public DataSet GetNewsList()
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

    }
}
