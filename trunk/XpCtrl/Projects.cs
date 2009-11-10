using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Xml;
using DbConnect;

namespace XpCtrl
{
    public class Projects
    {

        private String strDbConn;
        private DbConnector conn;

        public Projects(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        public DataSet GetLatestProjects()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select top 6 * from tbl_Project order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        public DataSet GetProjectsDetails(int ProjectId) 
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Project where ID =" + ProjectId + "order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        public DataSet GetProjectsType(int Type) 
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Project where customerType =" + Type + "order by addTime desc");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

    }
}
