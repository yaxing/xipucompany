<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPageAdmin.master" AutoEventWireup="true"
    CodeFile="showMsg.aspx.cs" Inherits="Admin_showMsg" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="left" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="center" runat="Server">
    <asp:FormView ID="FvShowMsg" runat="server">
        <HeaderTemplate>
            <table>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 15px">客户留言详情</font></strong>
                    </td>
                    <td style="width: 125px">
                    </td>
                    <td>
                        <asp:LinkButton ID="LbReturn" runat="server" Font-Names="微软雅黑" Font-Size="11px" ForeColor="black"
                            Text="返回留言列表" OnClick="LbReturn_Click"></asp:LinkButton>
                    </td>
                    <td style="width: 15px">
                    </td>
                    <td>
                        <asp:LinkButton ID="LbDelete" runat="server" Font-Names="微软雅黑" Font-Size="11px" ForeColor="black"
                            Text="删除此条留言" OnClick="LbDelete_Click" OnClientClick="return confirm('确认删除此条留言？')"></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemTemplate>
            <table>
                <tr style="height: 20px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">客户名称：</strong></font> 
                        <font style="font-family: 微软雅黑; font-size: 12px">
                            <%#Eval("Name") %>
                        </font>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    </td>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">留言时间：</font></strong> <font
                            style="font-family: 微软雅黑; font-size: 12px">
                            <%#Eval("addTime") %>
                        </font>
                    </td>
                </tr>
                <tr style="height: 5px">
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">EMAIL：</font></strong>
                        <font style="font-family: 微软雅黑; font-size: 12px">
                            <%#Eval("Email") %>
                        </font>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">联系电话：</font></strong> <font
                            style="font-family: 微软雅黑; font-size: 12px">
                            <%#Eval("Tel") %>
                        </font>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">QQ：</font></strong> <font
                            style="font-family: 微软雅黑; font-size: 12px">
                            <%#Eval("QQ") %>
                        </font>
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 20px">
                </tr>
                <tr>
                    <td>
                        <strong><font style="font-family: 微软雅黑; font-size: 13px">留言内容：</font></strong>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <font style="font-family: 微软雅黑; font-size: 12px">
                            <%#Eval("Content") %>
                        </font>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="right" runat="Server">
</asp:Content>
