<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="index.aspx.cs" Inherits="index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">服务中心</font></h3>
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
        <a href="./projects.aspx" target="_self">
            <li id="news" align="left">工程展示</li></a><a href="./certification.aspx" target="_self"><li
                id="news" align="left">资质证明</li></a><a href="./tecSupport.aspx" target="_self"><li
                    id="news" align="left">技术支持</li></a><a href="./bbs.aspx" target="_self"><li id="news"
                        align="left">客户留言</li></a></ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div class="Ctopright">
    </div>
    <div id="cB1">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">新闻中心</font></h3>
        <asp:Repeater ID="newsList" runat="server">
            <HeaderTemplate>
            </HeaderTemplate>
            <ItemTemplate>
                <div id="news">
                    <a href="./news_example.html">
                        <p>
                            <%#Eval("title")%>
                        </p>
                    </a>
                    <p>
                        <%#Eval("content").ToString().Substring(0,2) %>
                    </p>
                </div>
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:Repeater>
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
