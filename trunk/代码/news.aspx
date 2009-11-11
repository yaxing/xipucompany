<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="news.aspx.cs" Inherits="news" Title="新闻中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">新闻分类</font></h3>
    <ul>
        <li id="news" align="left"><a href="./news.aspx?newstype=1" target="_self">内部新闻</a></li>
        <li id="news" align="left"><a href="./news.aspx?newstype=2" target="_self">业界新闻</a></li>
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
            Width="100%" OnPageIndexChanging="xpNewsList_PageIndexChanging" BorderWidth="0px">
            <Columns>
                <asp:TemplateField>
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
                                    <td>
                                        <font style="font-family: 微软雅黑; color: Gray; font-size: 10px">添加时间:<%#Eval("addTime").ToString().Substring(0,10) %>
                                        </font>
                                    </td>
                                </tr>
                            </table>
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
    <div id="cB2">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">公司简介</font></h3>
        <div class="about">
            <ul>
                <li>希普防雷公司</li>
                <li>防雷工程公司</li>
                <li>云南省昆明市</li>
                <li>从事防雷工程</li>
                <li>成立xx年</li>
                <li>具有多年工程经验</li>
                <li>资深防雷工程公司</li>
                <li>多个大型工程</li>
            </ul>
        </div>
    </div>
    <!-- cB2 -->
</asp:Content>
