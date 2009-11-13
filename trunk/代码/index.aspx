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
                                <td style="width: 220px">
                                    <a href="newsinfo.aspx?newsID=<%#Eval("ID") %>">
                                        <%#Eval("title")%>
                                    </a>
                                </td>
                                <td style="width: 150px">
                                    <font style="font-family: 微软雅黑; color: Gray; font-size: 10px">添加时间:<%#Eval("addTime").ToString().Substring(0,10) %>
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
                        <a href="news.aspx"><font style="font-family: 黑体; font-size: 10px">更多...</font></a>
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
                <li>希普防雷公司</li><li>防雷工程公司</li><li>云南省昆明市</li><li>从事防雷工程</li><li>成立xx年</li><li>具有多年工程经验</li><li>
                    资深防雷工程公司</li><li>多个大型工程</li></ul>
        </div>
    </div>
    <!-- cB2 -->
</asp:Content>
