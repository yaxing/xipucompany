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

        public int DeleteJob(int jobId) 
        {
            int n;
            try
            {
                n = conn.executeUpdate("delete from tbl_Employment where ID = " + jobId);
            }
            catch (Exception e)
            {
                n = 0;
            }
            return n;
        }

        public int UpdateJob(int jobId, String[] argument)
        {
            int n;
            try
            {
                //n = conn.executeUpdate("insert into tbl_Employment values('招聘高级工程师','工程部','本公司招聘','面议','本公司目前需要招聘高级工程师，主要工作为从事工程设计，工程管理等，需要技能：防雷技术，自动化。学历：硕士研究生','人事部经理','公司邮箱',getdate(),getdate());");
                n = conn.executeUpdate("update tbl_Employment set title='"+argument[0]+"',department='"+argument[1]+"',position='"+argument[2]+"',salary='"+argument[3]+"',content='"+argument[4]+"',author='"+argument[5]+"',contact='"+argument[6]+"',changeTime = getdate() where ID = " + jobId);
            }
            catch (Exception e)
            {
                n = 0;
            }
            return n;
        }

        public int InsertJob(String[] argument) 
        {
            int n;
            try
            {
                //n = conn.executeUpdate("insert into tbl_Employment values('" + argument[0] + "','" + argument[1] + "','" + argument[2] + "','" + argument[3] + "','" + argument[4] + "','" + argument[5] + "','" + argument[6] + "','"+time.ToString()+"','"+time.ToString()+"'");
                n = conn.executeUpdate("insert into tbl_Employment values('" + argument[0] + "','" + argument[1] + "','" + argument[2] + "','" + argument[3] + "','" + argument[4] + "','" + argument[5] + "','" + argument[6] + "',getdate(),getdate());");
            }
            catch (Exception e)
            {
                n = 0;
            }
            return n;
        }

    }
}
