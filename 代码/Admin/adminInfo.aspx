<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="adminInfo.aspx.cs" Inherits="Admin_adminInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="left" Runat="Server">
    <ul id="menu" style="font-size: 12px; color: Black">
        <li class="active"><a href="adminIndex.aspx"><strong>工程管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>技术文档管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>客户管理</strong></a></li>
        <li><a href="adminIndex.aspx"><strong>营业部管理</strong></a></li>
        <li><a href="HrManage.aspx"><strong>招聘信息管理</strong></a></li>
        <li><a href="bbsManage.aspx"><strong>客户留言管理</strong></a></li>
        <li><a href="newsManage.aspx"><strong>新闻管理</strong></a></li>
        <li><a href="adminInfo.aspx?ID=0"><strong>管理员信息</strong></a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="center" Runat="Server">

    <asp:Panel ID="adminShow" runat="server">
    <table>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 15px">当前管理员信息</font></strong>
                    </td>
                    <td style="width: 125px">
                    </td>
                    <td>
                        <asp:LinkButton ID="LbEdit" runat="server" Font-Names="微软雅黑" Font-Size="11px" ForeColor="black"
                            Text="修改信息" OnClick="LbEdit_Click"></asp:LinkButton>
                    </td>
                    <td style="width: 15px">
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
    <table>
                <tr style="height: 20px">
                </tr>
                <tr>
                    <td>
                        <font style="font-family: 微软雅黑; font-size: 13px"><strong>名称：</strong></font>
                        <asp:Label ID="lbAdminN" runat="server" Text="" Font-Names="微软雅黑" Font-Size="12px"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">邮箱：</font></strong>  
                        <asp:Label ID="lbEmail" runat="server" Text="" Font-Names="微软雅黑" Font-Size="12px"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">电话：</font></strong>
                        <asp:Label ID="lbTel" runat="server" Text="" Font-Names="微软雅黑" Font-Size="12px"></asp:Label>
                    </td>
                </tr>
            </table>
    </asp:Panel>
    
    <asp:Panel ID="adminCheck" runat="server">
    <table>
                <tr style="height: 20px">
                </tr>
                <tr>
                    <td>
                        <font style="font-family: 微软雅黑; font-size: 13px"><strong>输入您的密码：</strong></font> 
                        <asp:TextBox TextMode="Password" ID="adminPw" runat="server"></asp:TextBox>
                        <asp:Label ID="lWPw" runat="server" Font-Names="微软雅黑" Font-Size="13px" ForeColor="red" Text="密码错误，请重新输入！"></asp:Label>
                    </td>
                </tr>
                <tr>
                <td>
                    <asp:Button ID="sumitPw" runat="server" Text="确认" OnClick="sumitPw_Click" />
                    <asp:Button ID="cancel" runat="server" Text="取消" OnClick="cancel_Click" />
                </td>
                </tr>
            </table>
    </asp:Panel>
    
    <asp:Panel ID="adminEdit" runat="server">
    <table>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 15px">修改管理员信息</font></strong>
                    </td>
                    <td style="width: 125px">
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" Font-Names="微软雅黑" Font-Size="11px" ForeColor="black"
                            Text="修改信息" OnClick="LbEdit_Click"></asp:LinkButton>
                    </td>
                    <td style="width: 15px">
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
    <table>
                <tr style="height: 20px">
                </tr>
                <tr>
                    <td>
                        <font style="color:Red">*</font> <font style="font-family: 微软雅黑; font-size: 13px"><strong>名称：</strong></font> 
                        <asp:TextBox Font-Names="微软雅黑" Font-Size="13px" ID="tbName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <font style="color:Red">*</font><strong><font style="font-family: 微软雅黑; font-size: 13px">邮箱：</font></strong> 
                        <asp:TextBox Font-Names="微软雅黑" Font-Size="13px" ID="tbEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">电话：</font></strong>
                        <asp:TextBox Font-Names="微软雅黑" Font-Size="13px" ID="tbTel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">新密码：</font></strong>
                        <asp:TextBox Font-Names="微软雅黑" Font-Size="13px" ID="tbNewPw" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                 <td style="font-family: 微软雅黑; font-size: 13px">
                 (如果不修改密码，请不要填写新密码)
                 </td>
                </tr>
                
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="submitEdit" runat="server" Text="确认" OnClick="submitEdit_Click" />
                        <asp:Button ID="cancelEdit" runat="server" Text="取消" OnClick="cancelEdit_Click" />
                    </td>
                </tr>
            </table>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" Runat="Server">
</asp:Content>

