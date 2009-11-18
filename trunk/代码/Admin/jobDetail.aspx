<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="jobDetail.aspx.cs" Inherits="Admin_jobDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="HrManage.aspx"><strong>管理现有信息</strong></a></li>
        <li><a href="#"><strong>发布新信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">

    <asp:FormView ID="FvJobInfo" runat="server">
        <EmptyDataTemplate>
            本条信息不存在！
        </EmptyDataTemplate>
        <ItemTemplate>
            <table>
                <tr>
                    <td style="font-family: 微软雅黑; font-size: 15px">
                        <strong>招聘信息详情</strong>
                    </td>
                    <td style="width:230px">
                    </td>
                    <td style="font-family: 微软雅黑; font-size: 12px; color:Black; width:30px">
                        <asp:LinkButton ID="edit" runat="server" OnClick="edit_Click"><font style="color:Black">修改</font></asp:LinkButton>
                    </td>
                    <td style="font-family: 微软雅黑; font-size: 12px; color:Black;">
                        <asp:LinkButton ID="delete" runat="server" OnClientClick="return confirm('确认删除此条信息？')" OnClick="delete_Click"><font style="color:Black">删除</font></asp:LinkButton>
                    </td>
                </tr>
            </table>
            <table style="font-family: 微软雅黑; font-size: 12px">
                <tr style="height: 20px">
                </tr>
                <tr>
                    <td>
                        标题：
                    </td>
                    <td>
                        <asp:Label ID="lbTitle" runat="server" Text='<%#Eval("title") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        发布者：
                    </td>
                    <td>
                        <asp:Label ID="tbAuthor" runat="server" Text='<%#Eval("author") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        招聘部门：
                    </td>
                    <td>
                        <asp:Label ID="tbDepartment" runat="server" Text='<%#Eval("department") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        招聘职位：
                    </td>
                    <td>
                        <asp:Label ID="tbPosition" runat="server" Text='<%#Eval("position") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        薪资：
                    </td>
                    <td>
                        <asp:Label ID="tbSalary" runat="server" Text='<%#Eval("salary") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <table style="font-family: 微软雅黑; font-size: 12px">
                <tr>
                    <td>
                        联系方式：
                    </td>
                    <td>
                        <asp:Label ID="tbContact" runat="server" Text='<%#Eval("contact") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        招聘详情：
                    </td>
                    <td>
                        <asp:TextBox ReadOnly="true" TextMode="MultiLine" ID="tbContent" runat="server" Height="150px"
                            Width="300px" Text='<%#Eval("content") %>'></asp:TextBox>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
</asp:Content>
