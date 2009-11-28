<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddProject.aspx.cs" Inherits="Admin_AddProject" Title="&#26080;&#26631;&#39064;&#39029;" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
<ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="ProjectManagement.aspx"><strong>工程管理</strong></a></li>
        <li><a href="ProjectManagement.aspx"><strong>显示工程列表</strong></a></li>
        <li><a href="AddProject.aspx"><strong>添加工程项目</strong></a></li>        
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server">
    <table style="font-family: 微软雅黑; font-size: 15px">
        <tr>
            <td>
                <strong>添加工程</strong>
            </td>
        </tr>
    </table>
    <table style="font-family:微软雅黑">
    <tr style="height:20px"></tr>
        <tr>
            <td style="font-size:12px">
                <asp:Label ID="lbProName" runat="server" Text="工程名称"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="projectName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr style="height:5px"></tr>
        <tr>
            <td style="font-size:12px">
                <asp:Label ID="lbProType" runat="server" Text="工程类别"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="customerType" runat="server">
                <asp:ListItem Value="0">烟草系统</asp:ListItem>
                <asp:ListItem Value="1">银行系统</asp:ListItem>
                <asp:ListItem Value="2">证券系统</asp:ListItem>
                <asp:ListItem Value="3">酒店系统</asp:ListItem>
                <asp:ListItem Value="4">大楼、大厦</asp:ListItem>
                <asp:ListItem Value="5">厂矿</asp:ListItem>
                <asp:ListItem Value="6">民航机场</asp:ListItem>
                <asp:ListItem Value="7">公园</asp:ListItem>
                <asp:ListItem Value="8">公安</asp:ListItem>
                <asp:ListItem Value="9">政府机关</asp:ListItem>
                <asp:ListItem Value="10">学校</asp:ListItem>
            </asp:DropDownList>
            </td>
        </tr>
        <tr style="height:5px"></tr>
        <tr>
            <td style="font-size:12px">
                <asp:Label ID="lbProIntro" runat="server" Text="工程描述"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="description" runat="server" TextMode="MultiLine" Height="60px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr style="height:5px"></tr>
        <tr>
            <td style="font-size:12px">
                <asp:Label ID="lbProImg" runat="server" Text="工程图片"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="upload" runat="server" />
                <asp:Button ID="scan" runat="server" CausesValidation="false" Text="预览"/>
            </td>
        </tr>
        <tr style="height:5px"></tr>
        <tr>
            <td>
                
            </td>
            <td>
                <asp:Button ID="submit" runat="server" CausesValidation="false" Text="确定添加" />
                <asp:Button ID="cancel" runat="server" CausesValidation="false"  Text="取消添加" />
            </td>
        </tr>
        <tr style="height:5px"></tr>
        <tr>
            <td>
               
            </td>
            <td>
                <asp:Image ID="Image" runat="server" Visible="false"/>       
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
</asp:Content>

