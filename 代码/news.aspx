﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="news.aspx.cs" Inherits="news" Title="云南希普防雷工程有限公司" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div>
        <div>
            <h3>
                <font style="font-family: '微软雅黑'; font-size: 16px">新闻分类</font></h3>
            <p>
                &nbsp;</p>
        </div>
        <div>
            <ul>
                <div id="news">
                    <li align="left"><a href="./news.aspx?newstype=1" target="_self">内部新闻</a></li>
                </div>
                <div id="news">
                    <li align="left"><a href="./news.aspx?newstype=2" target="_self">业界新闻</a></li>
                </div>
            </ul>
        </div>
    </div>
    <div id="search">
        查找:
        <asp:TextBox ID="SearchTB" runat="server"></asp:TextBox>
        <asp:Button ID="SearchBT" runat="server" Text="搜" Height="25px" Width="25px" OnClick="SearchBT_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div id="cB1">
        <h3>
            <font style="font-family: '微软雅黑'; font-size: 16px">新闻中心</font>
        </h3>
        <asp:GridView ID="xpNewsList" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            Width="100%" OnPageIndexChanging="xpNewsList_PageIndexChanging" OnRowCreated="xpNewsList_RowCreated"
            BorderWidth="0px" PageSize="8" GridLines="None">
            <PagerSettings PageButtonCount="3" />
            <Columns>
                <asp:TemplateField>
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
                                    <td style="width: 150px;">
                                        <font style="color: black; font-size: 11px">添加时间:<%#Eval("addTime").ToString().Substring(0,10) %>
                                    </td>
                                </tr>
                            </table>
                            <p>
                                <%#Eval("content").ToString().Substring(0,2) %>
                                ...
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <EmptyDataTemplate>
                <p style="text-align: center;">
                    新闻列表为空
                </p>
            </EmptyDataTemplate>
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
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
