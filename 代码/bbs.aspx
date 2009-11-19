<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="bbs.aspx.cs" Inherits="bbs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">服务中心</font></h3>
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
        <ul>
            <li id="news" align="left"><a href="./projects.aspx" target="_self">工程展示</a></li>
            <li id="news" align="left"><a href="./certification.aspx" target="_self">资质证明</a></li>
            <li id="news" align="left"><a href="./tecSupport.aspx" target="_self">技术支持</a></li>
            <li id="news" align="left"><a href="./bbs.aspx" target="_self">客户留言</a></li>
        </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <table>
        <tr style="height: 20px">
            <td style="width: 50px">
            </td>
            <td style="width: 318px">
            </td>
            <td style="width: 60px">
            </td>
        </tr>
        <tr style="height: 50px">
            <td>
            </td>
            <td style="width: 318px">
                <font style="color: Blue">发表您的留言</font>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 400px">
                <asp:Label ID="name" runat="server" Text="1. 您的姓名或公司名称：" Font-Bold="true"></asp:Label>
                <font color="red">*</font>
                <asp:Label ID="nameExt" runat="server" Text="(必填)"></asp:Label>
                <asp:Panel ID="nameWarning" runat="server">
                    <asp:Label ID="nameWarningT" runat="server" Text="您还没有填写姓名或公司名称！" Font-Bold="true"
                        ForeColor="red"></asp:Label>
                </asp:Panel>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:TextBox ID="customerName" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="height: 21px">
            </td>
            <td style="width: 450px; height: 21px;">
                <asp:Label ID="email" runat="server" Text="2. 您的联系方式（EMAIL）：" Font-Bold="true"></asp:Label>
                <font color="red">*</font>
                <asp:Label ID="emailExt" runat="server" Text="(必填)"></asp:Label>
                <asp:Panel ID="emailWarning" runat="server">
                    <asp:Label ID="emailWarningT" runat="server" Text="您还没有填写您的EMAIL！" Font-Bold="true"
                        ForeColor="red"></asp:Label>
                </asp:Panel>
            </td>
            <td style="height: 21px">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:TextBox ID="customerEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:Label ID="tel" runat="server" Text="3. 您的联系方式（电话）：" Font-Bold="true"></asp:Label>
                <asp:Label ID="telExt" runat="server" Text="(选填)"></asp:Label>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:TextBox ID="customerPhone" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:Label ID="qq" runat="server" Text="4. 您的联系方式（QQ）：" Font-Bold="true"></asp:Label>
                <asp:Label ID="qqExt" runat="server" Text="(选填)"></asp:Label>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:TextBox ID="customerQQ" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="content" runat="server" Text="5. 您想要咨询的内容：" Font-Bold="true"></asp:Label>
                <asp:Label ID="content2" runat="server" Text="(至少10个字)" Font-Bold="true"></asp:Label>
                <font color="red">*</font>
                <asp:Label ID="contentExt" runat="server" Text="(必填)"></asp:Label>
                <asp:Panel ID="contentWarning1" runat="server">
                    <asp:Label ID="contentWarningT" runat="server" Text="您还没有填写咨询内容！" Font-Bold="true"
                        ForeColor="red"></asp:Label>
                </asp:Panel>
                <asp:Panel ID="contentWarning2" runat="server">
                    <asp:Label ID="contentWarningT2" runat="server" Text="留言内容至少为10个字！" Font-Bold="true"
                        ForeColor="red"></asp:Label>
                </asp:Panel>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td style="width: 318px">
                <asp:TextBox TextMode="MultiLine" ID="customerMessage" runat="server" Width="400px" Height="100px"></asp:TextBox>
            </td>
            <td>
            </td>
        </tr>
        <tr style="height: 20px">
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:Button ID="submitMessage" runat="server" Text="提交留言" OnClick="submitMessage_Click" />
                <asp:Button ID="reset" runat="server" Text="内容重置" OnClick="reset_Click" />
            </td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>
