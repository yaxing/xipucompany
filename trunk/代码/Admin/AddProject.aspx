<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AddProject.aspx.cs" Inherits="Admin_AddProject" Title="&#26080;&#26631;&#39064;&#39029;" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server">
    <table width="95%" border="1" cellpadding="10" cellspacing="0" bordercolor="#000000" >
      <tr>
        <td>&nbsp;</td>
        <td>工程名称：</td>
        <td>
            <asp:TextBox ID="projectName" runat="server"></asp:TextBox></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>工程类型</td>
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
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>工程描述：</td>
        <td>
            <asp:TextBox ID="description" runat="server" TextMode="MultiLine"></asp:TextBox></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>选择图片</td>
        <td>
            <asp:FileUpload ID="upload" runat="server" />
            <asp:Button ID="scan" runat="server" Text="预览" onclick="scan_Click" />
         </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="submit" runat="server" Text="确定添加" onclick="submit_Click" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>
            <asp:Image ID="Image" runat="server" Visible="false" /></td>
        <td>&nbsp;</td>
      </tr>
       
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
</asp:Content>

