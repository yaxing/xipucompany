<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="news.aspx.cs" Inherits="news" Title="无标题页" %>

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
    <div id="cB1">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">新闻中心</font>
        </h3>
        <asp:GridView ID="xpNewsList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            Width="100%" OnPageIndexChanging="xpNewsList_PageIndexChanging" 
            BorderWidth="0px">
            <Columns>
                <asp:TemplateField>
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
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
</asp:Content>
