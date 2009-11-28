<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="adminIndex.aspx.cs" Inherits="Admin_adminIndex" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="ProjectManagement.aspx"><strong>工程管理</strong></a></li>
        <li><a href="TecManagement.aspx"><strong>技术文档管理</strong></a></li>
        <li><a href="SalesManage.aspx"><strong>客户管理</strong></a></li>
        <li><a href="SalesManage.aspx"><strong>客户/营业部</strong></a></li>
        <li><a href="HrManage.aspx"><strong>招聘信息管理</strong></a></li>
        <li><a href="bbsManage.aspx"><strong>客户留言管理</strong></a></li>
        <li><a href="newsManage.aspx"><strong>新闻管理</strong></a></li>
        <li><a href="adminInfo.aspx?ID=0"><strong>管理员信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">
    <div style="position: relative; top: 100px">
        <table>
            <tr>
                <td>
                    <img src="images/arrow.jpg" />
                </td>
                <td style="width:50px"></td>
                <td align="center" style="font-family: 黑体; font-size: 20px">
                  网站管理
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td></td>
                <td style="font-family: 黑体; font-size: 15px">
                    在这里您可以对网站进行管理和维护
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
</asp:Content>
