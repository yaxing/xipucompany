using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DbConnect;

namespace XpCtrl
{
    public class XpSales
    {
        private String strDbServer;
        private String strDbUserName;
        private String strDbPassWord;
        private String strDbConn;
        private DbConnector conn;

        public XpSales(String strDbServer, String strDbUserName, String strDbPassWord)
        {
            this.strDbServer = strDbServer;
            this.strDbUserName = strDbUserName;
            this.strDbPassWord = strDbPassWord;
            conn = new DbConnector();
            conn.connDB(strDbServer, strDbUserName, strDbPassWord);
        }

        public XpSales(String strDbConn)
        {
            this.strDbConn = strDbConn;
            conn = new DbConnector();
            conn.connDB(strDbConn);
        }

        /*功能：获取营销图片信息
         返回值：返回营销图片表集合*/
        public DataSet GetMarketingImage()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_MarketingImage");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：获取营业部信息
         返回值：返回营业部信息表集合*/
        public DataSet GetSalesInfo()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_SalesDepartment");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：获取一条营业部的信息
         参数：salesId   新闻的索引号
        返回值：标记营业部的所有信息。形式即为表的结构*/
        public DataSet GetOneSalesInfo(int iSalesId)
        {
            DataSet ret = conn.executeQuery("select * from tbl_SalesDepartment where ID = '" + iSalesId + "'");
            return ret;
        }

        /*功能：获取客户信息
         返回值：返回客户信息表集合*/
        public DataSet GetCustomerInfo()
        {
            DataSet ret = null;
            try
            {
                ret = conn.executeQuery("select * from tbl_Customer");
            }
            catch (Exception e)
            {
                ret = null;
            }
            return ret;
        }

        /*功能：获取一条客户的信息
         参数：iCustomerId   新闻的索引号
        返回值：标记客户的所有信息。形式即为表的结构*/
        public DataSet GetOneCustomerInfo(int iCustomerId)
        {
            DataSet ret = conn.executeQuery("select * from tbl_Customer where ID = '" + iCustomerId + "'");
            return ret;
        }

        /*添加营业部*/
        public Boolean InsertSales(String area, String name, String address, String tel)
        {
            String indate = DateTime.Now.ToString();
            String sqlcmd = "Insert into tbl_SalesDepartment(area,departmentName,address,tel) values('" + area + "','" + name + "','" + address + "','" + tel + "')";
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*删除单个营业部*/
        public Boolean DeleteOneSales(String salesID)
        {
            String sql = "Select * from tbl_SalesDepartment where ID = " + salesID;
            DataSet ds = new DataSet();
            try
            {
                ds = conn.executeQuery(sql);
            }
            catch (System.Exception e)
            {
                return false;
            }
            if (ds == null || ds.Tables[0].Rows.Count > 1)
            {
                return false;
            }
            String sqlcmd = "Delete from tbl_SalesDepartment where ID = " + salesID;
            if (conn.executeUpdate(sqlcmd) >= 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*更新营业部信息*/
        public Boolean UpdateOneSales(String salesID, String area, String name, String address, String tel)
        {
            String indate = DateTime.Now.ToString();
            String sqlcmd = "Update tbl_SalesDepartment set area = '" + area + "',departmentName = '" + name + "',address = '" + address + "',tel = '" + tel + "' where ID = " + salesID;
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*添加客户*/
        public Boolean InsertCustomer(String name, String intro, String address, String tel)
        {
            String indate = DateTime.Now.ToString();
            String imagePath = "~/images/default.jpg";
            String sqlcmd = "Insert into tbl_Customer(customerName,introduction,address,contact,imagePath,addTime) values('" + name + "','" + intro + "','" + address + "','" + tel + "','" + imagePath + "','" + indate + "')";
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*删除单个客户*/
        public Boolean DeleteOneCustomer(String customerID)
        {
            String sql = "Select * from tbl_Customer where ID = " + customerID;
            DataSet ds = new DataSet();
            try
            {
                ds = conn.executeQuery(sql);
            }
            catch (System.Exception e)
            {
                return false;
            }
            if (ds == null || ds.Tables[0].Rows.Count > 1)
            {
                return false;
            }
            String sqlcmd = "Delete from tbl_Customer where ID = " + customerID;
            if (conn.executeUpdate(sqlcmd) >= 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /*更新客户信息*/
        public Boolean UpdateOneCustomer(String customerID, String name, String intro, String address, String tel)
        {
            String indate = DateTime.Now.ToString();
            String sqlcmd = "Update tbl_Customer set customerName = '" + name + "',introduction = '" + intro + "',address = '" + address + "',contact = '" + tel + "' where ID = " + customerID;
            if (conn.executeUpdate(sqlcmd) > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
