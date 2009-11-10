<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="certification.aspx.cs" Inherits="certification" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">服务中心</font></h3>
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
        
            <li id="news" align="left"><a href="./projects.aspx" target="_self">工程展示</a></li>
            <li id="news" align="left"><a href="./certification.aspx" target="_self">资质证明</a></li>
            <li id="news" align="left"><a href="./tecSupport.aspx" target="_self">技术支持</a></li>
            <li id="news" align="left"><a href="./bbs.aspx" target="_self">客户留言</a></li>
   </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
<table>
        <tr>
            <td>
                <asp:Image ID="certification1" runat="server" Width="300px" ImageUrl="./certifications/certification1.jpg"/>
            </td>
            <td>
                <asp:Image ID="certification2" runat="server" Width="300px" ImageUrl="./certifications/certification2.jpg"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="certification3" runat="server" Width="300px" ImageUrl="./certifications/certification3.jpg/"/>
            </td>
            <td>
                <asp:Image ID="certification4" runat="server" Width="300px" ImageUrl="./certifications/certification4.jpg"/>
            </td>
        </tr>
        <tr >
            <td>
                <asp:Image ID="certification5" runat="server" Width="300px" ImageUrl="./certifications/certification5.jpg"/>
            </td>
            <td>
                <asp:Image ID="certification6" runat="server" Width="300px" ImageUrl="./certifications/certification6.jpg"/>
            </td>
        </tr>
    </table>
</asp:Content>
