<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="newsinfo.aspx.cs" Inherits="newsinfo" Title="新闻中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">新闻分类</font></h3>
    <ul>
        <a href="./news.aspx?newstype=1" target="_self">
            <li id="news" align="left">内部新闻</li></a> <a href="./news.aspx?newstype=2" target="_self">
                <li id="news" align="left">业界新闻</li></a>
    </ul>
    <br>
    <div id="search">
        <form>
        查找:
        <input type="text" class="text">
        <input type="button" value="搜" class="btn">
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div id="main">
        <div id="banner">
            <img src="./images/banner.jpg" border="0"></div>
        <div id="news-title">
            <h3>
               <asp:Label ID="newsTitleLB" runat="server" Text="Label"></asp:Label>
            </h3>
        </div>
        <div id="news">
            <div id="article">
                <div>
                    <asp:Literal ID="newsContentLT" runat="server"></asp:Literal>
                    <div id="author">
                        <asp:Label ID="authorLB" runat="server" Text="Label"></asp:Label>@<asp:Label ID="changeDateLB" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div id="show">
                        浏览[<asp:Label ID="clickNumLB" runat="server" Text="Label"></asp:Label>]
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
