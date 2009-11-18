<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="HrManage.aspx.cs" Inherits="Admin_HrManage" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
<ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="HrManage.aspx"><strong>管理现有信息</strong></a></li>
        <li><a href="newJob.aspx"><strong>发布新信息</strong></a></li>
</ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server">
 <asp:GridView RowStyle-HorizontalAlign="Center" ID="jobList" runat="server" AutoGenerateColumns="False"
        AllowPaging="True" OnPageIndexChanging="jobList_PageIndexChanging" OnRowCreated="jobList_RowCreated"
        OnRowCommand="jobList_RowCommand">
        <Columns>
            <asp:TemplateField HeaderStyle-Height="30px" HeaderText="标题" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px" HeaderStyle-BackColor="#E0E0E0">
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnTitle" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="showJob" Visible='true' Height="30px"><font style="font-family:微软雅黑; color:Black; font-size:12px"><%#Eval("title") %></font>
                    </asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="职位" HeaderStyle-Font-Names="微软雅黑" HeaderStyle-Font-Size="15px"
                HeaderStyle-BackColor="#E0E0E0">
                <ItemTemplate>
                    <asp:Label ID="labPosition" runat="server" Font-Names="微软雅黑" Font-Size="12px" Text='<%#Eval("position") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="发布时间" HeaderStyle-Font-Names="微软雅黑" HeaderStyle-Font-Size="15px"
                HeaderStyle-BackColor="#E0E0E0">
                <ItemTemplate>
                    <asp:Label ID="labTime" runat="server" Font-Names="微软雅黑" Font-Size="12px" Text='<%#Eval("changeTime").ToString().Substring(0,10) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderStyle-BackColor="#E0E0E0" HeaderText="操作" HeaderStyle-Font-Names="微软雅黑"
                HeaderStyle-Font-Size="15px">
                <ItemTemplate>
                <img src="images/edit.jpg" />
                    <asp:LinkButton ID="lbtnEdit" runat="server" CommandArgument='<%#Eval("ID") %>'
                        CommandName="editJob" Visible='true'><font style="font-family:微软雅黑; color:Black; font-size:12px">修改</font></asp:LinkButton>
                    <img src="images/delete.jpg" />
                    <asp:LinkButton ID="lbtnDelete" runat="server" CommandArgument='<%#Eval("ID") %>'
                        CommandName="deleteJob" Visible='true' OnClientClick="return confirm('确认删除此条信息？')"><font style="font-family:微软雅黑; color:Black; font-size:12px">删除</font></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <RowStyle HorizontalAlign="Center" />
        <EmptyDataTemplate>
            <asp:Label ID="noData" runat="server" Text="暂时没有招聘信息"></asp:Label>
        </EmptyDataTemplate>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
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
                条信息
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
                条信息
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

