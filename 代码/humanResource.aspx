<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="humanResource.aspx.cs" Inherits="humanResource" Title="Untitled Page" %>

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
    <div id="cB1" style="width: 600px">
        <h3>
            <%--<font style="font-family: '微软雅黑'; font-size: 16px">最新工程</font></h3>--%>
            <asp:Label ID="jobTitle" runat="server" Font-Size="16px" Text="招聘信息列表"></asp:Label>
        </h3>
        <table>
            <tr>
                <td style="width: 20px">
                </td>
                <td>
                    <asp:GridView ID="jobList" runat="server" GridLines="None" AllowPaging="True" AutoGenerateColumns="False"
                        OnPageIndexChanging="jobList_PageIndexChanging" OnRowCreated="jobList_RowCreated">
                        <Columns>
                            <asp:HyperLinkField Text="&gt;&gt;" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div id="news">
                                        <table>
                                            <tr>
                                                <td style="width: 150px">
                                                    <a href="jobDetail.aspx?jobId=<%#Eval("ID")%>">
                                                        <%#Eval("title") %>
                                                    </a>
                                                </td>
                                                <td style="width: 110px">
                                                    部门：<%#Eval("department") %>
                                                </td>
                                                <td style="width:250px">
                                                    添加时间：<%#Eval("changeTime") %>
                                                </td>
                                            </tr>
                                        </table>
                                        <%--<a href="humanResource.aspx?jobId=<%#Eval("ID") %>">
                                            <p>
                                                <%#Eval("title") %>
                                            </p>
                                        </a>--%>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
