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

        //===========================lkl================================//

        public DataSet GetAllProjects()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Project order by addTime desc");
            }
            catch(Exception e)
            {
                ret = null;
            }
            return ret;
        }

        public bool DeleteProjectByID (int id)
        {
            bool successfulDelete = true;
            try
            {
                conn.executeQuery("delete from tbl_Project where ID = " + id);
            }
            catch
            {
                successfulDelete = false;
            }
            return successfulDelete;
        }

        public bool AddProject (string projectName , string description , int customerType , string imgName)
        {
            bool successful = true;
            try
            {
                string sqlString = "insert into tbl_Project (projectName,projectIntro,customerType,imageName,addTime) "
                                 + "values ('" + projectName + "','" + description + "','" + customerType + "','" + imgName + "','" + DateTime.Now + "')";

                conn.executeUpdate(sqlString);   
            }
            catch
            {
                successful = false;
            }
            return successful;
        }
    }
}
