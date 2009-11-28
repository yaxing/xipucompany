<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="Contact" Title="无标题页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">服务中心</font></h3>
    <!--<div id="search">
		<input type="text" class="search" /><input type="submit" class="submit" value="Submit" />
	</div><!-- search -->
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
        <li id="news" align="left"><a href="./projects.aspx" target="_self">工程展示</a></li>
        <li id="news" align="left"><a href="./certification.aspx" target="_self">资质证明</a></li>
        <li id="news" align="left"><a href="./tecSupport.aspx" target="_self">技术支持</a></li>
        <li id="news" align="left"><a href="./bbs.aspx" target="_self">客户留言</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div id="cB1">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">联系我们</font></h3>
        <%--<div id="news">
            公&nbsp;司&nbsp;地&nbsp;址&nbsp;(Add)：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;云南省昆明市青年路鸿城广场<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1306—07<br />
            公司联系电话(Tel):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3161127
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3161125—17<br />
            公&nbsp;司&nbsp;传&nbsp;真&nbsp;(Fax)：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3161125—17<br />
            公&nbsp;司&nbsp;邮&nbsp;箱&nbsp;(E-mail):&nbsp;&nbsp;&nbsp;xpflgs@public.km.yn.cn<br />
            公&nbsp;司&nbsp;邮&nbsp;编&nbsp;(ZIP) ：&nbsp;&nbsp;&nbsp;&nbsp;650021
            <br />
        </div>--%>
        <table>
            <tr style="height:20px">
            <td style="width:150px"></td>
            <td></td>
            </tr>
            <tr>
                <td  style="font-size:15px;">
                    公司地址(Add)：
                </td>
                <td  style="font-size:12px;">
                    云南省昆明市青年路鸿城广场1306—07
                </td>
            </tr>
            <tr>
                <td  style="font-size:15px;">
                    公司联系电话(Tel)：
                </td>
                <td  style="font-size:12px;">
                    (0871)3161127
                </td>
            </tr>
            <tr>
                <td  style="font-size:15px;">
                    公司传真(Fax)：
                </td>
                <td  style="font-size:12px;">
                    3161125—17
                </td>
            </tr>
            <tr>
                <td  style="font-size:15px;">
                    公司邮箱(E-mail)：
                </td>
                <td  style="font-size:12px;">
                    xpflgs@public.km.yn.cn
                </td>
            </tr>
            <tr>
                <td  style="font-size:15px;">
                    公司邮编(Zip)：
                </td>
                <td  style="font-size:12px;">
                    650021
                </td>
            </tr>
        </table>
    </div>
    <!-- cB1 -->
    <div id="cB2">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">公司简介</font></h3>
        <div class="about">
            <ul>
                <li>目前云南省完成大型综合防雷工程最多的公司</li><li>目前云南省防雷设计、施工资质最高的公司之一</li><li>云南省最早成立的专业防雷公司</li><li>
                    为客户提供性能可靠、经济适用的防雷设备</li><li>设计、施工质量全优</li><li>售后服务周到</li><li>丰富的防雷设计和防雷施工经验</li><%--<li>多个大型工程</li>--%></ul>
        </div>
        <!--<div id="newsletter"><span id="newsletter-title"><a href="http://www.symisun.com/newsletter/en">Newsletter</a></span> <p id="newsletter-text"><a href="http://www.symisun.com/newsletter/en">Click here to register for SymiSun's monthly newsletter</a></p></div><!-- newsletter -->
    </div>
    <!-- cB2 -->
</asp:Content>
