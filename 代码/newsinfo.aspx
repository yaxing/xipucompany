﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="newsinfo.aspx.cs" Inherits="newsinfo" Title="云南希普防雷工程有限公司" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">新闻分类</font></h3>
    <ul>
        <a href="./news.aspx?newstype=1" target="_self">
            <li id="news" align="left">内部新闻</li></a> <a href="./news.aspx?newstype=2" target="_self">
                <li id="news" align="left">业界新闻</li></a>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <div id="cB">
        <div id="news">
            <img src="./images/banner.jpg">
            <table>
                <tr style="height: 15px">
                </tr>
                <tr>
                    <td style="width: 20px">
                    </td>
                    <td style="width: 480px" align="center">
                        <h3 style="font-size: 16px">
                            <asp:Label ID="newsTitleLB" runat="server" Text="Label"></asp:Label>
                        </h3>
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 15px">
                </tr>
                <tr>
                    <td style="width: 20px">
                    </td>
                    <td style="width: 100px" align="center">
                        添加人：<asp:Label ID="authorLB" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="width: 280px" align="center">
                        添加时间：<asp:Label ID="changeDateLB" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td style="width: 100px" align="center">
                        浏览[<asp:Label ID="clickNumLB" runat="server" Text="Label"></asp:Label>]
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 35px">
                    <td style="width: 20px">
                    </td>
                    <td>
                        <asp:Literal ID="newsContentLT" runat="server"></asp:Literal>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
