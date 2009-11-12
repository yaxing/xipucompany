<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="jobDetail.aspx.cs" Inherits="jobDetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <h3>
        <font style="font-family: '微软雅黑'; font-size: 16px">服务中心</font></h3>
    <p>
        &nbsp;</p>
    <!--<h3>TESTIMONIALS</h3>  -->
    <ul>
        <li id="news" align="left"><a href="./projects.aspx" target="_self">工程展示</a></li><li
            id="news" align="left"><a href="./certification.aspx" target="_self">资质证明</a></li><li
                id="news" align="left"><a href="./tecSupport.aspx" target="_self">技术支持</a></li><li
                    id="news" align="left"><a href="./bbs.aspx" target="_self">客户留言</a></li></ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="Server">
    <asp:Repeater ID="jobShow" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
            <table>
                <tr style="height: 30px">
                </tr>
                <tr>
                    <td style="width: 50px">
                    </td>
                    <td style="width: 450px" align="center">
                        <h3 style="font-size: 16px">
                            <%#Eval("title") %>
                        </h3>
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 15px">
                </tr>
                <tr>
                    <td style="width: 50px">
                    </td>
                    <td>
                        部门：<%#Eval("department") %>
                    </td>
                    <td style="width: 300px" align="center">
                        添加人：<%#Eval("author") %>
                    </td>
                    <td>
                        添加时间：<%#Eval("changeTime") %>
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 35px">
                    <td style="width: 50px">
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <font style="font-size: 13px"><strong>招聘岗位：</strong><%#Eval("position") %></font>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <font style="font-size: 13px"><strong>薪资待遇：</strong><%#Eval("salary") %></font>
                    </td>
                </tr>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <font style="font-size: 13px"><strong>联系方式：</strong><%#Eval("contact") %></font>
                    </td>
                </tr>
                <tr style="height: 15px">
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <font style="font-size: 13px"><strong>岗位描述：</strong></font>
                    </td>
                </tr>
            </table>
            <table>
                <tr style="height: 5px">
                </tr>
                <tr>
                    <td style="width: 150px">
                    </td>
                    <td style="width:350px">
                        <font style="font-size: 13px">
                            <%#Eval("content") %>
                        </font>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
