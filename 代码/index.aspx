<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">服务中心</font></h3>
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
    <div class="Ctopright">
    </div>
    <div id="cB1">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">新闻中心</font></h3>
        <asp:Panel ID="newsListFalse" runat="server">
            <div id="Div1">
                <p style="text-align" align="center">
                    新闻列表为空
                </p>
            </div>
        </asp:Panel>
        <asp:Panel ID="newsListTrue" runat="server">
            <asp:Repeater ID="newsList" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                    <div id="news">
                        <table>
                            <tr>
                                <td style="width: 220px; font-size:13px">
                                    <a href="newsinfo.aspx?newsID=<%#Eval("ID") %>">
                                        <%#Eval("title")%>
                                    </a>
                                </td>
                                <td style="width: 150px">
                                    <font style="color: Black; font-size: 11px">添加时间:<%#Eval("addTime").ToString().Substring(0,10) %>
                                </td>
                            </tr>
                        </table>
                        <p>
                            <%#Eval("content").ToString().Substring(0,2) %>
                            ...
                        </p>
                    </div>
                </ItemTemplate>
                <FooterTemplate>
                    <p align="right">
                        <a href="news.aspx"><font style="font-family: 黑体; font-size: 12px;">更多...</font></a>
                    </p>
                </FooterTemplate>
            </asp:Repeater>
        </asp:Panel>
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
    </div>
    <!-- cB2 -->
</asp:Content>
