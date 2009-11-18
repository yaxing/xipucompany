<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="bbsManage.aspx.cs" Inherits="Admin_bbsManage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="adminIndex.aspx"><strong>工程管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>技术文档管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>客户管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>营业部管理</strong></a></li>
        <li><a href="HrManage.aspx"><strong>招聘信息管理</strong></a></li>
        <li><a href="bbsManage.aspx"><strong>客户留言管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>新闻管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>管理员信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">
    <asp:GridView RowStyle-HorizontalAlign="Center" ID="messageList" runat="server" AutoGenerateColumns="False"
        AllowPaging="True" OnPageIndexChanging="messageList_PageIndexChanging" OnRowCreated="messageList_RowCreated"
        OnRowCommand="messageList_RowCommand">
        <Columns>
            <asp:TemplateField HeaderStyle-Height="30px" HeaderText="用户名称" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0">
                <ItemTemplate>
                    <asp:LinkButton ID="LbtShowMsg" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="showMessage" Visible='true' Height="30px"><font style="font-family:微软雅黑; color:Black; font-size:12px"><%#Eval("Name") %></font>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="内容" HeaderStyle-Font-Names="微软雅黑" HeaderStyle-Font-Size="15px"
                HeaderStyle-BackColor="#E0E0E0">
                <ItemTemplate>
                    <asp:Label ID="LabContent" runat="server" Font-Names="微软雅黑" Font-Size="12px" Text='<%#Eval("Content").ToString().Substring(0,8) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="留言时间" HeaderStyle-Font-Names="微软雅黑" HeaderStyle-Font-Size="15px"
                HeaderStyle-BackColor="#E0E0E0">
                <ItemTemplate>
                    <asp:Label ID="LabTime" runat="server" Font-Names="微软雅黑" Font-Size="12px" Text='<%#Eval("addTime").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-BackColor="#E0E0E0" HeaderText="操作" HeaderStyle-Font-Names="微软雅黑" HeaderStyle-Font-Size="15px">
                <ItemTemplate>
                    <img src="images/delete.jpg" />
                    <asp:LinkButton ID="lbtnDelete" runat="server" CommandArgument='<%#Eval("ID") %>'
                        CommandName="deleteMessage" Visible='true' OnClientClick="return confirm('确认删除此条留言？')"><font style="font-family:微软雅黑; font-size:12px">删除</font></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle HorizontalAlign="Center" />
        <EmptyDataTemplate>
            <asp:Label ID="noData" runat="server" Text="暂时没有客户留言"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
    <table>
        <tr style="height: 40px">
        </tr>
        <tr>
            <td style="width: 5px">
            </td>
            <td align="left" style="font-family: 微软雅黑; font-size: 12px; width: 40px">
                总共有
            </td>
            <td align="center" style="font-family: 微软雅黑; font-size: 12px; color: Red">
                <asp:Label ID="LabTatalNo" runat="server"></asp:Label>
            </td>
            <td align="right" style="font-family: 微软雅黑; font-size: 12px;">
                条留言
            </td>
            <td>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="width: 5px">
            </td>
            <td align="left" style="font-family: 微软雅黑; font-size: 12px; width: 50px">
                当前为第
            </td>
            <td align="center" style="font-family: 微软雅黑; font-size: 12px; color: Red">
                <asp:Label ID="LabCurrentStart" runat="server"></asp:Label>
            </td>
            <td align="center" style="font-family: 微软雅黑; font-size: 12px; color: Red">
                -
            </td>
            <td align="center" style="font-family: 微软雅黑; font-size: 12px; color: Red">
                <asp:Label ID="LabCurrentEnd" runat="server"></asp:Label>
            </td>
            <td align="right" style="font-family: 微软雅黑; font-size: 12px;">
                条留言
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
