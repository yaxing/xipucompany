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
    }
}
