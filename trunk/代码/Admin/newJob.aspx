<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="newJob.aspx.cs" Inherits="Admin_newJob" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="HrManage.aspx"><strong>管理现有信息</strong></a></li>
        <li><a href="newJob.aspx"><strong>发布新信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">
    <table style="font-family: 微软雅黑; font-size: 15px">
        <tr>
            <td>
                <strong>发布招聘信息</strong>
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
                <asp:TextBox ID="tbTitle" runat="server" Text=""></asp:TextBox>
                <asp:Label ID="titleL" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="标题不能超过8个字！"></asp:Label>
                <asp:Label ID="titleEpt" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="标题不能为空！"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                发布者：
            </td>
            <td>
                <asp:TextBox ID="tbAuthor" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                招聘部门：
            </td>
            <td>
                <asp:TextBox ID="tbDepartment" runat="server" Text=""></asp:TextBox>
                <asp:Label ID="dptEpt" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="招聘部门不能为空！"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                招聘职位：
            </td>
            <td>
                <asp:TextBox ID="tbPosition" runat="server" Text=""></asp:TextBox>
                <asp:Label ID="posL" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="招聘职位不能超过8个字！"></asp:Label>
                <asp:Label ID="posEpt" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="招聘职位不能为空！"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                薪资：
            </td>
            <td>
                <asp:TextBox ID="tbSalary" runat="server" Text=""></asp:TextBox>
                <asp:Label ID="slrEpt" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="薪资不能为空！"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="font-family: 微软雅黑; font-size: 12px">
        <tr>
            <td>
                联系方式：
            </td>
            <td>
                <asp:TextBox ID="tbContact" runat="server" Text=""></asp:TextBox>
                <asp:Label ID="contactEpt" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
                    Text="联系方式不能为空！"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                招聘详情：
            </td>
            <td>
                <asp:TextBox TextMode="MultiLine" ID="tbContent" runat="server" Height="150px" Width="300px" Text=""></asp:TextBox>
            </td>
        </tr>
    </table>
    <div style="position: relative; top: -70px">
        <asp:Label ID="contentL" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
            Text="招聘详情不能超过500个字！" Width="60px"></asp:Label>
        <asp:Label ID="contentEpt" runat="server" ForeColor="red" Font-Names="微软雅黑" Font-Size="12px"
            Text="招聘详情不能为空！" Width="60px"></asp:Label>
    </div>
    <table>
        <tr style="height: 10px">
        </tr>
        <tr>
            <td style="width: 50px">
            </td>
            <td>
                <asp:Button ID="submit" runat="server" Text="确认发布" OnClick="submit_Click" />
            </td>
            <td>
                <asp:Button ID="cancel" runat="server" Text="取消发布" OnClick="cancel_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
</asp:Content>
